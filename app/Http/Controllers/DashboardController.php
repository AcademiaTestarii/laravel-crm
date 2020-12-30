<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\StudentRepository;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    protected $classesRepository;
    protected $studentRepository;
    private $classStudentRepository;

    public function __construct(ClassesRepository $classGroupRepository, StudentRepository $studentRepository, ClassStudentRepository $classStudentRepository)
    {
        $this->classesRepository = $classGroupRepository;
        $this->studentRepository = $studentRepository;
        $this->classStudentRepository = $classStudentRepository;
    }

    public function index()
    {
        $classes = $this->classesRepository->allOrderedBy('registration_start_date');

        return view('dashboard')->with(['classes' => $classes]);
    }

//    public function getBlankDashboard()
//    {
//        return view('blank_dashboard');
//    }

    public function studentDashboard()
    {
        $classes = $this->classesRepository->allOrderedBy('registration_start_date');
        $student         = $this->studentRepository->findByAuthId(Auth::id());

        $activeClasses = $this->classStudentRepository->activeClasses();
        $finishedClasses = $this->classStudentRepository->finishedClasses();
        return view('students.student_dashboard')->with(
            [
                'classes' => $classes,
                'student' => $student,
                'activeClasses' => $activeClasses,
                'finishedClasses' => $finishedClasses
            ]
        );
    }
}
