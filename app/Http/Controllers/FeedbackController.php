<?php

namespace App\Http\Controllers;

use App\Repositories\FeedbackRepository;

class FeedbackController extends Controller
{
    protected $feedbackRepository;

    public function __construct(FeedbackRepository $feedbackRepository)
    {
        $this->feedbackRepository = $feedbackRepository;
    }

    public function getDetails($feedbackId)
    {
        $feedback = $this->feedbackRepository->findOneBy(['link' => $feedbackId]);

        return view('feedback')->with([
            'feedback' => $feedback,
        ]);
    }

    public function getCertificateDetails($feedbackId)
    {
        $feedback = $this->feedbackRepository->findOneBy(['link' => $feedbackId]);

        return view('certificate')->with([
            'feedback' => $feedback,
        ]);
    }
}
