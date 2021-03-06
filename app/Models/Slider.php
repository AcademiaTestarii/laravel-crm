<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Slider extends Model
{
    use SoftDeletes;

    protected $table = 'slider';
    protected $fillable = ['active', 'title', 'description1', 'description2', 'link', 'image'];

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

    public function getDescription1()
    {
        return $this->getAttribute('description1');
    }

    public function getDescription2()
    {
        return $this->getAttribute('description2');
    }

    public function getButtonName()
    {
        return $this->getAttribute('button');
    }

    public function getLink()
    {
        return $this->getAttribute('link');
    }

    public function isActive()
    {
        if ($this->getActiveStatus() == 1) {
            return true;
        }

        return false;
    }
}
