<?php

namespace App\Repositories;

use App\Repositories\Contracts\RepositoryInterface;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;

class Repository implements RepositoryInterface
{
    /**
     * @var Model
     */
    protected $model;

    /**
     * Repository constructor.
     * @param Model $model
     */
    public function __construct(Model $model)
    {
        $this->model = $model;
    }

    /**
     * @param array $data
     * @return mixed
     */
    public function create(array $data)
    {
        return $this->model->create($data);
    }

    public function allOrderedBy(string $column = 'id', string $order = 'ASC')
    {
        return $this->model->orderBy($column, $order)->get();
    }

    /**
     * @param $id
     * @return Model
     */
    public function show($id)
    {
        return $this->model->findOrFail($id);
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

        if (!empty($orderBy)) {
            $model = $model->orderBy($orderBy['column'], $orderBy['direction']);
        }

        return $model->first();
    }

    /**
     * @param array $criteria
     * @param string $operator
     * @return mixed
     */
    public function findAllBy(array $criteria, string $operator = '=')
    {
        $model = $this->model;

        foreach ($criteria as $column => $value) {
            $model = $model->where($column, $operator, $value);
        }

        return $model->get();
    }

    public function deleteAllBy(array $criteria, string $operator = '=')
    {
        $model = $this->model;

        foreach ($criteria as $column => $value) {
            $model = $model->where($column, $operator, $value);
        }

        return $model->delete();
    }

    /**
     * @param array $data
     * @return mixed
     */
    public function findOrCreate(array $data)
    {
        $record = $this->findOneBy($data);

        if ($record) {
            return $record;
        }

        return $this->model->create($data);
    }

    /**
     * @param array $matchingData
     * @param array $data
     * @return mixed
     */
    public function updateOrCreate(array $matchingData, array $data)
    {
        return $this->model->updateOrCreate($matchingData, $data);
    }


    /**
     * @param string $where
     * @param array $in
     * @param string $with
     * @return Collection
     */
    public function findWhereNotIn(string $where, array $in, $with = ''): Collection
    {
        $model = clone $this->model;

        if (!empty($with)) {
            $model = $model->with($with);
        }

        if (!empty($select)) {
            $model = $model->select($select);
        }

        return $model->whereNotIn($where, $in)->get();
    }
}
