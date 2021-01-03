<?php

namespace App\Console\Commands;

use App\Models\Role;
use App\Repositories\TrainerRepository;
use App\User;
use Illuminate\Console\Command;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class MigrateTrainers extends Command
{

    use DispatchesJobs;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'migrate:trainers';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Migrates the trainers to users';


    /**
     * Create a new command instance.
     *
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle(TrainerRepository $trainerRepository)
    {
        $trainers = $trainerRepository->allOrderedBy();

        foreach ($trainers as $trainer) {

            $this->userName = $trainer->getName();
            $this->userEmail = $trainer->getEmail();
            $this->userRole = 'trainer';
            $this->userPassword = Str::random(12);

            $user = User::where('email', $this->userEmail)->first();

            if (!is_null($user)) {
                echo 'The email address ' . $this->userEmail . ' already exists! Please choose another one!';
                continue;
            }

            $role = Role::where('code', $this->userRole)->first();

            if (is_null($role)) {
                echo 'The ' . $this->userRole . ' does not exist! Please choose another one!';
                continue;
            }

            $newUser = User::create([
                'name' => $this->userName,
                'email' => $this->userEmail,
                'password' => bcrypt(md5($this->userPassword)),
                'remember_token' => null,
                'is_active' => 1
            ]);

            $fileName = $this->generateFile($newUser->email);

            $newUser->roleUser()->create(['role_id' => $role->id]);
            $trainer->user_id = $newUser->getId();
            $trainer->save();

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
