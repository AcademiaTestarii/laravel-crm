<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClassDate extends Model
{
    public $timestamps = false;
    protected $fillable = ['class_id', 'date'];

    public function classes()
    {
        return $this->belongsTo(Classes::class);
    }
}
