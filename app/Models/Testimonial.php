<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Testimonial extends Model
{
    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getName()
    {
        return $this->getAttribute('name');
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
