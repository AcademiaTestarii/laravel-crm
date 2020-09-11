<?php

namespace App\Http\Controllers;

use App\Repositories\MainClassRepository;
use App\Repositories\TestimonialRepository;
use Illuminate\Http\Request;

class TestimonialController extends Controller
{
    protected $testimonialRepository;
    protected $mainClassRepository;

    public function __construct(TestimonialRepository $testimonialRepository, MainClassRepository $mainClassRepository)
    {
        $this->testimonialRepository = $testimonialRepository;
        $this->mainClassRepository = $mainClassRepository;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $testimonial = null;

        if ($request->get('id')) {
            $testimonial = $this->testimonialRepository->findOneBy(['id' => $request->get('id')]);
        }

        $mainClasses = $this->mainClassRepository->allOrderedBy();

        return view('testimonial_edit')->with([
            'testimonial' => $testimonial,
            'mainClasses' => $mainClasses
        ]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request)
    {
        $testimonialId = $request->get('id');

        if (!$testimonialId) {
            $testimonialId = $this->testimonialRepository->create([])->getId();
        }

        $this->testimonialRepository
            ->findOneBy(['id' => $testimonialId])
            ->update([
                'name' => $request->get('name'),
                'position' => $request->get('position'),
                'testimonial' => $request->get('testimonial'),
                'class' => $request->get('class'),
            ]);

        return redirect()->route('testimonial', ['id' => $testimonialId]);
    }
}
