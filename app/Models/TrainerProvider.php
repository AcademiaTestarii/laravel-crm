<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TrainerProvider extends Model
{
    protected $guarded = ['id'];

    public function getId(): int
    {
        return $this->getAttribute('id');
    }

    public function getName(): string
    {
        return $this->getAttribute('name');
    }
}
