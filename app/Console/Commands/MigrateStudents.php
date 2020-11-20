<?php

namespace App\Console\Commands;

use App\Models\Student;
use App\Repositories\StudentRepository;
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
            $this->dispatch(new \App\Jobs\AddUser(
                $student->getLastName(). ' '.$student->getFirstName(),
                $student->getEmail(),
                'student',
                $student->getPassword()
            ));
        }
    }
}
