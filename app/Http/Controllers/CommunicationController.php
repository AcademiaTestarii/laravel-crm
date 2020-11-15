<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;
use App\Repositories\MainClassRepository;
use App\Repositories\StudentRepository;
use Illuminate\Http\Request;


class CommunicationController extends Controller
{
    protected $mainClassRepository;
    protected $classesRepository;
    protected $studentRepository;

    public function __construct(
        MainClassRepository $mainClassRepository,
        ClassesRepository $classesRepository,
        StudentRepository $studentRepository
    ) {
        $this->mainClassRepository = $mainClassRepository;
        $this->classesRepository = $classesRepository;
        $this->studentRepository = $studentRepository;
    }

    public function index(Request $request)
    {
        $selectedMainClass = $selectedClass = null;
        $filter = [];

        if ($request->get('main_class') && !empty($request->get('main_class'))) {
            $selectedMainClass = $this->mainClassRepository->findOneBy(['id' => $request->get('main_class')]);
            $filter=['main_class' => $request->get('main_class')];
        }

        if ($request->get('class') && !empty($request->get('class'))) {
            $selectedClass = $this->classesRepository->findOneBy(['id' => $request->get('class')]);
            $filter=['class' => $request->get('class')];
        }

        $students = $this->studentRepository->allQueryBy($filter);

        $mainClasses = $this->mainClassRepository->findAllBy([
            'is_active' => 1
        ]);

        return view('communication')->with([
            'mainClasses' => $mainClasses,
            'selectedMainClass' => $selectedMainClass,
            'selectedClass' => $selectedClass,
            'students' => $students
        ]);
    }
}
