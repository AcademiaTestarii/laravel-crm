<?php

namespace App\Services;

use App\Repositories\TrainerRepository;
use Illuminate\Support\Facades\Mail;
use Intervention\Image\Facades\Image;

class TrainerService
{
    protected $trainerRepository;

    public function __construct(TrainerRepository $trainerRepository)
    {
        $this->trainerRepository = $trainerRepository;
    }

    public function update($request)
    {
        if ($request->file('image')) {
            $image = $request->file('image');
            $imageName = $image->getClientOriginalName();

            $destinationPath = public_path('/trainers');
            $img = Image::make($image->path());
            $img->resize(350, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save($destinationPath . '/' . $imageName);
        }

        $trainerId = $request->get('id');

        if (!$trainerId) {
            $trainerData = [];

            if (auth()->user()->isTrainerProvider()) {
                $trainerData['trainer_provider_id'] = auth()->user()->trainerProvider->getId();
                $email = $request->get('email');

                Mail::send(
                    'auth/emails/register_trainer',
                    [
                        'email' => $email,
                        'name' => $request->get('name'),
                        'trainerProvider' => auth()->user()->trainerProvider->getName()
                    ],
                    function ($message) use ($email) {
                        $message->from('contact@academiatestarii.ro')
                            ->to($email)
                            ->subject('Confirmare înregistrare pe platforma Academia Testarii');
                    }
                );
            }

            $trainerId = $this->trainerRepository->create($trainerData)->getId();
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

        return $trainer;
    }
}
