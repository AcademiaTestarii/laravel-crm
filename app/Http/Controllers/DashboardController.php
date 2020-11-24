<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;

class DashboardController extends Controller
{
    protected $classesRepository;

    public function __construct(ClassesRepository $classGroupRepository)
    {
        $this->classesRepository = $classGroupRepository;
    }

    public function index()
    {
        $classes = $this->classesRepository->allOrderedBy('registration_start_date');

        return view('dashboard')->with(['classes' => $classes]);
    }

    public function getBlankDashboard()
    {
        return view('blank_dashboard');
    }
}
