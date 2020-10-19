<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;
use Illuminate\Support\Facades\Auth;

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
}
