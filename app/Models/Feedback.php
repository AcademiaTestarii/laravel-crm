<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'feedback';
    protected $hidden = ['id'];

    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function class()
    {
        return $this->belongsTo(Classes::class, 'class_id');
    }

    public function getLink()
    {
        return $this->getAttribute('link');
    }

    public function getScore()
    {
        return $this->getAttribute('score') * 10;
    }

    public function getOrganizationJiraZephyrPlus()
    {
        return $this->getAttribute('organization_jira_zephyr_plus');
    }

    public function getOrganizationJiraZephyrMinus()
    {
        return $this->getAttribute('organization_jira_zephyr_minus');
    }

    public function getTestCasesPlus()
    {
        return $this->getAttribute('test_cases_plus');
    }

    public function getTestCasesMinus()
    {
        return $this->getAttribute('test_cases_minus');
    }

    public function getDefectsPlus()
    {
        return $this->getAttribute('defects_plus');
    }

    public function getDefectsMinus()
    {
        return $this->getAttribute('defects_minus');
    }

    public function getTraceabilityPlus()
    {
        return $this->getAttribute('traceability_plus');
    }

    public function getTraceabilityMinus()
    {
        return $this->getAttribute('traceability_minus');
    }

    public function getGrantedOn()
    {
        return (new Carbon($this->getAttribute('granted_on')));
    }
}
