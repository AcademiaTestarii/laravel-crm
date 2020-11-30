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

    public function countStudentClasses(int $authId, int $classId): int
    {
        $countStudentClasses = $this->classStudent::where('student_id', $authId)->where('class_id', $classId)->count();

        return $countStudentClasses;
    }
}
