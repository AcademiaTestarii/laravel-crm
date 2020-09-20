<?php

namespace App\Http\Controllers;

use App\Repositories\BlogRepository;
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

    public function getTrainer(Request $request)
    {
       /* $trainer = null;
        $pageTitle = 'Adauga';

        if ($request->get('id')) {
            $trainer = $this->blogRepository->findOneBy(['id' => $request->get('id')]);
            $pageTitle = 'Modifica';
        }

        return view('trainer')->with([
            'trainer' => $trainer,
            'pageTitle' => $pageTitle
        ]);*/
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request)
    {
    /*    if ($request->file('image')) {
            $file = $request->file('image');
            $file->storeAs('trainers', $request->file('image')->getClientOriginalName(), ['disk' => 'storage']);
        }

        $trainerId = $request->get('id');

        if (!$trainerId) {
            $trainerId = $this->blogRepository->create([])->getId();
        }

        $this->blogRepository
            ->findOneBy(['id' => $trainerId])
            ->update([
                'name' => $request->get('name'),
                'phone' => $request->get('phone'),
                'email' => $request->get('email'),
                'linkedin' => $request->get('linkedin'),
                'title' => $request->get('title'),
                'bio' => $request->get('bio'),
                'is_staff' => 0,
                'picture' => ($request->file('image')) ? $request->file('image')->getClientOriginalName() : null,
            ]);

        return redirect()->route('trainer', ['id' => $trainerId]);*/
    }

    public function removeImage(Request $request)
    {
       /* if ($request->get('id')) {
            $this->blogRepository
                ->findOneBy(['id' => $request->get('id')])
                ->update([
                    'picture' => null
                ]);
        }

        return redirect()->route('trainer', ['id' => $request->get('id')]);*/
    }
}
