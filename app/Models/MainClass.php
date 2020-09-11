<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MainClass extends Model
{
    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function classGroup()
    {
        return $this->hasMany(ClassGroup::class);
    }

    public function getTitle()
    {
        return $this->getAttribute('title');
    }
}
