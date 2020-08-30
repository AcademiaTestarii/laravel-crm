<?php

namespace App\Repositories;

use App\Models\ClassGroup;

class ClassGroupRepository extends Repository
{
    protected $model;

    /**
     * ClassGroupRepository constructor.
     * @param ClassGroup $classGroup
     */
    public function __construct(ClassGroup $classGroup)
    {
        $this->model = $classGroup;
    }
}
