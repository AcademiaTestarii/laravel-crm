<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MainClass extends Model
{
    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function classes()
    {
        return $this->hasMany(Classes::class);
    }

    public function classesOrderByDate()
    {
        return $this->hasMany(Classes::class)->orderBy('registration_start_date');
    }

    public function getTitle()
    {
        return $this->getAttribute('title');
    }
}
