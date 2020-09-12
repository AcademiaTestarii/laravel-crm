<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;
use App\Repositories\MainClassRepository;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClassesController extends Controller
{
    protected $classesRepository;
    protected $mainClassRepository;

    public function __construct(
        ClassesRepository $classGroupRepository,
        MainClassRepository $mainClassRepository
    ) {
        $this->classesRepository = $classGroupRepository;
        $this->mainClassRepository = $mainClassRepository;
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

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request)
    {
        /*$contentId = $request->get('id');

        if (!$contentId) {
            $contentId = $this->contentRepository->create([])->getId();
        }

        $this->contentRepository
            ->findOneBy(['id' => $contentId])
            ->update([
                'title' => $request->get('title'),
                'text' => $request->get('text')
            ]);

        for ($i = 6; $i < 15; $i++) {
            if ($request->get('title_sub_' . $i)) {
                $this->subcontentRepository->findOneBy(['id' => $i])
                    ->update([
                        'title' => $request->get('title_sub_' . $i),
                        'text' => $request->get('text_sub_' . $i)
                    ]);
            }
        }

        return redirect()->route('content', ['id' => $contentId]);*/
    }
}
