<?php

namespace App\Repositories;

use App\Models\ClassStudent;

class ClassStudentRepository extends Repository
{
    protected $model;

    public function __construct(ClassStudent $classStudent)
    {
        $this->model = $classStudent;
    }
}