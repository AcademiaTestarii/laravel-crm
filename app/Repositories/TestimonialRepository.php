<?php

namespace App\Repositories;

use App\Models\Testimonial;

class TestimonialRepository extends Repository
{
    protected $model;

    /**
     * TestimonialRepository constructor.
     * @param Testimonial $testimonial
     */
    public function __construct(Testimonial $testimonial)
    {
        $this->model = $testimonial;
    }
}
