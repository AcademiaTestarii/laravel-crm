<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Foundation\Bus\DispatchesJobs;

class AddUser extends Command
{

    use DispatchesJobs;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'api:generate_user {userName} {--userEmail=} {--userRole=} {--userPassword=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Generates a user with a role by name, email and permission name. Stores the user, email, role in a file in storage starting
    with user_$userName';


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
    public function handle()
    {
        $userName = $this->argument('userName');
        $userEmail = $this->option('userEmail');
        $userRole = $this->option('userRole');
        $userPassport = $this->option('userPassword');

        if (!isset($userName) || is_null($userName)) {
            echo 'Please add a userName!';
        }

        if (!isset($userEmail) || is_null($userEmail)) {
            echo 'Please add a email for the user!';
        }

        if (!isset($userRole) || is_null($userRole)) {
            echo 'Please add a role for the user!';
        }

        $this->dispatch(new \App\Jobs\AddUser($userName, $userEmail, $userRole, $userPassport));
    }
}
