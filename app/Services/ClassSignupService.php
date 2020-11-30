<?php

namespace App\Services;

use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\MainClassRepository;

class ClassSignupService
{
    protected $mainClassRepository;
    protected $classesRepository;
    private $classStudentRepository;

    public function __construct(MainClassRepository $mainClassRepository, ClassesRepository $classesRepository, ClassStudentRepository $classStudentRepository)
    {
        $this->mainClassRepository = $mainClassRepository;
        $this->classesRepository = $classesRepository;
        $this->classStudentRepository = $classStudentRepository;
    }

    public function getSignupData(int $mainClassId, int $authId, int $classId, string $pageType)
    {

        $mainClasses = $this->mainClassRepository->getOrdered();
        $mainClass = $this->mainClassRepository->getById($mainClassId);
        $classesByStartDate = $this->classesRepository->orderByStartDate($mainClassId);
        $studentClassesCount = $this->classStudentRepository->countStudentClasses($authId, $classId);
        $signedUp = false;

        if ($studentClassesCount > 0) {
            $signedUp = true;
        }

        $termsOfService = $this->contentRepository->getContentData($pageType);

        $signupData = [];
        $signupData['$mainClasses'] = $mainClasses;
        $signupData['$mainClass'] = $mainClass;
        $signupData['classesByStartDate'] = $classesByStartDate;
        $signupData['signedUp'] = $signedUp;
        $signupData['termsOfService'] = $termsOfService;

        return $signupData;
    }
}
