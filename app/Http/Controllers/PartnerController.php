<?php

namespace App\Http\Controllers;

use App\Repositories\PartnerRepository;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class PartnerController extends Controller
{
    protected $partnerRepository;

    public function __construct(PartnerRepository $partnerRepository)
    {
        $this->partnerRepository = $partnerRepository;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        if ($request->get('delete')) {
            $this->partnerRepository
                ->findOneBy(['id' => $request->get('delete')])
                ->delete();
        }

        $partners = $this->partnerRepository->allOrderedBy('name');

        return view('partners')->with([
            'partners' => $partners
        ]);
    }

    public function getPartner(Request $request)
    {
        $partner = null;
        $pageTitle = 'Adauga';

        if ($request->get('id')) {
            $partner = $this->partnerRepository->findOneBy(['id' => $request->get('id')]);
            $pageTitle = 'Modifica';
        }

        return view('partner')->with([
            'partner' => $partner,
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

            $destinationPath = public_path('/partners');
            $img = Image::make($image->path());
            $img->resize(null, 60, function ($constraint) {
                $constraint->aspectRatio();
            })->save($destinationPath . '/' . $imageName);
        }

        $partnerId = $request->get('id');

        if (!$partnerId) {
            $partnerId = $this->partnerRepository->create([])->getId();
        }

        $partner = $this->partnerRepository
            ->findOneBy(['id' => $partnerId]);

        $partner->update([
            'name' => $request->get('name'),
            'logo' => ($request->file('image')) ? $imageName : $partner->logo,
            'description' => $request->get('description'),
            'url' => $request->get('url')
        ]);

        return redirect()->route('partner', ['id' => $partnerId]);
    }

    public function removeImage(Request $request)
    {
        if ($request->get('id')) {
            $this->partnerRepository
                ->findOneBy(['id' => $request->get('id')])
                ->update([
                    'logo' => null
                ]);
        }

        return redirect()->route('partner', ['id' => $request->get('id')]);
    }
}
