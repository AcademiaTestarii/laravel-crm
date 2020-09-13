<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\FeedbackRepository;
use App\Repositories\MainClassRepository;
use App\Repositories\TrainerRepository;
use App\Services\ClassService;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ClassesController extends Controller
{
    protected $classesRepository;
    protected $mainClassRepository;
    protected $trainerRepository;
    protected $classService;
    protected $classStudentRepository;
    protected $feedbackRepository;

    public function __construct(
        ClassesRepository $classGroupRepository,
        MainClassRepository $mainClassRepository,
        TrainerRepository $trainerRepository,
        ClassService $classService,
        ClassStudentRepository $classStudentRepository,
        FeedbackRepository $feedbackRepository
    ) {
        $this->classesRepository = $classGroupRepository;
        $this->mainClassRepository = $mainClassRepository;
        $this->trainerRepository = $trainerRepository;
        $this->classService = $classService;
        $this->classStudentRepository = $classStudentRepository;
        $this->feedbackRepository = $feedbackRepository;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Exception
     */
    public function index(Request $request)
    {
        $selectedMainClass = null;
        $filterMainClasses = $mainClasses = $this->mainClassRepository->allOrderedBy('order');

        $query = [];

        if ($request->get('delete')) {
            $this->classesRepository
                ->findOneBy(['id' => $request->get('delete')])
                ->delete();
        }

        if ($request->get('id')) {
            $query['main_class_id'] = [
                'value' => $request->get('id'),
                'operator' => '='
            ];
        }

        if ($request->get('start')) {
            $query['registration_start_date'] = [
                'value' => (new  Carbon($request->get('start')))->format("Y-m-d"),
                'operator' => '>='
            ];
        }

        if ($request->get('end')) {
            $query['registration_end_date'] = [
                'value' => (new Carbon($request->get('end')))->format("Y-m-d"),
                'operator' => '<='
            ];
        }

        if ($request->get('status')) {
            $status = $request->get('status');
            if ($status == 2) {
                $query['registration_end_date'] = [
                    'value' => (new  Carbon())->format("Y-m-d"),
                    'operator' => '>'
                ];
            }

            if ($status == 3) {
                $query['registration_end_date'] = [
                    'value' => (new  Carbon())->format("Y-m-d"),
                    'operator' => '<'
                ];
            }
        }

        if ($request->get('id')) {
            $selectedMainClass = $this->mainClassRepository->findOneBy(['id' => $request->get('id')]);
        }

        //filter by status
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
                    if ($status == "2") {
                        if ($class->getRegistrationEndDate()->format("Y-m-d") < (new  Carbon())->format("Y-m-d")
                        ) {
                            $mainClass->classes->forget($key);
                        }
                    }

                    if ($status == 3) {
                        if ($class->getRegistrationEndDate()->format("Y-m-d") > (new  Carbon())->format("Y-m-d")
                        ) {
                            $mainClass->classes->forget($key);
                        }
                    }
                }
            }
        }

        return view('classes')->with([
            'selectedMainClass' => $selectedMainClass,
            'filterMainClasses' => $filterMainClasses,
            'mainClasses' => $mainClasses
        ]);
    }

    public function get(Request $request)
    {
        $class = null;
        $pageTitle = 'Adaugare';
        $action = 'add';

        if ($request->get('removeimage')) {
            $this->classesRepository
                ->findOneBy(['id' => $request->get('id')])
                ->update([
                    'image' => null
                ]);
        }

        if ($request->get('removepdf')) {
            $this->classesRepository
                ->findOneBy(['id' => $request->get('id')])
                ->update([
                    'schedule_pdf' => null
                ]);
        }

        if ($request->get('id')) {
            $class = $this->classesRepository->findOneBy(['id' => $request->get('id')]);
            $pageTitle = "Modificare";
            $action = 'edit';
        }

        if ($request->get('duplicate')) {
            $pageTitle = 'Duplicat';
            $action = 'duplicate';
        }

        $trainers = $this->trainerRepository->allOrderedBy('name');

        return view('class')->with([
            'class' => $class,
            'pageTitle' => $pageTitle,
            'trainers' => $trainers,
            'action' => $action
        ]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function update(Request $request)
    {
        if ($request->get('action') == 'edit') {
            $class = $this->classesRepository->findOneBy(['id' => $request->get('id')]);
            $this->classService->update($class, $request);
        }

        if ($request->get('action') == 'add') {
            $class = $this->classService->create($request);
        }

        if ($request->get('action') == 'duplicate') {
            $duplicatedClass = $this->classesRepository->findOneBy(['id' => $request->get('id')]);
            $request->request->add([
                'image' => $duplicatedClass->image,
                'filepdf' => $duplicatedClass->schedule_pdf,
            ]);
            $class = $this->classService->create($request);
        }

        return redirect()->route('class', ['id' => $class->getId()]);
    }

    public function getDetails($classId, Request $request)
    {
        $class = $this->classesRepository->findOneBy(['id' => $classId]);

        if ($request->get('delete')) {
            $this->classStudentRepository->findOneBy([
                'class_id' => $request->get('class'),
                'student_id' => $request->get('delete'),
            ])->delete();
        }

        return view('class_details')->with([
            'class' => $class,
        ]);
    }

    public function getNote(Request $request)
    {
        $classStudent = $this->classStudentRepository->findOneBy([
            'class_id' => $request->get('class'),
            'student_id' => $request->get('student'),
        ]);

        return view('inline_note')->with([
            'classStudent' => $classStudent,
        ]);
    }

    public function getMoveStudent(Request $request)
    {
        $classStudent = $this->classStudentRepository->findOneBy([
            'class_id' => $request->get('class'),
            'student_id' => $request->get('student'),
        ]);

        $mainClasses = $this->mainClassRepository->findAllBy(
            ['is_active' => 1],
            '=',
            'order'
        );

        return view('inline_move_student')->with([
            'classStudent' => $classStudent,
            'mainClasses' => $mainClasses
        ]);
    }

    public function updateDetails(Request $request)
    {
        $class = $this->classesRepository->findOneBy(['id' => $request->get('class')]);
        if ($request->get('note')) {
            $this->classStudentRepository->findOneBy([
                'class_id' => $request->get('class'),
                'student_id' => $request->get('student'),
            ])->update([
                'note' => $request->get('note')
            ]);
        }

        if ($request->get('move_student')) {
            $this->classStudentRepository->findOneBy([
                'class_id' => $request->get('class'),
                'student_id' => $request->get('move_student'),
            ])->update([
                'class_id' => $request->get('new_class')
            ]);
        }

        if ($request->get('grade')) {
            $this->feedbackRepository->create([
                'class_id' => $request->get('class'),
                'student_id' => $request->get('student'),
                'organization_jira_zephyr_plus' => $request->get('organization_jira_zephyr_plus'),
                'organization_jira_zephyr_minus' => $request->get('organization_jira_zephyr_minus'),
                'test_cases_plus' => $request->get('test_cases_plus'),
                'test_cases_minus' => $request->get('test_cases_minus'),
                'defects_plus' => $request->get('defects_plus'),
                'defects_minus' => $request->get('defects_minus'),
                'traceability_plus' => $request->get('traceability_plus'),
                'traceability_minus' => $request->get('traceability_minus'),
                'link' => $this->feedbackRepository->generatePassword(),
            ]);
        }

        return view('class_details')->with([
            'class' => $class,
        ]);
    }
}
