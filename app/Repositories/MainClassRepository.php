<?php

namespace App\Repositories;

use App\Models\MainClass;

class MainClassRepository extends Repository
{
    protected $model;

    /**
     * MainClassRepository constructor.
     * @param MainClass $mainClass
     */
    public function __construct(MainClass $mainClass)
    {
        $this->model = $mainClass;
    }
}
