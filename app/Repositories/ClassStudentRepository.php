<?php

namespace App\Repositories;

use App\Models\ClassStudent;
use App\Repositories\StudentRepository;
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

    public function signedUp()
    {
        $classId = $this->model->getClassId();
        $studentId =$this->model->getStudentId();

        return $this->model::where('class_id', $classId)->where('student_id', $studentId);
    }

    public function activeClasses()
    {
        $studentId = $this->model->getId();

        return $this->model::join('classes', 'class_id', '=', 'classes.id')
                           ->select('*')
                           ->where('student_id', $studentId)
                           ->where('registration_end_date', '>=', Carbon::now())
                           ->orderBy('registration_start_date', 'ASC')
                           ->get();
    }

    public function finishedClasses()
    {
        $studentId = $this->model->getId();

        return $this->model::join('classes', 'class_id', '=', 'classes.id')
                           ->select('*')
                           ->where('student_id', $studentId)
                           ->where('registration_end_date', '<', Carbon::now())
                           ->orderBy('registration_start_date', 'ASC')
                           ->get();
    }

}
