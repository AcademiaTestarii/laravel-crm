<?php

namespace App\Http\Controllers;

use App\Models\Content;
use App\Repositories\ActivityRepository;
use App\Repositories\ContentRepository;
use App\Repositories\SliderRepository;
use App\Repositories\TestimonialRepository;

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

    public function index()
    {
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
