<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\ContentRepository;
use App\Repositories\StudentRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    protected $classesRepository;
    protected $studentRepository;
    private   $classStudentRepository;
    private   $contentRepository;

    public function __construct(ClassesRepository $classGroupRepository, StudentRepository $studentRepository, ClassStudentRepository $classStudentRepository, ContentRepository $contentRepository)
    {
        $this->classesRepository      = $classGroupRepository;
        $this->studentRepository      = $studentRepository;
        $this->classStudentRepository = $classStudentRepository;
        $this->contentRepository      = $contentRepository;
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

        $activeClasses   = $this->classStudentRepository->activeClasses();
        $finishedClasses = $this->classStudentRepository->finishedClasses();
        $termsAndConditions = $this->contentRepository->getContentData('termeni_si_conditii');
        return view('students.student_dashboard')->with(
            [
                'classes'         => $classes,
                'student'         => $student,
                'activeClasses'   => $activeClasses,
                'finishedClasses' => $finishedClasses,
                'termsAndConditions' => $termsAndConditions
            ]
        );
    }

    public function update(Request $request)
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
    }
}
