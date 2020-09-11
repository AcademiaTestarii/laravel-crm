<?php

namespace App\Http\Controllers;

use App\Repositories\ContentRepository;
use Illuminate\Http\Request;

class ContentController extends Controller
{
    protected $contentRepository;

    public function __construct(ContentRepository $contentRepository)
    {
        $this->contentRepository = $contentRepository;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $content = null;

        if ($request->get('id')) {
            $content = $this->contentRepository->findOneBy(['id' => $request->get('id')]);
        }

        return view('content')->with([
            'content' => $content
        ]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request)
    {
        $contentId = $request->get('id');

        if (!$contentId) {
            $contentId = $this->contentRepository->create([])->getId();
        }

        $this->contentRepository
            ->findOneBy(['id' => $contentId])
            ->update([
                'name' => $request->get('name'),
                'position' => $request->get('position'),
                'testimonial' => $request->get('testimonial'),
                'class' => $request->get('class'),
            ]);

        return redirect()->route('content', ['id' => $contentId]);
    }
}
