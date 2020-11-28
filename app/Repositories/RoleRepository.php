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

    public function getAllRolesExcept(array $exceptRoles, string $column = 'id', string $order = 'ASC')
    {
        $model = $this->model;
        foreach ($exceptRoles as $exceptRole) {
            $model = $model->where(function ($query) use ($exceptRole) {
                $query->where('code', '!=', $exceptRole);
            });
        }
        return $model->orderBy($column, $order)->get();
    }
}
