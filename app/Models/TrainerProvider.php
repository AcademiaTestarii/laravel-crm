<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TrainerProvider extends Model
{
    protected $guarded = ['id'];

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getName()
    {
        return $this->getAttribute('name');
    }
}
