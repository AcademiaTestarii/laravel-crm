<?php

namespace App\Http\Controllers;

use App\Repositories\SliderRepository;
use App\Services\SliderService;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    protected $sliderRepository;

    public function __construct(SliderRepository $sliderRepository)
    {
        $this->sliderRepository = $sliderRepository;
    }

    public function index(Request $request)
    {
        $slider = null;

        if ($request->get('id')) {
            $slider = $this->sliderRepository->findOneBy(['id' => $request->get('id')]);
        }

        return view('slider_edit')->with(['slider' => $slider]);
    }
}
