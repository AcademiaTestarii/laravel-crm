<?php

namespace App\Repositories;

use App\Models\Blog;

class BlogRepository extends Repository
{
    protected $model;

    public function __construct(Blog $blog)
    {
        $this->model = $blog;
    }
}
