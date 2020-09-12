<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Classes extends Model
{
    protected $table = 'classes';

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function mainClass()
    {
        return $this->belongsTo(MainClass::class);
    }
}
