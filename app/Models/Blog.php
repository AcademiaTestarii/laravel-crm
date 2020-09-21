<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Blog extends Model
{
    use SoftDeletes;

    protected $table = 'news';
    protected $guarded = ['id'];

    public function blogImages()
    {
        return $this->hasMany(BlogImage::class, 'news_id');
    }

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getTitle()
    {
        return $this->getAttribute('title');
    }

    public function getText()
    {
        return $this->getAttribute('text');
    }

    public function getKeywords()
    {
        return $this->getAttribute('keywords');
    }

    public function getDate()
    {
        if (is_null($this->getAttribute('date'))) {
            return null;
        }
        return (new Carbon($this->getAttribute('date')));
    }

    public function getAddedOn()
    {
        return $this->getAttribute('added_on');
    }

    public function getViews()
    {
        return $this->getAttribute('views');
    }

    public function isActive()
    {
        if ($this->getAttribute('is_active') == 1) {
            return true;
        }

        return false;
    }

    public function getActive()
    {
        return $this->getAttribute('is_active');
    }
}
