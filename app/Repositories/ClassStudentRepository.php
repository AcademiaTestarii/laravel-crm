<?php

namespace App\Repositories;

use App\Models\ClassStudent;
use App\Repositories\StudentRepository;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class ClassStudentRepository extends Repository
{
    protected $model;

    public function __construct(ClassStudent $classStudent)
    {
        $this->model = $classStudent;
    }

    public function count()
    {
        $classId = $this->model->getClassId();

        return $this->model::where('class_id', $classId)->count();
    }

    public function activeClasses()
    {
        $studentId = Auth::id();  //temp solution

        return $this->model::join('classes', 'class_id', '=', 'classes.id')
                           ->select('*')
                           ->where('student_id', $studentId)
                           ->where('registration_end_date', '>=', Carbon::now())
                           ->orderBy('registration_start_date', 'ASC')
                           ->get();
    }

    public function finishedClasses()
    {
        $studentId = Auth::id();

        return $this->model::join('classes', 'class_id', '=', 'classes.id')
                           ->select('*')
                           ->where('student_id', $studentId)
                           ->where('registration_end_date', '<', Carbon::now())
                           ->orderBy('registration_start_date', 'ASC')
                           ->get();
    }

}
