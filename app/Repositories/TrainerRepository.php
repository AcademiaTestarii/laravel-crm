<?php

namespace App\Repositories;

use App\Models\Trainer;

class TrainerRepository extends Repository
{
    protected $model;

    public function __construct(Trainer $trainer)
    {
        $this->model = $trainer;
    }
}
