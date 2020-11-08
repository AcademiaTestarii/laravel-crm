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

    public function allOrderedByActiveAndName()
    {
        return $this->model->orderBy('is_active', 'DESC')->orderBy('last_name')->get();
    }

    public function allQueryBy($filter)
    {
        if (empty($filter)) {
            return $this->model->all();
        }

        return $this->model->where(function ($query) use ($filter) {
            if (isset($filter['class'])) {
                return $query->whereHas('classStudents')->where('class_id', $filter['class']);
            }
            if (isset($filter['main_class'])) {
                return $query->whereHas('classStudents')->where(function($q) use ($filter) {
                    return $q->whereHas('class')->where('main_class_id', $filter['main_class']);
                });
            }

        })->get();
    }
}
