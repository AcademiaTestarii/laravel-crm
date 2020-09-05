<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    protected $table = 'content';

    const ID_HOMEPAGE = 1;
    const ID_TESTERS = 3;
    const ID_COMPANIES = 4;

    public function subcontents()
    {
        return $this->hasMany(Subcontent::class);
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

    public function getText()
    {
        return $this->getAttribute('text');
    }
}
