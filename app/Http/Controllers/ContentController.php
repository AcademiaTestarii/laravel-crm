<?php

namespace App\Http\Controllers;

use App\Repositories\ContentRepository;
use App\Repositories\SubcontentRepository;
use Illuminate\Http\Request;

class ContentController extends Controller
{
    protected $contentRepository;
    protected $subcontentRepository;

    public function __construct(ContentRepository $contentRepository, SubcontentRepository $subcontentRepository)
    {
        $this->contentRepository = $contentRepository;
        $this->subcontentRepository = $subcontentRepository;
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

        return redirect()->route('content', ['id' => $contentId]);
    }
}
