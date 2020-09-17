<?php

namespace App\Http\Controllers;

use App\Repositories\StudentRepository;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    protected $studentRepository;

    public function __construct(StudentRepository $studentRepository)
    {
        $this->studentRepository = $studentRepository;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $students = $this->studentRepository->allOrderedBy();

        return view('students')->with([
            'students' => $students
        ]);
    }
}