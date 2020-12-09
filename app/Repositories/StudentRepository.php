<?php

namespace App\Repositories;

use App\Models\Student;
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
            $model = $this->model->where(function ($query) {
                return $query->whereHas('classStudents', function ($q) {
                    return $q->whereHas('classes', function ($qu) {
                        return $qu->whereHas('mainClass', function ($qr) {
                            return $qr->where('trainer_provider_id', auth()->user()->trainerProvider->getId());
                        });
                    });
                });
            });

            return $model->orderBy('is_active', 'DESC')->orderBy('last_name')->get();
        }

        return $this->model->orderBy('is_active', 'DESC')->orderBy('last_name')->get();
    }

    public function allQueryBy($filter)
    {
        if (empty($filter)) {
            $model = $this->model;
            if (auth()->user()->isTrainerProvider()) {
                $model = $model->where(function ($query) {
                    return $query->whereHas('classStudents', function ($q) {
                        return $q->whereHas('classes', function ($qu) {
                            return $qu->whereHas('mainClass', function ($qr) {
                                return $qr->where('trainer_provider_id', auth()->user()->trainerProvider->getId());
                            });
                        });
                    });
                });

                return $model->get();
            }
            return $this->model->all();
        }

        $model = $this->model->where(function ($query) use ($filter) {
            if (isset($filter['main_class'])) {
                return $query->whereHas('classStudents', function ($q) use ($filter) {
                    return $q->whereHas('classes', function ($qu) use ($filter) {
                        if (isset($filter['class']) && !empty($filter['class'])) {
                            return $qu->where('main_class_id', $filter['main_class'])
                                ->where('class_id', $filter['class']);
                        }
                        return $qu->where('main_class_id', $filter['main_class']);
                    });
                });
            }

            if (isset($filter['class']) && !empty($filter['class'])) {
                return $query->whereHas('classStudents', function ($q) use ($filter) {
                    return $q->where('class_id', $filter['class']);
                });
            }

        })->get();

        return $model;
    }

    public function findOneBy(array $criteria, array $orderBy = [])
    {
        $model = $this->model;

        foreach ($criteria as $column => $value) {
            $model = $model->where($column, '=', $value);
        }

        if (auth()->user()->isStudent()) {
            $model = $model->where('id', auth()->user()->getId());
        }

        return $model->first();
    }
}
