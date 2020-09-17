<?php

namespace App\Repositories;

use App\Models\Student;

class StudentRepository extends Repository
{
    protected $model;

    public function __construct(Student $student)
    {
        $this->model = $student;
    }

    public function allWithActivity()
    {
        return $this->model->whereNotNull('activity')->orderBy('last_name')->get();
    }

    public function allWithoutActivity()
    {
        return $this->model->whereNull('activity')->orderBy('last_name')->get();
    }

    public function allOrderedByActiveAndName()
    {
        return $this->model->orderBy('is_active', 'DESC')->orderBy('last_name')->get();
    }
}
