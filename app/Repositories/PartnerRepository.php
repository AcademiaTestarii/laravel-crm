<?php

namespace App\Repositories;

use App\Models\Partner;

class PartnerRepository extends Repository
{
    protected $model;

    public function __construct(Partner $partner)
    {
        $this->model = $partner;
    }
}
