<?php

namespace App\Repositories;

use App\Models\BlogImage;

class BlogImageRepository extends Repository
{
    protected $model;

    public function __construct(BlogImage $blogImage)
    {
        $this->model = $blogImage;
    }
}
