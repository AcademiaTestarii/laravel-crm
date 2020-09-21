<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Testimonial extends Model
{
    use SoftDeletes;

    protected $fillable = ['is_active', 'name', 'position', 'testimonial', 'class'];

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getName()
    {
        return $this->getAttribute('name');
    }

    public function getPosition()
    {
        return $this->getAttribute('position');
    }

    public function getClass()
    {
        return $this->getAttribute('class');
    }

    public function getTestimonial()
    {
        return $this->getAttribute('testimonial');
    }

    public function getCreatedOn()
    {
        return (new Carbon($this->getAttribute('created_on')))->toDateString();
    }

    public function isActive()
    {
        if ($this->getAttribute('is_active') == 1) {
            return true;
        }

        return false;
    }
}
