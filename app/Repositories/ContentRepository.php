<?php

namespace App\Repositories;

use App\Models\Content;

class ContentRepository extends Repository
{
    protected $model;

    /**
     * ContentRepository constructor.
     * @param Content $content
     */
    public function __construct(Content $content)
    {
        $this->model = $content;
    }

    public function getContentData($pageType) {

        return $contentByType = $this->model::where('name', $pageType)->first();
    }
}
