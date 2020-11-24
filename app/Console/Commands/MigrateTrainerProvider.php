<?php

namespace App\Console\Commands;

use App\Models\TrainerProvider;
use App\User;
use Illuminate\Console\Command;
use Illuminate\Foundation\Bus\DispatchesJobs;

class MigrateTrainerProvider extends Command
{

    use DispatchesJobs;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'migrate:trainer-provider';

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
    public function handle()
    {
        $trainerProvider = TrainerProvider::create([
            'name' => "Academia Testarii"
        ]);

        $user = User::where('name', 'academiatestarii')->first();

        $trainerProvider->user_id = $user->getId();
        $trainerProvider->save();
    }
}
