<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClassStudent extends Model
{
    public    $timestamps = false;
    protected $table      = 'class_students';
    //protected $guarded = ['id'];
    protected $fillable = [

        'student_id',
        'class_id',
        'payment_method',
        'payment_type',
        'payment1',
        'payment2',
        'payment_full',
    ];

    public function classes()
    {
        return $this->belongsTo(Classes::class, 'class_id', 'id');
    }

    public function student()
    {
        return $this->belongsTo(Student::class, 'student_id', 'id');
    }

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getStudentId()
    {
        return $this->getAttribute('student_id');
    }

    public function getClassId()
    {
        return $this->getAttribute('class_id');
    }

    public function getNote()
    {
        if ($this->getAttribute('note') == '') {
            return null;
        }

        return $this->getAttribute('note');
    }

    public function getPayment1()
    {
        return $this->getAttribute('payment1');
    }

    public function getPayment2()
    {
        return $this->getAttribute('payment2');
    }

    public function getPayment3()
    {
        return $this->getAttribute('payment3');
    }

    public function getPaymentFull()
    {
        return $this->getAttribute('payment_full');
    }

    public function getPaymentStatus(): string
    {
        if ($this->getPayment1() == 0
            && $this->getPayment2() == 0
            && $this->getPaymentFull() == 0
        ) {
            return 'Plata in asteptare';
        }

        if ($this->getPayment1() == 1
            && $this->getPayment2() == 0
            && $this->getPaymentFull() == 0
        ) {
            return 'Rata 1 platita';
        }

        if ($this->getPayment1() == 1
            && $this->getPayment2() == 1
            && $this->getPaymentFull() == 1
        ) {
            return 'Achitat integral';
        }

        return "";
    }
}
