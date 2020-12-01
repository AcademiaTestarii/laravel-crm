<?php

namespace App\Http\Controllers;

use App\Constants\ContentConstants;
use App\Models\MainClass;
use App\Services\ClassSignupService;
use Illuminate\Http\Request;

class ClassSignupController
{
    protected $classSignupService;
    protected $request;

    public function __construct(
        ClassSignupService $classSignupService,
        Request $request
    ) {
        $this->classSignupService = $classSignupService;
        $this->request = $request;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Exception
     */
    protected function __invoke(Request $request, MainClass $mainClass)
    {
        $authId = $request->user()->id;
        $mainClassId = $this->request->input('id');
        $classId = $this->request->input('id');

        $signupData = $this->classSignupService->getSignupData($request->input('main_class_id'), $request->user()->id, $request->input('class_id'), ContentConstants::TERMS_OF_SERVICE);

        return view('class_signup_form')->with([
            'signupData' => $signupData,
        ]);
    }
}
