<?php

namespace App\Http\Controllers;

use App\Models\Classes;
use App\Models\MainClass;
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
use Illuminate\Contracts\Validation\Factory as Validator;

class CatalogController extends Controller
{
    protected ClassesRepository      $classesRepository;
    protected MainClassRepository    $mainClassRepository;
    protected TrainerRepository      $trainerRepository;
    protected ClassService           $classService;
    protected ClassStudentRepository $classStudentRepository;
    protected FeedbackRepository     $feedbackRepository;
    protected Request                $request;
    protected StudentRepository      $studentRepository;
    protected ContentRepository      $contentRepository;
    protected Validator              $validator;

    public function __construct(
        Validator $validator,
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
        $this->validator              = $validator;
    }

    /**
     * @param Request $request
     *
     * @return Factory|View
     * @throws Exception
     */
    public function index(Request $request)
    {
        $classes = $this->classesRepository->findAllBy(
            ['is_active' => 1],
            '=',
            'registration_start_date'
        );

        return view('students.catalog')->with(['classes' => $classes]);
    }

    public function get($classId)
    {

        $mainClass = MainClass::findOrFail($classId);
        $trainers  = $this->trainerRepository->allOrderedBy('name');

        return view('students.class_description')->with(
            [
                'mainClass' => $mainClass,
                'trainers'  => $trainers,
            ]
        );
    }


    public function getData(Request $request, $mainClassId)
    {


        $selectedMainClass = $this->mainClassRepository->findOneBy(['id' => $mainClassId]);
        if (Auth::guest()) {
            return redirect('/login?mainClassId='.$selectedMainClass->getId());
        }
        $student           = $this->studentRepository->findByAuthId(Auth::id());

        return view('students.signup')->with(
            [
                'student'           => $student,
                'selectedMainClass' => $selectedMainClass,
            ]
        );
    }

    public function update(Classes $classId, Request $request)
    {
        $validator = $this->validator->make(
            $request->all(),
            [
                'first_name'     => 'required|min:3',
                'last_name'      => 'required|min:3',
                'date_of_birth'  => 'required|date|before:2014-01-01',
                'address'        => 'required',
                'city'           => 'required',
                'county'         => 'required',
                'job_title'      => 'nullable',
                'phone'          => 'required|digits:10|starts_with:07',
                'education'      => 'required',
                'english'        => 'required',
                'other_language' => 'nullable',
                'ms_office'      => 'nullable',
                'web'            => 'required',
                'payment_type'   => 'required',
            ],
            [
                'first_name.required' => 'prenumele este obligatoriu',
                'first_name.min'      => 'prenume: minim 3 caractere',

                'last_name.required' => 'numele este obligatoriu',
                'last_name.min'      => 'nume: minim 3 caractere',

                'date_of_birth.required' => 'data nasterii este obligatorie',
                'date_of_birth.date'     => 'introdu o data valida',
                'date_of_birth.before'   => 'trebuie sa ai varsta de cel putin 14 ani',

                'address.required' => 'adresa este obligatorie',
                'city.required'    => 'localitatea este obligatorie',
                'county.required'  => 'judetul este obligatoriu',

                'phone.required'    => 'numarul de telefon este obligatoriu',
                'phone.digits'      => 'telefon: introdu 10 cifre',
                'phone.starts_with' => 'introdu un numar de telefon valid',

                'education.required' => 'campul educatie este obligatoriu',
                'english.required'   => 'cunostinte limba engleza este camp obligatoriu',
                'web.required'       => 'cunostinte web este camp obligatoriu',

                'payment_type.in'       => 'bifeaza una dintre optiuni :values',
                'payment_type.required' => 'bifeaza una dintre optiunile de plata',

            ]

        )->validate();

        $student = $this->studentRepository
            ->findOneBy(['id' => $request->get('studentId')]);
        $student->update(
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
