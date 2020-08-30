<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $table = 'slider';

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getCreatedAtDate()
    {
        return (new Carbon($this->getAttribute('created')))->format("F d, Y");
    }

    public function getTitle()
    {
        return $this->getAttribute('title');
    }

    public function getImage()
    {
        if (!is_null($this->getAttribute('image'))) {
            return asset('/') . 'slider/' . $this->getAttribute('image');
        }

        return null;
    }

    public function getActiveStatus()
    {
        return $this->getAttribute('active');
    }

    public function isActive()
    {
        if ($this->getActiveStatus() == 1) {
            return true;
        }

        return false;
    }
}
