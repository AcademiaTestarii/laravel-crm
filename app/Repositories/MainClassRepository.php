<?php

namespace App\Repositories;

use App\Models\MainClass;

class MainClassRepository extends Repository
{
    protected $model;

    /**
     * MainClassRepository constructor.
     * @param MainClass $mainClass
     */
    public function __construct(MainClass $mainClass)
    {
        $this->model = $mainClass;
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

    /**
     * @param string $relationName
     * @param array $relationFields
     * @param array $orderBy
     * @return mixed
     */
    public function findAllWithRelationsBy(string $relationName, array $relationFields, array $orderBy = [])
    {
        $model = $this->model;

        if (auth()->user()->isTrainerProvider()) {
            $model = $model->where('trainer_provider_id', auth()->user()->trainerProvider->getId());
        }

        $model = $model->whereHas($relationName, function ($query) use ($relationFields, $orderBy) {
            foreach ($relationFields as $relationField => $criteria) {
                return $query->where($relationField, $criteria['operator'], $criteria['value']);
            }
        })->with($relationName);

        return $model->get();
    }

    /**
     * @param array $criteria
     * @param string $operator
     * @param string $orderBy
     * @param string $order
     * @return mixed
     */
    public function findAllBy(array $criteria, string $operator = '=', string $orderBy = 'id', string $order = 'ASC')
    {
        $model = $this->model;

        if (auth()->user()->isTrainerProvider()) {
            $model = $model->where('trainer_provider_id', auth()->user()->trainerProvider->getId());
        }

        foreach ($criteria as $column => $value) {
            $model = $model->where($column, $operator, $value)->orderBy($orderBy, $order);
        }

        return $model->get();
    }
}
