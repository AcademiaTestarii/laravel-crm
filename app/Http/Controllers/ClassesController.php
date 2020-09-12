<?php

namespace App\Http\Controllers;

use App\Repositories\ClassesRepository;
use Illuminate\Http\Request;

class ClassesController extends Controller
{
    protected $classesRepository;

    public function __construct(ClassesRepository $classGroupRepository)
    {
        $this->classesRepository = $classGroupRepository;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $classes = null;

        if ($request->get('id')) {
            $classes = $this->classesRepository->findOneBy(['id' => $request->get('id')]);
        }

        return view('classes')->with([
            'classes' => $classes
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
