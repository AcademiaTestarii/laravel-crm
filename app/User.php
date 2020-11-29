<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use App\Models\Role;
use App\Models\RoleUser;

class User extends Authenticatable
{
    use Notifiable, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'remember_token', 'is_active', 'hash', 'email_verified_at'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function roleUser()
    {
        return $this->hasOne(RoleUser::class);
    }


    public function roles()
    {
        return $this->belongsToMany(
            Role::class,
            'role_user',
            'user_id',
            'role_id'
        );
    }

    public function permissions(): array
    {
        $permissions = [];
        foreach ($this->roles()->get() as $role) {
            foreach ($role->permissions()->get() as $permission) {
                $permissions[] = $permission->code;
            }
        }

        return $permissions;
    }

    public function getId(): ?string
    {
        return $this->getAttribute('id');
    }

    public function getEmail(): ?string
    {
        return $this->getAttribute('email');
    }

    public function getName(): ?string
    {
        return $this->getAttribute('name');
    }

    public function getHashUrl(): ?string
    {
        return request()->getHost() . $this->getAttribute('hash');
    }
}
