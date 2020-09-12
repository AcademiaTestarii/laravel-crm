<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Trainer extends Model
{
    //  use SoftDeletes;
    protected $table = 'trainer';

    public function classTrainers()
    {
        return $this->hasMany(ClassTrainer::class);
    }

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getName()
    {
        return $this->getAttribute('name');
    }
}
