<?php

namespace App\Http\Controllers;

use App\Models\Content;
use App\Repositories\ActivityRepository;
use App\Repositories\ContentRepository;
use App\Repositories\SliderRepository;
use App\Repositories\TestimonialRepository;
use Illuminate\Http\Request;


class HomepageController extends Controller
{
    protected $contentRepository;
    protected $sliderRepository;
    protected $activityRepository;
    protected $testimonialRepository;

    public function __construct(
        ContentRepository $contentRepository,
        SliderRepository $sliderRepository,
        ActivityRepository $activityRepository,
        TestimonialRepository $testimonialRepository
    ) {
        $this->contentRepository = $contentRepository;
        $this->sliderRepository = $sliderRepository;
        $this->activityRepository = $activityRepository;
        $this->testimonialRepository = $testimonialRepository;
    }

    public function index(Request $request)
    {
        if ($request->get('status')) {
            $this->sliderRepository
                ->findOneBy([
                    'id' => $request->get('id')
                ])
                ->update([
                    'active' => ($request->get('value') == 1) ? 0 : 1
                ]);
        }

        if ($request->get('delete_banner')) {
            $this->sliderRepository
                ->findOneBy([
                    'id' => $request->get('delete_banner')
                ])
                ->delete();
        }

        if ($request->get('idt')) {
            $this->testimonialRepository
                ->findOneBy([
                    'id' => $request->get('idt')
                ])
                ->update([
                    'is_active' => ($request->get('valuet') == 1) ? 0 : 1
                ]);
        }

        if ($request->get('delete_testimonial')) {
            $this->testimonialRepository
                ->findOneBy([
                    'id' => $request->get('delete_testimonial')
                ])
                ->delete();
        }

        $contentHomepage = $this->contentRepository->findOneBy(['id' => Content::ID_HOMEPAGE]);
        $contentTesters = $this->contentRepository->findOneBy(['id' => Content::ID_TESTERS]);
        $contentCompanies = $this->contentRepository->findOneBy(['id' => Content::ID_COMPANIES]);
        $sliderInformation = $this->sliderRepository->allOrderedBy('created');
        $firstActivity = $this->activityRepository->findOneBy(['id' => 1]);
        $testimonials = $this->testimonialRepository->allOrderedBy('created_on');

        return view('homepage')->with([
            'contentHomepage' => $contentHomepage,
            'contentTesters' => $contentTesters,
            'contentCompanies' => $contentCompanies,
            'sliderInformation' => $sliderInformation,
            'activity' => $firstActivity,
            'testimonials' => $testimonials,
        ]);
    }
}
