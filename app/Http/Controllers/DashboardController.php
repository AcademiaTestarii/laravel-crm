<?php

namespace App\Http\Controllers;

use App\Models\Classes;
use App\Models\ClassStudent;
use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\StudentRepository;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    protected $classesRepository;
    protected $studentRepository;
    private   $classStudentRepository;

    public function __construct(ClassesRepository $classGroupRepository, StudentRepository $studentRepository, ClassStudentRepository $classStudentRepository)
    {
        $this->classesRepository      = $classGroupRepository;
        $this->studentRepository      = $studentRepository;
        $this->classStudentRepository = $classStudentRepository;
    }

    public function index()
    {
        $classes = $this->classesRepository->allOrderedBy('registration_start_date');

        return view('dashboard')->with(['classes' => $classes]);
    }


    public function studentDashboard(Request $request)
    {
        $student = $this->studentRepository->findByAuthId(Auth::id());

        $classes = $this->classesRepository->allOrderedBy('registration_start_date');

        $lastSigned           = $this->classStudentRepository->findOneBy(['student_id' => $student->getId()])->orderBy('sign_up_date', 'desc')->first();
        $currentSignedUpClass = $this->classesRepository->findOneBy(['id' => $lastSigned->getClassId()])->first();

        $activeClasses   = $this->classStudentRepository->activeClasses();
        $finishedClasses = $this->classStudentRepository->finishedClasses();

        return view('students.student_dashboard')->with(
            [
                'classes'              => $classes,
                'student'              => $student,
                'activeClasses'        => $activeClasses,
                'finishedClasses'      => $finishedClasses,
                "currentSignedUpClass" => $currentSignedUpClass,
            ]
        );
    }
}
