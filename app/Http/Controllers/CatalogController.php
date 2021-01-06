<?php

namespace App\Http\Controllers;

use App\Models\Classes;
use App\Models\MainClass;
use App\Models\Student;
use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\FeedbackRepository;
use App\Repositories\MainClassRepository;
use App\Repositories\TrainerRepository;
use App\Services\ClassService;
use Exception;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\View\View;
use App\Repositories\ContentRepository;
use App\Repositories\StudentRepository;
use Illuminate\Support\Facades\Auth;

class CatalogController extends Controller
{
    protected $classesRepository;
    protected $mainClassRepository;
    protected $trainerRepository;
    protected $classService;
    protected $classStudentRepository;
    protected $feedbackRepository;
    protected $request;
    protected $studentRepository;
    protected $contentRepository;

    public function __construct(
        ClassesRepository $classGroupRepository,
        MainClassRepository $mainClassRepository,
        TrainerRepository $trainerRepository,
        ClassService $classService,
        ClassStudentRepository $classStudentRepository,
        FeedbackRepository $feedbackRepository,
        StudentRepository $studentRepository,
        ContentRepository $contentRepository
    )
    {
        $this->classesRepository      = $classGroupRepository;
        $this->mainClassRepository    = $mainClassRepository;
        $this->trainerRepository      = $trainerRepository;
        $this->classService           = $classService;
        $this->classStudentRepository = $classStudentRepository;
        $this->feedbackRepository     = $feedbackRepository;
        $this->studentRepository      = $studentRepository;
        $this->contentRepository      = $contentRepository;
    }

    /**
     * @param Request $request
     *
     * @return Factory|View
     * @throws Exception
     */
    public function index(Request $request)
    {
        $classes       = $this->classesRepository->allOrderedBy();
        $signedUpCount = $this->classStudentRepository->count($request->get('id'));
        $classStudents = $this->classesRepository->getStudentsValue();
        $available     = $classStudents - $signedUpCount;

        return view('students.catalog')->with(
            [
                'classes'   => $classes,
                'available' => $available,
            ]
        );
    }

    public function get($classId)
    {

        $mainClass    = MainClass::findOrFail($classId);
        $trainers = $this->trainerRepository->allOrderedBy('name');

        return view('students.class_description')->with(
            [
                'mainClass'    => $mainClass,
                'trainers' => $trainers,
            ]
        );
    }


    public function getData($mainClLassId)
    {
        //$class             = Classes::findOrFail($classId);

        $selectedMainClass = $this->mainClassRepository->findOneBy(['id' => $mainClLassId]);

        $student           = $this->studentRepository->findOneBy(['id' => Auth::id()]);

        return view('students.signup')->with(
            [
                'student'           => $student,
                'selectedMainClass' => $selectedMainClass,
                //'class' => $class
            ]
        );
    }

    public function update(Classes $classId, Request $request)
    {

        $validatedData = $request->validate(
            [
                'first_name'     => 'required',
                'last_name'      => 'required',
                'email'          => 'required|email',
                'date_of_birth'  => 'required|date',
                'address'        => 'required',
                'city'           => 'required',
                'county'         => 'required',
                'job_title'      => 'nullable',
                'phone'          => 'required|min:10',
                'education'      => 'nullable',
                'english'        => 'nullable',
                'other_language' => 'nullable',
                'ms_office'      => 'nullable',
                'web'            => 'nullable',


            ]
        );

        $this->studentRepository
            ->findOneBy(['id' => $request->get('studentId')])->update(
                [
                    'first_name'     => $request->get('first_name'),
                    'last_name'      => $request->get('last_name'),
                    'email'          => $request->get('email'),
                    'date_of_birth'  => $request->get('date_of_birth'),
                    'address'        => $request->get('address'),
                    'city'           => $request->get('city'),
                    'county'         => $request->get('county'),
                    'job_title'      => $request->get('job_title'),
                    'phone'          => $request->get('phone'),
                    'education'      => $request->get('education'),
                    'english'        => $request->get('english'),
                    'other_language' => $request->get('other_language'),
                    'ms_office'      => $request->get('ms_office'),
                    'web'            => $request->get('web'),
                ]
            );

        $student = $this->studentRepository->findByAuthId(Auth::id());
        $student->classStudents()->create(
            [
                'student_id'     => $request->get('studentId'),
                'class_id'       => $request->get('classId'),
                'payment_method' => $request->get('payment_method'),
                'payment_type'   => $request->get('payment_type'),
                'payment1'       => $request->get('payment1'),
                'payment2'       => $request->get('payment2'),
                'payment_full'   => $request->get('payment_full'),
            ]
        );


        return redirect('/student_dashboard');
    }

}
