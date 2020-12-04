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

public function orderByStartdate(int $mainClassId)
    {
        $classesByStartDate = $this->model::where('main_class_id', $mainClassId)->where('registration_start_date', '>', Carbon::now())->orderBy('registration_start_date', 'asc')->limit(2)->get();

        return $classesByStartDate;
    }
