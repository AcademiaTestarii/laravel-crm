<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Classes extends Model
{
    use SoftDeletes;

    protected $table = 'classes';
    protected $guarded = ['id'];

    public function mainClass()
    {
        return $this->belongsTo(MainClass::class);
    }

    public function classStudents()
    {
        return $this->hasMany(ClassStudent::class, 'class_id');
    }

    public function classDates()
    {
        return $this->hasMany(ClassDate::class, 'class_id');
    }

    public function classTrainer()
    {
        return $this->hasOne(ClassTrainer::class, 'class_id');
    }

    public function getStudents()
    {
        return $this->getAttribute('students');
    }

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getMainClassId()
    {
        return $this->getAttribute('main_class_id');
    }

    public function getTitle()
    {
        return $this->getAttribute('title');
    }

    public function getPrice()
    {
        return $this->getAttribute('price');
    }

    public function getDiscountPrice()
    {
        return $this->getAttribute('discount_price');
    }

    public function getForWhomDescription()
    {
        return $this->getAttribute('for_whom_description');
    }

    public function getAboutDescription()
    {
        return $this->getAttribute('about_description');
    }

    public function getStructureDescription()
    {
        return $this->getAttribute('structure_description');
    }

    public function getResourcesDescription()
    {
        return $this->getAttribute('resources_description');
    }

    public function getRequirementsDescription()
    {
        return $this->getAttribute('requirements_description');
    }

    public function getEarlyDescription()
    {
        return $this->getAttribute('early_description');
    }

    public function getLoyalityDescription()
    {
        return $this->getAttribute('loyality_description');
    }

    public function getFriendsDescription()
    {
        return $this->getAttribute('friends_description');
    }

    public function getDiscountDescription()
    {
        return $this->getAttribute('discount_description');
    }

    public function getSchedule()
    {
        return $this->getAttribute('schedule');
    }

    public function getCostDescription()
    {
        return $this->getAttribute('cost_description');
    }

    public function getShortDescription()
    {
        return $this->getAttribute('short_description');
    }

    public function getDescription()
    {
        return $this->getAttribute('description');
    }

    public function getDeployment()
    {
        return $this->getAttribute('deployment');
    }

    public function getImage()
    {
        if (!is_null($this->getAttribute('image'))) {
            return asset('/') . 'classes/' . $this->getAttribute('image');
        }

        return null;
    }

    public function getSchedulePdf()
    {
        if (!is_null($this->getAttribute('schedule_pdf'))) {
            return asset('/') . 'documents/' . $this->getAttribute('schedule_pdf');
        }

        return null;
    }

    public function getRegistrationStartDate()
    {
        if (is_null($this->getAttribute('registration_start_date'))) {
            return null;
        }
        return (new Carbon($this->getAttribute('registration_start_date')));
    }

    public function getRegistrationEndDate()
    {
        if (is_null($this->getAttribute('registration_end_date'))) {
            return null;
        }
        return (new Carbon($this->getAttribute('registration_end_date')));
    }

    public function getWeekdaysSchedule() {
        return $this->getAttribute('weekdays_schedule');
    }

    public function getWeekendSchedule() {
        return $this->getAttribute('weekend_schedule');
    }

    public function getBugdet()
    {
        return number_format($this->getAttribute('students') * $this->getAttribute('price'));
    }

    public function getRealBugdet()
    {
        if ($this->classStudents->isNotEmpty()) {
            return number_format($this->classStudents->count() * $this->getAttribute('price'));
        }

        return 0;
    }

    public function getOccupancyRate()
    {
        if ($this->classStudents->isNotEmpty()) {
            return number_format($this->classStudents->count() / $this->getAttribute('students') * 100, 0);
        }
        return 0;
    }

    public function isInWeekend()
    {
        if ($this->getAttribute('weekend') == 1) {
            return true;
        };

        return false;
    }

    public function isPlanned()
    {
        if ($this->getAttribute('is_planned') == 1) {
            return true;
        };

        return false;
    }

    public function isActive()
    {
        if ($this->getAttribute('is_active') == 1) {
            return true;
        };

        return false;
    }

    public function isBucharestLocated()
    {
        if ($this->getAttribute('is_bucharest_located') == 1) {
            return true;
        };

        return false;
    }
}
