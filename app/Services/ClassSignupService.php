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
        $signupData = [];
        $signupData['student'] = $this->classStudentRepository->getClassStudentData($studentId, $classId);
        $signupData['mainClasses'] = $this->mainClassRepository->getOrdered();
        $signupData['mainClass'] = $this->mainClassRepository->getById($mainClassId);
        $signupData['classesByStartDate'] = $this->classesRepository->orderByStartDate($mainClassId);
        $signupData['signedUp'] = $signupData['student']->count() > 0;
        $signupData['termsOfService'] = $this->contentRepository->getContentData($pageType);

        return $signupData;
    }
}
