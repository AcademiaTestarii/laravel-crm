<?php

namespace App\Services;

use App\Repositories\TestimonialRepository;

class TestimonialService
{
    protected $testimonialRepository;

    public function __construct(TestimonialRepository $testimonialRepository)
    {
        $this->testimonialRepository = $testimonialRepository;
    }

    public function updateActiveStatus(int $id, $value)
    {
        return $this->testimonialRepository
            ->findOneBy([
                'id' => $id
            ])
            ->update([
                'is_active' => ($value == 1) ? 0 : 1
            ]);
    }

    public function deleteBanner($id)
    {
        return $this->testimonialRepository
            ->findOneBy([
                'id' => $id
            ])
            ->delete();
    }

    public function allOrderedBy(string $column = 'id', string $order = 'ASC')
    {
        return $this->testimonialRepository->allOrderedBy($column, $order);
    }
}
