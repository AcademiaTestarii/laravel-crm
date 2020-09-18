<?php

namespace App\Http\Controllers;

use App\Repositories\TrainerRepository;
use Illuminate\Http\Request;

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
        /* if ($request->file('image')) {
             $file = $request->file('image');
             $file->storeAs('slider', $request->file('image')->getClientOriginalName(), ['disk' => 'storage']);
         }*/

        $trainerId = $request->get('id');

        if (!$trainerId) {
            $trainerId = $this->trainerRepository->create([])->getId();
        }


        /*   $this->trainerRepository
               ->findOneBy(['id' => $trainerId])
               ->update([
                   'title' => $request->get('title'),
                   'description1' => $request->get('description1'),
                   'description2' => $request->get('description2'),
                   'link' => $request->get('link'),
                   'active' => ($request->get('active') == 'on') ? 1 : 0,
                   'button' => $request->get('button'),
                   'image' => ($request->file('image')) ? $request->file('image')->getClientOriginalName() : null,
               ]);*/

        $trainer = null;

        return view('trainer')->with([
            'trainer' => $trainer
        ]);
    }
}
