<?php

namespace App\Http\Controllers;

use App\Repositories\TrainerRepository;
use App\Services\TrainerService;
use Illuminate\Http\Request;

class TrainerController extends Controller
{
    protected $trainerRepository;
    protected $trainerService;

    public function __construct(TrainerRepository $trainerRepository, TrainerService $trainerService)
    {
        $this->trainerRepository = $trainerRepository;
        $this->trainerService = $trainerService;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        //todo move to separate route
        if ($request->get('delete')) {
            $this->trainerRepository
                ->findOneBy(['id' => $request->get('delete')])
                ->delete();

            return redirect()->route('trainers');
        }

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
        $trainer = $this->trainerService->update($request);

        return redirect()->route('trainer', ['id' => $trainer->getId()]);
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
