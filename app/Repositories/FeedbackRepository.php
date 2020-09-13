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

    public function generatePassword($length = 12)
    {
        $chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        $count = strlen($chars);
        for ($i = 0, $result = ''; $i < $length; $i++) {
            $index = rand(0, $count - 1);
            $result .= substr($chars, $index, 1);
        }
        return $result;
    }
}
