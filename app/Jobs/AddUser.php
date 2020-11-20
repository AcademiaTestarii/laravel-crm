<?php

namespace Passport\Jobs;


use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Http\Request;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use Passport\Models\Role;
use Passport\User;
use Ramsey\Uuid\Uuid;

class AddUser extends Job implements ShouldQueue
{
    use InteractsWithQueue;

    private $userName;
    private $userEmail;
    private $userRole;


    public function __construct($userName, $userEmail, $userRole)
    {
        $this->userName = $userName;
        $this->userEmail = $userEmail;
        $this->userRole = $userRole;
    }

    /**
     * Execute the job.
     *
     */
    public function handle()
    {
        $user = User::where('email', $this->userEmail)->orWhere('name', $this->userName)->first();

        if (!is_null($user)) {
            echo 'The email address or the user name already exists! Please choose another one!';
            return;
        }

        $role = Role::where('code', $this->userRole)->first();

        if (is_null($role)) {
            echo 'The ' . $this->userRole . ' does not exist! Please choose another one!';
            return;
        }
        $password = str_random();
        $hasedPassword = Hash::make($password);

        $uuid = Uuid::uuid4();

        $newUser = User::create([
            'name' => $this->userName,
            'uid' => $uuid->toString(),
            'email' => $this->userEmail,
            'password' => $hasedPassword,
            'remember_token' => ''
        ]);

        $fileName = $this->generateFile($newUser->email);

        $newUser->roleUser()->create(['role_id' => $role->id]);
        Storage::append($fileName, implode(',', [$newUser->name, $newUser->email, $password, $this->userRole]));

        Mail::send('emails/user_credentials', ['comment' => ['user' => $newUser->toArray(), 'password' => $password]], function ($message) use ($newUser) {

            $message->from('pct@adoreme.com')
                ->to($newUser->email)
                ->bcc('liancu@adoreme.com')
                ->subject('Your PCT credentials');
        });
    }

    /**
     * @param $userName
     * @return string
     */
    public function generateFile($userName)
    {
        $filename = 'users/user_' . $userName . '.csv';
        Storage::put($filename, ['user,', 'email,', 'password,', 'role,']);

        return $filename;
    }

}