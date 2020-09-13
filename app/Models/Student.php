<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $hidden = ['id'];

    public function classStudents()
    {
        return $this->hasMany(ClassStudent::class);
    }

    /* public function classStudent($classId)
     {
         return $this->hasOne(ClassStudent::class)->where('class_id', $classId);
     }*/

    public function feedbacks()
    {
        return $this->hasMany(Feedback::class, 'student_id');
    }

    public function getFeedback($classId)
    {
        return $this->feedbacks->where('class_id', $classId);
    }

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getFirstName()
    {
        return $this->getAttribute('first_name');
    }

    public function getLastName()
    {
        return $this->getAttribute('last_name');
    }

    public function getRegistrationDate()
    {
        return $this->getAttribute('registration_date');
    }

    public function getEmail()
    {
        return $this->getAttribute('email');
    }

    public function getPhone()
    {
        return $this->getAttribute('phone');
    }
}
