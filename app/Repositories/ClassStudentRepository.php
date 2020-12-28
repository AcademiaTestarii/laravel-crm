<?php

namespace App\Repositories;

use App\Models\ClassStudent;
use Carbon\Carbon;

class ClassStudentRepository extends Repository
{
    protected $model;

    public function __construct(ClassStudent $classStudent)
    {
        $this->model = $classStudent;
    }

    public function count($classId)
    {
        $classId = $this->model->getClassId();

        return $this->model::where('class_id', $classId)->count();
    }

    public function activeClasses()
    {
        $studentId = $this->model->getId();

        return $this->model::where('student_id', $studentId)
                           ->where('registration_end_date', '>=', Carbon::now())
                           ->orderBy('resgistration_start_date', 'ASC')
                           ->get();
    }

}
