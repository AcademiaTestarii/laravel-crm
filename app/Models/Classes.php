<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Classes extends Model
{
    protected $table = 'classes';

    public function mainClass()
    {
        return $this->belongsTo(MainClass::class);
    }

    public function classStudents()
    {
        return $this->hasMany(ClassStudent::class, 'class_id');
    }

    public function getStudents()
    {
        return $this->getAttribute('students');
    }

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getTitle()
    {
        return $this->getAttribute('title');
    }

    public function isInWeekend()
    {
        if ($this->getAttribute('weekend') == 1) {
            return true;
        };

        return false;
    }

    public function isBucharestLocated()
    {
        if ($this->getAttribute('is_bucharest_located') == 1) {
            return true;
        };

        return false;
    }

    public function getRegistrationStartDate()
    {
        if (is_null($this->getAttribute('registration_start_date'))) {
            return null;
        }
        return (new Carbon($this->getAttribute('registration_start_date')));
    }

    public function getRegistrationEndDate()
    {
        if (is_null($this->getAttribute('registration_end_date'))) {
            return null;
        }
        return (new Carbon($this->getAttribute('registration_end_date')));

    }
}
