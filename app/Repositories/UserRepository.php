<?php

namespace App\Repositories;

use App\Models\Role;
use App\User;

class UserRepository extends Repository
{
    protected $model;

    public function __construct(User $user)
    {
        $this->model = $user;
    }

public function isStudent(): bool
{
    $studentRole = false;
  if( $this->model === Role::ROLE_STUDENT) {
            return $studentRole === false;
        }
    }

}
