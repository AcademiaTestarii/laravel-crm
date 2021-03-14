<?php

namespace App\Repositories;

use App\Models\Student;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class StudentRepository extends Repository
{
    protected $model;

    public function __construct(Student $student)
    {
        $this->model = $student;
    }

    public function allOrderedByActiveAndName()
    {
        if (auth()->user()->isTrainerProvider()) {
            $trainerProviderId = auth()->user()->trainerProvider->getId();
            $students = \DB::select("SELECT s.* from students s
                    JOIN class_students cs on s.id = cs.student_id
                    JOIN classes c on cs.class_id = c.id 
                    JOIN main_classes mc on c.main_class_id = mc.id
                    WHERE mc.trainer_provider_id = $trainerProviderId
                    ORDER BY s.is_active DESC, s.last_name ASC");

            return $this->model::hydrate($students);
        }

        $students = \DB::select("SELECT * from students ORDER BY is_active DESC, last_name ASC");

        return $this->model::hydrate($students);
    }

    public function allQueryBy($filter)
    {
        if (empty($filter)) {
            return $this->allOrderedByActiveAndName();
        }

        if (isset($filter['main_class']) && !isset($filter['class'])) {
            $mainClassId = $filter['main_class'];
            $query = "SELECT s.* from students s
                    JOIN class_students cs on s.id = cs.student_id
                    JOIN classes c on cs.class_id = c.id 
                    WHERE c.main_class_id = $mainClassId
                    ORDER BY s.is_active DESC, s.last_name ASC";
        }

        if (isset($filter['class'])) {
            $classId = $filter['class'];
            $query = "SELECT s.* from students s
                    JOIN class_students cs on s.id = cs.student_id
                    JOIN classes c on cs.class_id = c.id 
                    WHERE c.id = $classId
                    ORDER BY s.is_active DESC, s.last_name ASC";
        }

        $students = \DB::select("$query");

        return $this->model::hydrate($students);
    }

    public function findOneBy(array $criteria, array $orderBy = [])
    {
        $model = $this->model;

        foreach ($criteria as $column => $value) {
            $model = $model->where($column, '=', $value);
        }

        return $model->first();
    }

    public function findByAuthId($authId)
    {
        $model = $this->model;

        return $model->where('students.user_id', $authId)->first();
    }
}
