<?php

namespace App\Console\Commands;

use App\Models\Role;
use App\Repositories\StudentRepository;
use App\User;
use Illuminate\Console\Command;
use Illuminate\Foundation\Bus\DispatchesJobs;

class MigrateStudents extends Command
{

    use DispatchesJobs;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'migrate:students';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Migrates the students to users';


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
    public function handle(StudentRepository $studentRepository)
    {
        $students = $studentRepository->allOrderedBy();

        foreach ($students as $student) {

            $this->userName = $student->getLastName() . ' ' . $student->getFirstName();
            $this->userEmail = $student->getEmail();
            $this->userRole = 'student';
            $this->userPassword = $student->getPassword();

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
                'password' => bcrypt($this->userPassword),
                'remember_token' => null
            ]);

            $newUser->roleUser()->create(['role_id' => $role->id]);

            $student->user_id = $newUser->getId();
            $student->save();
        }
    }
}
