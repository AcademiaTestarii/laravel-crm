<?php

namespace App\Jobs;

use App\Models\Role;
use App\User;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;

class AddUser extends Job implements ShouldQueue
{
    use InteractsWithQueue;

    protected $userPassword;
    private $userName;
    private $userEmail;
    private $userRole;


    public function __construct($userName, $userEmail, $userRole, $userPassword)
    {
        $this->userName = $userName;
        $this->userEmail = $userEmail;
        $this->userRole = $userRole;
        $this->userPassword = $this->determinePassword($userPassword);
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

        $newUser = User::create([
            'name' => $this->userName,
            'email' => $this->userEmail,
            'password' => bcrypt($this->userPassword),
            'remember_token' => null
        ]);

        $fileName = $this->generateFile($newUser->email);

        $newUser->roleUser()->create(['role_id' => $role->id]);

        Storage::append(
            $fileName,
            implode(',', [$newUser->name, $newUser->email, $this->userPassword, $this->userRole])
        );

        $greetings = "Salut " . $newUser->name . "<br><br>";

        $message = "<p>Ti-am generat o parola pentru Academia Testarii.<br>
        <p>
        <p>Iti multumim,<br>Echipa Academia Testarii</p>";

        Mail::send(
            'auth/emails/register_existing_user',
            ['messageBody' => ['greetings' => $greetings, 'message' => $message]],
            function ($message) use ($newUser) {
                $message->from('contact@academiatestarii.ro')
                    ->to($newUser->getEmail())
                    ->subject('Confirmare înregistrare pe platforma Academia Testarii');
            }
        );
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

    protected function determinePassword($userPassword)
    {
        if (!empty($userPassword)) {
            return $userPassword;
        }

        return str_random();
    }
}