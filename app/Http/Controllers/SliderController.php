<?php

namespace App\Http\Controllers;

use App\Repositories\SliderRepository;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class SliderController extends Controller
{
    protected $sliderRepository;

    public function __construct(SliderRepository $sliderRepository)
    {
        $this->sliderRepository = $sliderRepository;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $slider = null;

        if ($request->get('id')) {
            $slider = $this->sliderRepository->findOneBy(['id' => $request->get('id')]);
        }

        return view('slider')->with(['slider' => $slider]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request)
    {
        if ($request->file('image')) {
            $image = $request->file('image');
            $imageName = $image->getClientOriginalName();

            $destinationPath = public_path('/slider');
            $img = Image::make($image->path());
            $img->resize(1920, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save($destinationPath.'/'.$imageName);
        }

        $sliderId = $request->get('id');

        if(!$sliderId) {
            $sliderId = $this->sliderRepository->create([])->getId();
        }

        $this->sliderRepository
            ->findOneBy(['id' => $sliderId])
            ->update([
                'title' => $request->get('title'),
                'description1' => $request->get('description1'),
                'description2' => $request->get('description2'),
                'link' => $request->get('link'),
                'active' => ($request->get('active') == 'on') ? 1 : 0,
                'button' => $request->get('button'),
                'image' => ($request->file('image')) ? $imageName : null,
            ]);

        return redirect()->route('slider', ['id' => $sliderId]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function removeImage(Request $request)
    {
        $this->sliderRepository
            ->findOneBy(['id' => $request->get('id')])
            ->update([
                'image' => null
            ]);

        return redirect()->route('slider', ['id' => $request->get('id')]);
    }
}
