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

    /**
     * @param string $column
     * @param string $order
     * @return mixed
     */
    public function allOrderedBy(string $column = 'id', string $order = 'ASC')
    {
        $model = $this->model;

        if (auth()->user()->isTrainerProvider()) {
            $model = $model->where('trainer_provider_id', auth()->user()->trainerProvider->getId());
        }

        return $model->orderBy($column, $order)->get();
    }

    /**
     * @param array $criteria
     * @param array $orderBy
     * @return mixed
     */
    public function findOneBy(array $criteria, array $orderBy = [])
    {
        $model = $this->model;

        foreach ($criteria as $column => $value) {
            $model = $model->where($column, '=', $value);
        }

        if (auth()->user()->isTrainerProvider()) {
            $model = $model->where('trainer_provider_id', auth()->user()->trainerProvider->getId());
        }

        if (!empty($orderBy)) {
            $model = $model->orderBy($orderBy['column'], $orderBy['direction']);
        }

        return $model->first();
    }
}
