<?php

namespace App\Http\Controllers;

use App\Repositories\ClassGroupRepository;

class DashboardController extends Controller
{
    protected $classGroupRepository;

    public function __construct(ClassGroupRepository $classGroupRepository)
    {
        $this->classGroupRepository = $classGroupRepository;
    }

    public function index()
    {
        $classes = $this->classGroupRepository->allOrderedBy('registration_start_date');

        return view('dashboard')->with(['classes' => $classes]);
    }
}
