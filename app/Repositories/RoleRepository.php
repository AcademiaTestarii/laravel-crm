<?php

namespace App\Repositories;

use App\Models\Role;

class RoleRepository extends Repository
{
    protected $model;

    public function __construct(Role $role)
    {
        $this->model = $role;
    }

    public function getAllRolesExceptAdmin(string $column = 'id', string $order = 'ASC')
    {
        return $this->model->where('code', '!=', 'admin')->orderBy($column, $order)->get();
    }
}
