<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'feedback';
    protected $hidden = ['id'];

    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function getLink()
    {
        return $this->getAttribute('link');
    }
}
