<?php

namespace App\Console\Commands;

use App\Repositories\TrainerRepository;
use Illuminate\Console\Command;
use Illuminate\Foundation\Bus\DispatchesJobs;

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
            $this->dispatch(new \App\Jobs\AddUser(
                $trainer->getName(),
                $trainer->getEmail(),
                'trainer',
                ''
            ));
        }
    }
}
