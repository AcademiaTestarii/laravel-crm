<?php

namespace App\Repositories;

use App\Models\Classes;

class ClassesRepository extends Repository
{
    protected $model;

    /**
     * ClassGroupRepository constructor.
     * @param Classes $classGroup
     */
    public function __construct(Classes $classGroup)
    {
        $this->model = $classGroup;
    }

    public function allOrderedBy(string $column = 'id', string $order = 'ASC')
    {
        $model = $this->model;

        if (auth()->user()->isTrainerProvider()) {
            $model = $model->whereHas('mainClass', function($query) {
                return $query->where('trainer_provider_id', auth()->user()->trainerProvider->getId());
            });
        }

        return $model->orderBy($column, $order)->get();
    }
}
