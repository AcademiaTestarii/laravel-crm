<?php

namespace App\Http\Controllers;

use App\Models\Content;
use App\Repositories\ActivityRepository;
use App\Repositories\ContentRepository;
use App\Repositories\SliderRepository;

class HomepageController extends Controller
{
    protected $contentRepository;
    protected $sliderRepository;
    protected $activityRepository;

    public function __construct(
        ContentRepository $contentRepository,
        SliderRepository $sliderRepository,
        ActivityRepository $activityRepository
    ) {
        $this->contentRepository = $contentRepository;
        $this->sliderRepository = $sliderRepository;
        $this->activityRepository = $activityRepository;
    }

    public function index()
    {
        $contentHomepage = $this->contentRepository->findOneBy(['id' => Content::ID_HOMEPAGE]);
        $contentTesters = $this->contentRepository->findOneBy(['id' => Content::ID_TESTERS]);
        $sliderInformation = $this->sliderRepository->allOrderedBy('created');
        $firstActivity = $this->activityRepository->findOneBy(['id' => 1]);

        return view('homepage')->with([
            'contentHomepage' => $contentHomepage,
            'contentTesters' => $contentTesters,
            'sliderInformation' => $sliderInformation,
            'activity' => $firstActivity
        ]);
    }
}
