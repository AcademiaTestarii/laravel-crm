<?php

namespace App\Repositories;

use App\Models\Feedback;

class FeedbackRepository extends Repository
{
    protected $model;

    public function __construct(Feedback $feedback)
    {
        $this->model = $feedback;
    }
}
