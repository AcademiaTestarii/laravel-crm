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
        $selectedMainClass = null;
        $filterMainClasses = $mainClasses = $this->mainClassRepository->allOrderedBy('order');

        $signedUpCount = $this->classStudentRepository->count($request->get('id'));
        $classStudents = $this->classesRepository->getStudentsValue();
        $available     = $classStudents - $signedUpCount;

        $query = [];


        if ($request->get('id')) {
            $query['main_class_id'] = [
                'value'    => $request->get('id'),
                'operator' => '=',
            ];
        }

        if ($request->get('start')) {
            $query['registration_start_date'] = [
                'value'    => (new  Carbon($request->get('start')))->format("Y-m-d"),
                'operator' => '>=',
            ];
        }

        if ($request->get('end')) {
            $query['registration_end_date'] = [
                'value'    => (new Carbon($request->get('end')))->format("Y-m-d"),
                'operator' => '<=',
            ];
        }


        if ($request->get('id')) {
            $selectedMainClass = $this->mainClassRepository->findOneBy(['id' => $request->get('id')]);
        }

        $mainClasses = $this->mainClassRepository->findAllWithRelationsBy('classes', $query);

        foreach ($mainClasses as $mainClass) {
            foreach ($mainClass->classes as $key => $class) {
                if ($request->get('id')) {
                    if ($class->getMainClassId() != $request->get('id')) {
                        $mainClass->classes->forget($key);
                    }
                }

                if ($request->get('start')) {
                    if ($class->getRegistrationStartDate()->format("Y-m-d") <= (new  Carbon($request->get('start')))->format("Y-m-d")
                    ) {
                        $mainClass->classes->forget($key);
                    }
                }

                if ($request->get('end')) {
                    if ($class->getRegistrationEndDate()->format("Y-m-d") >= (new  Carbon($request->get('end')))->format("Y-m-d")
                    ) {
                        $mainClass->classes->forget($key);
                    }
                }

                if ($request->get('status')) {
                    $status = $request->get('status');

                    if ($status == 2) {
                        if ($class->getRegistrationStartDate()->format("Y-m-d") < (new  Carbon())->format("Y-m-d")
                        ) {
                            $mainClass->classes->forget($key);
                        }
                    }

                    if ($status == 3) {
                        if ($class->getRegistrationStartDate()->format("Y-m-d") > (new  Carbon())->format("Y-m-d")
                        ) {
                            $mainClass->classes->forget($key);
                        }
                    }
                }
            }
        }

        return view('students.catalog')->with(
            [
                'selectedMainClass' => $selectedMainClass,
                'filterMainClasses' => $filterMainClasses,
                'mainClasses'       => $mainClasses,
                'available'         => $available,
            ]
        );
    }

    public function get($classId)

    {

        $class    = Classes::findOrFail($classId);
        $trainers = $this->trainerRepository->allOrderedBy('name');

        return view('students.class_description')->with(
            [
                'class'    => $class,
                'trainers' => $trainers,
            ]
        );
    }


    public function classSignup($id)

    {
        $student = $this->studentRepository->findByAuthId(Auth::id());
        $class   = Classes::findOrFail($id);

        return view('students.signup')->with(
            [
                'class'   => $class,
                'student' => $student,
            ]
        );
    }

    public function updateAndCreate($id, Request $request)
    {
        $student                 = $this->studentRepository->findByAuthId(Auth::id());
        $class = Classes::findOrFail($id);

        $student->first_name     = request('first_name');
        $student->last_name      = request('last_name');
        $student->email          = request('email');
        $student->date_of_birth  = request('date_of_birth');
        $student->address        = request('address');
        $student->city           = request('city');
        $student->county         = request('county');
        $student->job_title      = request('job_title');
        $student->phone          = request('phone');
        $student->education      = request('education');
        $student->english        = request('english');
        $student->other_language = request('other_language');
        $student->ms_office      = request('ms_office');
        $student->web            = request('web');

        $student->update();

        $classStudent             = new ClassStudent();

        $classStudent->student_id = $student->id;
        $classStudent->class_id   = $class->id;
        $classStudent->payment_method   = request('payment_method');
        $classStudent->payment_type   = request('payment_type');
        $classStudent->payment1   = request('payment1');
        $classStudent->payment2   = request('payment2');
        $classStudent->payment_full   = request('payment_full');


        $classStudent->save();


        return redirect('/student_dashboard');
    }

}
