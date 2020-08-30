<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subcontent extends Model
{
    protected $table = 'subcontent';

    public function content()
    {
        return $this->belongsTo(Content::class);
    }

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getTitle()
    {
        return $this->getAttribute('title');
    }

    public function getText()
    {
        return $this->getAttribute('text');
    }
}
