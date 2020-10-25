<?php

namespace App\Http\Controllers;

use App\Repositories\TrainerRepository;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class TrainerController extends Controller
{
    protected $trainerRepository;

    public function __construct(TrainerRepository $trainerRepository)
    {
        $this->trainerRepository = $trainerRepository;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $trainers = $this->trainerRepository->allOrderedBy('name');

        return view('trainers')->with([
            'trainers' => $trainers
        ]);
    }

    public function getTrainer(Request $request)
    {
        $trainer = null;
        $pageTitle = 'Adauga';

        if ($request->get('id')) {
            $trainer = $this->trainerRepository->findOneBy(['id' => $request->get('id')]);
            $pageTitle = 'Modifica';
        }

        return view('trainer')->with([
            'trainer' => $trainer,
            'pageTitle' => $pageTitle
        ]);
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

            $destinationPath = public_path('/trainers');
            $img = Image::make($image->path());
            $img->resize(350, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save($destinationPath.'/'.$imageName);
        }

        $trainerId = $request->get('id');

        if (!$trainerId) {
            $trainerId = $this->trainerRepository->create([])->getId();
        }

        $trainer = $this->trainerRepository
            ->findOneBy(['id' => $trainerId]);

        $trainer->update([
                'name' => $request->get('name'),
                'phone' => $request->get('phone'),
                'email' => $request->get('email'),
                'linkedin' => $request->get('linkedin'),
                'title' => $request->get('title'),
                'bio' => $request->get('bio'),
                'is_staff' => 0,
                'picture' => ($request->file('image')) ? $imageName : $trainer->picture,
            ]);

        return redirect()->route('trainer', ['id' => $trainerId]);
    }

    public function removeImage(Request $request)
    {
        if ($request->get('id')) {
            $this->trainerRepository
                ->findOneBy(['id' => $request->get('id')])
                ->update([
                    'picture' => null
                ]);
        }

        return redirect()->route('trainer', ['id' => $request->get('id')]);
    }
}
