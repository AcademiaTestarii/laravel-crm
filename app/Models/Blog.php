<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table = 'news';
    protected $guarded = ['id'];

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

    public function getKeywords()
    {
        return $this->getAttribute('keywords');
    }

    public function getDate()
    {
        return $this->getAttribute('date');
    }

    public function getAddedOn()
    {
        return $this->getAttribute('added_on');
    }

    public function getViews()
    {
        return $this->getAttribute('views');
    }

    public function isActive()
    {
        if ($this->getAttribute('is_active') == 1) {
            return true;
        }

        return false;
    }
}
