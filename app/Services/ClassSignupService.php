<?php

namespace App\Services;

use App\Repositories\ClassesRepository;
use App\Repositories\ClassStudentRepository;
use App\Repositories\MainClassRepository;
use App\Repositories\ContentRepository;

class ClassSignupService
{
    protected $mainClassRepository;
    protected $classesRepository;
    protected $classStudentRepository;
    protected   $contentRepository;

    public function __construct(MainClassRepository $mainClassRepository, ClassesRepository $classesRepository, ClassStudentRepository $classStudentRepository, ContentRepository $contentRepository)
    {
        $this->mainClassRepository = $mainClassRepository;
        $this->classesRepository = $classesRepository;
        $this->classStudentRepository = $classStudentRepository;
        $this->contentRepository = $contentRepository;
    }

    public function getSignupData(int $mainClassId, int $studentId, int $classId, string $pageType)
    {
        $mainClasses = $this->mainClassRepository->getOrdered();
        $mainClass = $this->mainClassRepository->getById($mainClassId);

        $classesByStartDate = $this->classesRepository->orderByStartDate($mainClassId);

        $student = $this->classStudentRepository->getClassStudentData($studentId, $classId);
        $signedUp = $student->count() > 0;

        $termsOfService = $this->contentRepository->getContentData($pageType);

        $signupData = [];
        $signupData['student'] = $student;
        $signupData['mainClasses'] = $mainClasses;
        $signupData['mainClass'] = $mainClass;
        $signupData['classesByStartDate'] = $classesByStartDate;
        $signupData['signedUp'] = $signedUp;
        $signupData['termsOfService'] = $termsOfService;

        return $signupData;
    }
}
