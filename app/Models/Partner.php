<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Partner extends Model
{
    use SoftDeletes;

    protected $table = 'partners';
    protected $guarded = ['id'];

    public function getId()
    {
        return $this->getAttribute('id');
    }

    public function getName()
    {
        return $this->getAttribute('name');
    }

    public function getDescription()
    {
        return $this->getAttribute('description');
    }

    public function getLogo()
    {
        if (!is_null($this->getAttribute('logo'))) {
            return asset('/') . 'partners/' . $this->getAttribute('logo');
        }

        return null;
    }

    public function getUrl()
    {
        return $this->getAttribute('url');
    }
}
