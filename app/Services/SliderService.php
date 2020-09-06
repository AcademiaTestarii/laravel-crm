<?php

namespace App\Services;

use App\Repositories\SliderRepository;

class SliderService
{
    protected $sliderRepository;

    /**
     * SliderService constructor.
     * @param SliderRepository $sliderRepository
     */
    public function __construct(SliderRepository $sliderRepository)
    {
        $this->sliderRepository = $sliderRepository;
    }

    public function updateActiveStatus(int $id, $value)
    {
        return $this->sliderRepository
            ->findOneBy([
                'id' => $id
            ])
            ->update([
                'active' => ($value == 1) ? 0 : 1
            ]);
    }

    public function deleteBanner($id)
    {
        return $this->sliderRepository
            ->findOneBy([
                'id' => $id
            ])
            ->delete();
    }

    public function allOrderedBy(string $column = 'id', string $order = 'ASC')
    {
        return $this->sliderRepository->allOrderedBy($column, $order);
    }
}
