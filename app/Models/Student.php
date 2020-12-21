<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
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

    public function feedback($classId)
    {
        return $this->hasOne(Feedback::class, 'student_id')->where('class_id', $classId)->first();
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
        if (is_null($this->getAttribute('registration_date'))) {
            return null;
        }
        return (new Carbon($this->getAttribute('registration_date')));
    }

    public function getEmail()
    {
        return $this->getAttribute('email');
    }

    public function getPhone()
    {
        return $this->getAttribute('phone');
    }

    public function getActivity()
    {
        if (is_null($this->getAttribute('activity'))) {
            return null;
        }

        return (new Carbon($this->getAttribute('activity')));
    }

    public function getAddress()
    {
        return $this->getAttribute('address');
    }

    public function getCity()
    {
        return $this->getAttribute('city');
    }

    public function getCounty()
    {
        return $this->getAttribute('county');
    }

    public function getJob()
    {
        return $this->getAttribute('job');
    }

    public function getDateOfBirth()
    {
        return $this->getAttribute('date_of_birth');
    }

    public function getEducation()
    {
        return $this->getAttribute('education');
    }

    public function getEnglish()
    {
        return $this->getAttribute('english');
    }

    public function getOtherLanguage()
    {
        return $this->getAttribute('other_language');
    }

    public function getMsOffice()
    {
        return $this->getAttribute('ms_office');
    }

    public function getWeb()
    {
        return $this->getAttribute('web');
    }

    public function getPassword()
    {
        return $this->getAttribute('password');
    }
}
