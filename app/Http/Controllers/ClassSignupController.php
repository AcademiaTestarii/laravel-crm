<?php

namespace App\Http\Controllers;

use App\Constants\ContentConstants;
use App\Services\ClassSignupService;
use Illuminate\Http\Request;

class ClassSignupController extends Controller
{
    protected $classSignupService;
    private   $request;

    public function __construct(ClassSignupService $classSignupService, Request $request)
    {
        $this->classSignupService = $classSignupService;
        $this->request = $request;
    }

    protected function classSignup()
    {
        $signupData = $this->classSignupService->getSignupData($this->request->input('main_class_id'), $this->request->input('student_id'), $this->request->input('class_id'), ContentConstants::TERMS_OF_SERVICE);

        return view('class_signup_form')->with(
            [
                'signupData' => $signupData,
            ]
        );
    }
}
