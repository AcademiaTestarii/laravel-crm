<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\ContentRepository;
use App\Repositories\StudentRepository;
use App\Services\RegisterService;
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
    protected RegisterService      $registerService;

    public function __construct(
        ClassesRepository $classGroupRepository,
        StudentRepository $studentRepository,
        ClassStudentRepository $classStudentRepository,
        ContentRepository $contentRepository,
        Validator $validator,
        RegisterService $registerService
    )
    {
        $this->classesRepository      = $classGroupRepository;
        $this->studentRepository      = $studentRepository;
        $this->classStudentRepository = $classStudentRepository;
        $this->contentRepository      = $contentRepository;
        $this->validator              = $validator;
        $this->registerService        = $registerService;
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

        $baseurl='';
        if(url()->current() === 'stage.up-grade.tech') {
            $baseurl = 'stage.academiatestarii.ro';
        } elseif (url()->current() === 'up-grade.tech') {
            $baseurl = 'stage.academiatestarii.ro';
        }

        return view('students.dashboard.student_dashboard')->with(
            [
                'classes'            => $classes,
                'student'            => $student,
                'activeClasses'      => $activeClasses,
                'finishedClasses'    => $finishedClasses,
                'termsAndConditions' => $termsAndConditions,
                'baseUrl' => $baseurl
            ]
        );
    }

    public function update(Request $request, RegisterService $registerService)
    {
        $student = $this->studentRepository
            ->findOneBy(['id' => $request->get('studentId')]);

        if ($request->has('updateDetails')) {
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
                ]

            )->validate();

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

        if ($request->has('changePassword')) {
            $validator = $this->validator->make(
                $request->all(),
                ['password' => 'required|min:6|max:12'],
                [
                    'password.required' => 'introdu o parola',
                    'password.min'      => 'introdu minim 6 caractere',
                    'password.max'      => 'introdu maxim 12 caractere',
                ]
            );

            $registerService->resetPassword(
                [
                    'email'    => auth()->user()->email,
                    'password' => md5($request->get('password')),
                ]
            );

            return redirect()->back();
        }

        if ($request->has('updateNotifications')) {
            $student->update(
                [
                    'notifications' => $request->get('notifications'),
                    'promotions'    => $request->get('promotions'),
                    'newsletter'    => $request->get('newsletter'),
                ]
            );

            return redirect()->back();
        }
    }

}
