<?php

namespace App\Http\Controllers;

use App\Constants\ContentConstants;
use App\Services\ClassSignupService;
use Illuminate\Http\Request;

class ClassSignupController extends Controller
{
    protected $classSignupService;

    public function __construct(
        ClassSignupService $classSignupService
    ) {
        $this->classSignupService = $classSignupService;
    }

    protected function classSignup (Request $request)
    {
        $signupData = $this->classSignupService->getSignupData(1, 53, 39, ContentConstants::TERMS_OF_SERVICE);

        return view('class_signup_form')->with([
            'signupData' => $signupData,
        ]);
    }
}
