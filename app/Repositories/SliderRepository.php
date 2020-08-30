<?php

namespace App\Repositories;

use App\Models\Slider;

class SliderRepository extends Repository
{
    protected $model;

    /**
     * SliderRepository constructor.
     * @param Slider $slider
     */
    public function __construct(Slider $slider)
    {
        $this->model = $slider;
    }
}
