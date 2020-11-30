<?php

namespace App\Services;

use App\Repositories\TrainerRepository;

class TrainerService
{
    protected $trainerRepository;

    public function __construct(TrainerRepository $trainerRepository)
    {
        $this->trainerRepository = $trainerRepository;
    }

    public function update( $request)
    {

    }

    public function create($request)
    {

    }
}
