<?php

namespace App\Services;

use App\Models\Classes;
use App\Models\MainClass;
use App\Repositories\ClassesRepository;
use App\Repositories\MainClassRepository;
use Carbon\Carbon;
use Illuminate\Support\Facades\App;

class ClassService
{
    protected $mainClassRepository;

    public function __construct(MainClassRepository $mainClassRepository)
    {
        $this->mainClassRepository = $mainClassRepository;
    }

    public function update(Classes $class, $request)
    {
        $registrationDates = explode(',', $request->get('deployment'));

        $class->update([
            'title' => $request->get('title'),
            'short_description' => $request->get('short_description'),
            'description' => $request->get('description'),
            'registration_start_date' => (new Carbon($registrationDates[0]))->toDateString(),
            'registration_end_date' => (new Carbon($registrationDates[count($registrationDates) - 1]))->toDateString(),
            'students' => $request->get('students'),
            'price' => $request->get('price'),
            'discount_price' => $request->get('discount_price'),
            'for_whom_description' => $request->get('for_whom_description'),
            'about_description' => $request->get('about_description'),
            'cost_description' => $request->get('cost_description'),
            'resources_description' => $request->get('resources_description'),
            'structure_description' => $request->get('structure_description'),
            'requirements_description' => $request->get('requirements_description'),
            'early_description' => $request->get('early_description'),
            'loyality_description' => $request->get('loyality_description'),
            'friends_description' => $request->get('friends_description'),
            'discount_description' => $request->get('discount_description'),
            'schedule' => $request->get('schedule'),
            'weekend' => ($request->get('weekend')) ? 1 : 0,
            'is_active' => ($request->get('active')) ? 1 : 0,
            'is_planned' => ($request->get('planned')) ? 1 : 0,
            'is_bucharest_located' => ($request->get('bucharest')) ? 1 : 0,
            'deployment' => $request->get('deploymentCourse'),
            'image' => ($request->file('image')) ? $request->file('image')->getClientOriginalName() : $class->image,
            'schedule_pdf' => ($request->file('filepdf')) ? $request->file('filepdf')->getClientOriginalName() : $class->schedule_pdf,
        ]);

        $class->classTrainer()->delete();
        $class->classTrainer()->create([
            'trainer_id' => $request->get('trainer')
        ]);

        $class->classDates()->delete();

        foreach ($registrationDates as $registrationDate) {
            $class->classDates()->create([
                'date' => (new Carbon($registrationDate))->toDateString(),
            ]);
        }

        if ($request->file('image')) {
            $file = $request->file('image');
            $file->storeAs('classes', $request->file('image')->getClientOriginalName(), ['disk' => 'storage']);
        }

        if ($request->file('filepdf')) {
            $file = $request->file('filepdf');
            $file->storeAs('documents', $request->file('filepdf')->getClientOriginalName(), ['disk' => 'storage']);
        }

        return $class;
    }

    public function create($request)
    {
       // dump($request->all()); exit;
        $classRepository = App::make(ClassesRepository::class);
        $registrationDates = explode(',', $request->get('deployment'));

        $mainTitle = $request->get('title_main');

        $mainClass = $this->mainClassRepository->create([
            'title' => $mainTitle,
            'is_active' => 1,
            'order' => MainClass::max('order') + 1,
            'is_new' => 1,
            'url_string_short' => strtolower(str_replace(' ', '-', $mainTitle)),
            'url_string_full' => strtolower(str_replace(' ', '-', $mainTitle)) . '.html',
        ]);

        $class = $classRepository->create([
            'main_class_id' => ($request->get('main_class_id')) ? $request->get('main_class_id') : $mainClass->id,
            'title' => $request->get('title'),
            'short_description' => $request->get('short_description'),
            'description' => $request->get('description'),
            'registration_start_date' => (new Carbon($registrationDates[0]))->toDateString(),
            'registration_end_date' => (new Carbon($registrationDates[count($registrationDates) - 1]))->toDateString(),
            'students' => $request->get('students'),
            'price' => $request->get('price'),
            'discount_price' => $request->get('discount_price'),
            'for_whom_description' => $request->get('for_whom_description'),
            'about_description' => $request->get('about_description'),
            'cost_description' => $request->get('cost_description'),
            'resources_description' => $request->get('resources_description'),
            'structure_description' => $request->get('structure_description'),
            'requirements_description' => $request->get('requirements_description'),
            'early_description' => $request->get('early_description'),
            'loyality_description' => $request->get('loyality_description'),
            'friends_description' => $request->get('friends_description'),
            'discount_description' => $request->get('discount_description'),
            'schedule' => $request->get('schedule'),
            'weekend' => ($request->get('weekend')) ? 1 : 0,
            'is_active' => ($request->get('active')) ? 1 : 0,
            'is_planned' => ($request->get('planned')) ? 1 : 0,
            'is_bucharest_located' => ($request->get('bucharest')) ? 1 : 0,
            'deployment' => $request->get('deploymentCourse'),
            'image' => ($request->file('image'))
                ? ($request->file('image')->getClientOriginalName())
                : (($request->get('image')) ? $request->get('image') : null),

            'schedule_pdf' => ($request->file('filepdf'))
                ? ($request->file('filepdf')->getClientOriginalName())
                : (($request->get('filepdf')) ? $request->get('filepdf') : null),
        ]);

        $class->classTrainer()->create([
            'trainer_id' => $request->get('trainer')
        ]);

        foreach ($registrationDates as $registrationDate) {
            $class->classDates()->create([
                'date' => (new Carbon($registrationDate))->toDateString(),
            ]);
        }

        if ($request->file('image')) {
            $file = $request->file('image');
            $file->storeAs('classes', $request->file('image')->getClientOriginalName(), ['disk' => 'storage']);
        }

        if ($request->file('filepdf')) {
            $file = $request->file('filepdf');
            $file->storeAs('documents', $request->file('filepdf')->getClientOriginalName(), ['disk' => 'storage']);
        }

        return $class;
    }
}
