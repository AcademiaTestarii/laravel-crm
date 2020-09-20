<?php

namespace App\Http\Controllers;

use App\Repositories\BlogRepository;
use Carbon\Carbon;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    protected $blogRepository;

    public function __construct(BlogRepository $blogRepository)
    {
        $this->blogRepository = $blogRepository;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        if ($request->get('delete')) {
            $this->blogRepository
                ->findOneBy(['id' => $request->get('delete')])
                ->delete();
        }

        if ($request->get('state')) {
            $this->blogRepository
                ->findOneBy(['id' => $request->get('id')])
                ->update([
                    'is_active' => $request->get('state')
                ]);
        }

        $blogNews = $this->blogRepository->allOrderedBy('added_on', 'DESC');

        return view('blog')->with([
            'blogNews' => $blogNews
        ]);
    }

    public function getBlogData()
    {
        return view('blog_add');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function add(Request $request)
    {
        $blog = $this->blogRepository
            ->create([
                'title' => $request->get('title'),
                'text' => $request->get('short_description'),
                'keywords' => $request->get('keywords'),
                'date' => (new Carbon($request->get('date')))->format("Y-m-d"),
                'added_on' => (new Carbon())->toDateTimeString(),
                'is_active' => ($request->get('active')) ? 1 : 0
            ]);

        return redirect()->route('blog', ['id' => $blog->getId()]);
    }

    public function getBlog($blogId)
    {
        $blog = $this->blogRepository->findOneBy(['id' => $blogId]);

        return view('blog_edit')->with([
            'blog' => $blog
        ]);
    }

    public function update($blogId, Request $request)
    {
        $this->blogRepository
            ->findOneBy(['id' => $blogId])
            ->update([
                'title' => $request->get('title'),
                'text' => $request->get('short_description'),
                'keywords' => $request->get('keywords'),
                'date' => (new Carbon($request->get('date')))->format("Y-m-d"),
                'added_on' => (new Carbon())->toDateTimeString(),
                'is_active' => ($request->get('is_active')) ? 1 : 0
            ]);

        return redirect()->route('blog', ['id' => $blogId]);
    }

}
