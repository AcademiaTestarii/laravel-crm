<?php

namespace App\Repositories;

use App\Models\Classes;
use Carbon\Carbon;

class ClassesRepository extends Repository
{
    protected $model;

    /**
     * ClassGroupRepository constructor.
     * @param Classes $classGroup
     */
    public function __construct(Classes $classGroup)
    {
        $this->model = $classGroup;
    }

    public function orderByStartdate(int $mainClassId)
    {
        $classesByStartDate = $this->model::where('main_class_id', $mainClassId)->where('registration_start_date', '>', Carbon::now())->orderBy('registration_start_date', 'asc')->limit(2)->get();

        return $classesByStartDate;
    }

}
