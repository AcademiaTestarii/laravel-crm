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

    public function getOrdered()
    {
        $mainClasses = $this->mainClass::where('is_active', 1)->orderBy('order', 'asc')-get();

        return $mainClasses;
    }

    public function getById(int $mainClassId) {
        $mainClass = $this->mainClass::with('classes')->findOrFail($mainClassId);

        return $mainClass;
    }
}
