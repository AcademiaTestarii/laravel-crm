<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class ClassGroup extends Model
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
