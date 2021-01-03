<?php

namespace App\Http\Controllers;

use App\Models\Classes;
use App\Models\ClassStudent;
use App\Models\Student;
use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\FeedbackRepository;
use App\Repositories\MainClassRepository;
use App\Repositories\TrainerRepository;
use App\Services\ClassService;
use Carbon\Carbon;
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
    ) {
        $this->classesRepository = $classGroupRepository;
        $this->mainClassRepository = $mainClassRepository;
        $this->trainerRepository = $trainerRepository;
        $this->classService = $classService;
        $this->classStudentRepository = $classStudentRepository;
        $this->feedbackRepository = $feedbackRepository;
        $this->studentRepository = $studentRepository;
        $this->contentRepository = $contentRepository;
    }

    /**
     * @param Request $request
     *
     * @return Factory|View
     * @throws Exception
     */
    public function index(Request $request)
    {
        $classes = $this->classesRepository->allOrderedBy();
        $signedUpCount = $this->classStudentRepository->count($request->get('id'));
        $classStudents = $this->classesRepository->getStudentsValue();
        $available = $classStudents - $signedUpCount;

        return view('students.catalog')->with(
            [
                'classes' => $classes,
                'available' => $available,
            ]
        );
    }

    public function get($classId)
    {

        $class = Classes::findOrFail($classId);
        $trainers = $this->trainerRepository->allOrderedBy('name');

        return view('students.class_description')->with(
            [
                'class' => $class,
                'trainers' => $trainers,
            ]
        );
    }


    public function getData($classId, Request $request)
    {
        $student = $this->studentRepository->findByAuthId(Auth::id());
        $class = $this->classesRepository->findOneBy(['id' => $classId]);

        $signedUp = $student->isSignedUpToClass($classId);

        return view('students.signup')->with(
            [
                'class' => $class,
                'student' => $student,
                'signedUp' => $signedUp
            ]
        );
    }

    public function update(Request $request)
    {
        $validatedData = $request->validate(
            [
                'first_name' => 'required',
                'last_name' => 'required',
                'email' => 'required|email',
                'date_of_birth' => 'required|date',
                'address' => 'required',
                'city' => 'required',
                'county' => 'required',
                'job_title' => 'nullable',
                'phone' => 'required|min:10',
                'education' => 'nullable',
                'english' => 'nullable',
                'other_language' => 'nullable',
                'ms_office' => 'nullable',
                'web' => 'nullable',
            ]
        );

        $this->studentRepository
            ->findOneBy(['id' => $request->get('studentId')])->update(
                [
                    'first_name' => $request->get('first_name'),
                    'last_name' => $request->get('last_name'),
                    'email' => $request->get('email'),
                    'date_of_birth' => $request->get('date_of_birth'),
                    'address' => $request->get('address'),
                    'city' => $request->get('city'),
                    'county' => $request->get('county'),
                    'job_title' => $request->get('job_title'),
                    'phone' => $request->get('phone'),
                    'education' => $request->get('education'),
                    'english' => $request->get('english'),
                    'other_language' => $request->get('other_language'),
                    'ms_office' => $request->get('ms_office'),
                    'web' => $request->get('web'),
                ]
            );

        return redirect('/student_dashboard');
    }

    public function create(Request $request)
    {

        $student = $this->studentRepository->findByAuthId(Auth::id());
        $classStudent = $student->classStudents()->create(
            [
                'student_id' => $request->get('studentId'),
                'class_id' => $request->get('classId'),
                'payment_method' => $request->get('payment_method'),
                'payment_type' => $request->get('payment_type'),
                'payment1' => $request->get('payment1'),
                'payment2' => $request->get('payment2'),
                'payment_full' => $request->get('payment_full'),
            ]
        );
        $classStudent->save();

        return redirect('/student_dashboard');
    }

}
