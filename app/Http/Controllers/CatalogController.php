<?php

namespace App\Http\Controllers;

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
use App\Constants\ContentConstants;
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

        if ($request->get('delete')) {
            $this->classesRepository
                ->findOneBy(['id' => $request->get('delete')])
                ->delete();
        }

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

        if ($request->get('status')) {
            $status = $request->get('status');

            if ($status == 2) {
                $query['registration_start_date'] = [
                    'value'    => (new  Carbon())->format("Y-m-d"),
                    'operator' => '<',
                ];
            }

            if ($status == 3) {
                $query['registration_start_date'] = [
                    'value'    => (new  Carbon())->format("Y-m-d"),
                    'operator' => '>',
                ];
            }
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

        return view('students.classes_offer')->with(
            [
                'selectedMainClass' => $selectedMainClass,
                'filterMainClasses' => $filterMainClasses,
                'mainClasses'       => $mainClasses,
                'available'         => $available,
            ]
        );
    }

    public function get($classId, Request $request)
    {
        $class    = $this->classesRepository->findOneBy(['id' => $request->get('id')]);
        $trainers = $this->trainerRepository->allOrderedBy('name');

        return view('students.class_offer')->with(
            [
                'class'    => $class,
                'trainers' => $trainers,
            ]
        );
    }

    public function classSignup($classId, Request $request)

    {
        $student         = $this->studentRepository->findByAuthId(Auth::id());
        $signedUpStudent = $student->exists();

        $selectedMainClass = $this->mainClassRepository->findOneBy(['id' => $this->request->get('id')]);

        if ($this->request->get('start')) {
            $query['registration_start_date'] = [
                'value'    => (new  Carbon($this->request->get('start')))->format("Y-m-d"),
                'operator' => '>=',
            ];
        }

        if ($this->request->get('end')) {
            $query['registration_end_date'] = [
                'value'    => (new Carbon($this->request->get('end')))->format("Y-m-d"),
                'operator' => '<=',
            ];
        }

        if ($this->request->get('status')) {
            $status = $this->request->get('status');

            if ($status == 2) {
                $query['registration_start_date'] = [
                    'value'    => (new  Carbon())->format("Y-m-d"),
                    'operator' => '<',
                ];
            }

            if ($status == 3) {
                $query['registration_start_date'] = [
                    'value'    => (new  Carbon())->format("Y-m-d"),
                    'operator' => '>',
                ];
            }
        }


        $mainClasses = $this->mainClassRepository->findAllWithRelationsBy('classes', $query);

        foreach ($mainClasses as $mainClass) {
            foreach ($mainClass->classes as $key => $class) {
                if ($this->request->get('id')) {
                    if ($class->getMainClassId() != $this->request->get('id')) {
                        $mainClass->classes->forget($key);
                    }
                }

                if ($this->request->get('start')) {
                    if ($class->getRegistrationStartDate()->format("Y-m-d") <= (new  Carbon($this->request->get('start')))->format("Y-m-d")
                    ) {
                        $mainClass->classes->forget($key);
                    }
                }

                if ($this->request->get('end')) {
                    if ($class->getRegistrationEndDate()->format("Y-m-d") >= (new  Carbon($this->request->get('end')))->format("Y-m-d")
                    ) {
                        $mainClass->classes->forget($key);
                    }
                }

                if ($this->request->get('status')) {
                    $status = $this->request->get('status');

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

        $students = $this->studentRepository->allOrderedByActiveAndName();

        $classStudent                 = $this->classStudentRepository->findOneBy(['class_id' => $this->request->get('class'), 'student_id' => $this->request->get('delete')]);
        $signupData['termsOfService'] = $this->contentRepository->getContentData(ContentConstants::TERMS_OF_SERVICE);
        $mainClass                    = $this->mainClassRepository->findOneBy(['id' => 1]);

        return view('class_signup_form')->with(
            [
                'selectedMainClass' => $selectedMainClass,
                'mainClasses'       => $mainClasses,
                'mainClass'         => $mainClass,
                'students'          => $students,
                'student'           => $student,
                'classStudent'      => $classStudent,
                'signedUpStudent'   => $signedUpStudent,

            ]
        );
    }

}
