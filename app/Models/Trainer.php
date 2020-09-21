<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Trainer extends Model
{
    protected $table = 'trainer';
    protected $guarded = ['id'];

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

    public function getTitle()
    {
        return $this->getAttribute('title');
    }

    public function getEmail()
    {
        return $this->getAttribute('email');
    }


    public function getImage()
    {
        if (!is_null($this->getAttribute('picture'))) {
            return asset('/') . 'trainers/' . $this->getAttribute('picture');
        }

        return null;
    }

    public function getBio()
    {
        return $this->getAttribute('bio');
    }

    public function getLinkedin()
    {
        return $this->getAttribute('linkedin');
    }

    public function getPhone()
    {
        return $this->getAttribute('phone');
    }

}
