<?php

namespace App\Http\Controllers;

use App\Models\Content;
use App\Repositories\ActivityRepository;
use App\Repositories\ContentRepository;
use App\Services\ContentService;
use App\Services\SliderService;
use App\Services\TestimonialService;
use Illuminate\Http\Request;

class HomepageController extends Controller
{
    protected $contentRepository;
    protected $sliderService;
    protected $activityRepository;
    protected $testimonialService;
    protected $contentService;

    public function __construct(
        ContentRepository $contentRepository,
        SliderService $sliderService,
        ActivityRepository $activityRepository,
        TestimonialService $testimonialService,
        ContentService $contentService
    ) {
        $this->contentRepository = $contentRepository;
        $this->sliderService = $sliderService;
        $this->activityRepository = $activityRepository;
        $this->testimonialService = $testimonialService;
        $this->contentService = $contentService;
    }

    public function index(Request $request)
    {
        if ($request->get('status')) {
            $this->sliderService->updateActiveStatus($request->get('id'), $request->get('value'));
        }

        if ($request->get('delete_banner_id')) {
            $this->sliderService->deleteBanner($request->get('delete_banner_id'));
        }

        if ($request->get('idt')) {
            $this->testimonialService->updateActiveStatus($request->get('idt'), $request->get('valuet'));
        }

        if ($request->get('delete_testimonial_id')) {
            $this->testimonialService->deleteBanner($request->get('delete_testimonial_id'));
        }

        $contentHomepage = $this->contentRepository->findOneBy(['id' => Content::ID_HOMEPAGE]);
        $contentTesters = $this->contentRepository->findOneBy(['id' => Content::ID_TESTERS]);
        $contentCompanies = $this->contentRepository->findOneBy(['id' => Content::ID_COMPANIES]);
        $sliderInformation = $this->sliderService->allOrderedBy('created');
        $firstActivity = $this->activityRepository->findOneBy(['id' => 1]);
        $testimonials = $this->testimonialService->allOrderedBy('created_on');

        return view('homepage')->with([
            'contentHomepage' => $contentHomepage,
            'contentTesters' => $contentTesters,
            'contentCompanies' => $contentCompanies,
            'sliderInformation' => $sliderInformation,
            'activity' => $firstActivity,
            'testimonials' => $testimonials,
        ]);
    }

    public function getBlankIndex()
    {
        return view('hp');
    }

    public function update(Request $request)
    {
        $requestData = $request->all();

        if ($request->get('classes')) {
            $this->activityRepository
                ->findOneBy(['id' => 1])
                ->update([
                    'followers' => $request->get('followers'),
                    'classes' => $request->get('classes'),
                    'graduates' => $request->get('graduates'),
                    'recommandations' => $request->get('recommandations')
                ]);
        }

        $this->contentService->updateContents($requestData);

        return redirect()->route('homepage');
    }
}
