<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    protected $table = 'activities';

    protected $fillable = ['followers', 'classes', 'graduates', 'recommandations'];

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getFollowers()
    {
        return $this->getAttribute('followers');
    }

    public function getNumberOfClasses()
    {
        return $this->getAttribute('classes');
    }

    public function getNumberOfGraduates()
    {
        return $this->getAttribute('graduates');
    }

    public function getNumberOfRecommandations()
    {
        return $this->getAttribute('recommandations');
    }
}
