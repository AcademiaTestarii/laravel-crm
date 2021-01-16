<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\ContentRepository;
use App\Repositories\StudentRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Validation\Factory as Validator;

class DashboardController extends Controller
{
    protected ClassesRepository    $classesRepository;
    protected StudentRepository    $studentRepository;
    private ClassStudentRepository $classStudentRepository;
    private ContentRepository      $contentRepository;
    protected Validator            $validator;

    public function __construct(
        ClassesRepository $classGroupRepository,
        StudentRepository $studentRepository,
        ClassStudentRepository $classStudentRepository,
        ContentRepository $contentRepository,
        Validator $validator
    )
    {
        $this->classesRepository      = $classGroupRepository;
        $this->studentRepository      = $studentRepository;
        $this->classStudentRepository = $classStudentRepository;
        $this->contentRepository      = $contentRepository;
        $this->validator              = $validator;
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

        $activeClasses      = $this->classStudentRepository->activeClasses();
        $finishedClasses    = $this->classStudentRepository->finishedClasses();
        $termsAndConditions = $this->contentRepository->getContentData('termeni_si_conditii');

        return view('students.dashboard.student_dashboard')->with(
            [
                'classes'            => $classes,
                'student'            => $student,
                'activeClasses'      => $activeClasses,
                'finishedClasses'    => $finishedClasses,
                'termsAndConditions' => $termsAndConditions,
            ]
        );
    }

    public function update(Request $request)
    {
        $validator = $this->validator->make(
            $request->all(),
            [
                'first_name'    => 'required|min:3',
                'last_name'     => 'required|min:3',
                'date_of_birth' => 'required|date|before:2014-01-01',
                'address'       => 'required',
                'city'          => 'required',
                'county'        => 'required',
                'company'       => 'nullable',
                'job_title'     => 'nullable',
                'phone'         => 'required|digits:10|starts_with:07',
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
            ]

        )->validate();

        $student = $this->studentRepository
            ->findOneBy(['id' => $request->get('studentId')]);
        $student->update(
            [
                'first_name'    => $request->get('first_name'),
                'last_name'     => $request->get('last_name'),
                'date_of_birth' => $request->get('date_of_birth'),
                'address'       => $request->get('address'),
                'city'          => $request->get('city'),
                'county'        => $request->get('county'),
                'company'       => $request->get('company'),
                'job_title'     => $request->get('job_title'),
                'phone'         => $request->get('phone'),
                'email'         => auth()->user()->email,
            ]
        );

        return redirect()->back();
    }
}
