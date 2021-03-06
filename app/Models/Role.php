<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $guarded = ['id'];

    const ROLE_STUDENT = 'student';
    const ROLE_TRAINER = 'trainer';
    const ROLE_TRAINER_PROVIDER = 'trainer-provider';

    /**
     * A role may be given various permissions.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function permissions()
    {
        return $this->belongsToMany(Permission::class);
    }

    /**
     * Grant the given permission to a role.
     *
     * @param Permission $permission
     * @return mixed
     */
    public function givePermissionTo(Permission $permission)
    {
        return $this->permissions()->save($permission);
    }

    /**
     * Remove the given permission to a role.
     *
     * @param Permission $permission
     * @return mixed
     */
    public function removePermissionTo(Permission $permission)
    {
        return $this->permissions()->detach($permission->id);
    }

    /**
     * Get all the permissions associated with a list of roles
     * @param $roles
     * @return \Illuminate\Support\Collection
     */
    public static function getPermissionsForRoles($roles)
    {
        $roles = self::with('permissions')->whereIn('code', $roles)->get();
        $permissions = [];

        foreach ($roles as $role) {
            $rolePermissions = $role->permissions->pluck('code')->all();
            foreach ($rolePermissions as $permission) {
                $permissions[] = $permission;
            }
        }

        return $permissions;
    }

    public function getId(): int
    {
        return $this->getAttribute('id');
    }

    public function getName(): string
    {
        return $this->getAttribute('name');
    }

    public function getCode(): string
    {
        return $this->getAttribute('code');
    }

    public function isTrainer(): bool
    {
        if ($this->getAttribute('code') == self::ROLE_TRAINER) {
            return true;
        }

        return false;
    }
}
