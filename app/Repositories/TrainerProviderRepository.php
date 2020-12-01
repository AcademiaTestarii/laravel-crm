<?php

namespace App\Repositories;

use App\Models\TrainerProvider;

class TrainerProviderRepository extends Repository
{
    protected $model;

    public function __construct(TrainerProvider $trainerProvider)
    {
        $this->model = $trainerProvider;
    }
}
