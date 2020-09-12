<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClassStudent extends Model
{
    protected $table = 'class_students';

    public function classes()
    {
        return $this->belongsTo(Classes::class);
    }
}
