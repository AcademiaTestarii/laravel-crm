<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClassTrainer extends Model
{
    protected $table = 'class_trainers';
    public $timestamps = false;
    protected $fillable = ['class_id', 'trainer_id'];

    public function classes()
    {
        return $this->belongsTo(Classes::class);
    }

    public function trainers()
    {
        return $this->belongsTo(Trainer::class);
    }
}
