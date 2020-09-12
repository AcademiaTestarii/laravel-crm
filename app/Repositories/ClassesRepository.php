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
}
