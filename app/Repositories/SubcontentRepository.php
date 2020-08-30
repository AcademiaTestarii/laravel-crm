<?php

namespace App\Repositories;

use App\Models\Slider;
use App\Models\Subcontent;

class SubcontentRepository extends Repository
{
    protected $model;

    /**
     * SubcontentRepository constructor.
     * @param Subcontent $subcontent
     */
    public function __construct(Subcontent $subcontent)
    {
        $this->model = $subcontent;
    }
}
