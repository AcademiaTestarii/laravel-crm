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


    public function getClassStudentData(int $studentId, int $classId)
    {
        $student = $this->model::where('student_id', $studentId)->where('class_id', $classId)->first();

        return $student;
    }
}
