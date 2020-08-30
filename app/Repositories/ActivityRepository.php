<?php

namespace App\Repositories;

use App\Models\Activity;

class ActivityRepository extends Repository
{
    protected $model;

    /**
     * ActivityRepository constructor.
     * @param Activity $activity
     */
    public function __construct(Activity $activity)
    {
        $this->model = $activity;
    }
}
