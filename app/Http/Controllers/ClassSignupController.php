<?php

namespace App\Http\Controllers;

use App\Constants\ContentConstants;
use App\Repositories\ClassStudentRepository;
use App\Repositories\ContentRepository;
use App\Repositories\MainClassRepository;
use App\Repositories\StudentRepository;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ClassSignupController extends Controller
{
    private $request;
    private $mainClassRepository;
    private $studentRepository;
    private $classStudentRepository;
    private $contentRepository;

    public function __construct(
        Request $request,
        MainClassRepository $mainClassRepository,
        StudentRepository $studentRepository,
        ClassStudentRepository $classStudentRepository,
        ContentRepository $contentRepository
    )
    {
        $this->request                = $request;
        $this->mainClassRepository    = $mainClassRepository;
        $this->studentRepository      = $studentRepository;
        $this->classStudentRepository = $classStudentRepository;
        $this->contentRepository      = $contentRepository;
    }

    public function classSignup()

    {
        $selectedMainClass = null;
        $query             = [];
        $student           = $this->studentRepository->findOneBy(['id' => 1]);
        $signedUpStudent   = $student->count() > 0 ? true : false;


        if ($this->request->get('id')) {
            $query['main_class_id'] = [
                'value'    => $this->request->get('id'),
                'operator' => '=',
            ];

            $selectedMainClass = $this->mainClassRepository->findOneBy(['id' => $this->request->get('id')]);


        }


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

        $students                     = $this->studentRepository->allOrderedByActiveAndName();

        $classStudent                 = $this->classStudentRepository->findOneBy(['class_id' => $this->request->get('class'), 'student_id' => $this->request->get('delete')]);
        $signupData['termsOfService'] = $this->contentRepository->getContentData(ContentConstants::TERMS_OF_SERVICE);
        $mainClass = $this->mainClassRepository->findOneBy(['id' => 1]);
        return view('class_signup_form')->with(
            [
                'selectedMainClass' => $selectedMainClass,
                'mainClasses'       => $mainClasses,
                'mainClass'       => $mainClass,
                'students'          => $students,
                'student'          => $student,
                'classStudent'      => $classStudent,
                'signedUpStudent'   => $signedUpStudent,

            ]
        );
    }
}
