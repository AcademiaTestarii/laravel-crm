<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BlogImage extends Model
{
    use SoftDeletes;

    protected $table = 'news_images';
    protected $guarded = ['id'];

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getImage()
    {
        if (!is_null($this->getAttribute('image'))) {
            return asset('/') . 'news/' . $this->getAttribute('image');
        }

        return null;
    }

    public function isDefault()
    {
        if ($this->getAttribute('is_default') == 1) {
            return true;
        }

        return false;
    }
}
