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
        'name', 'email', 'password', 'remember_token'
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

    public function permissions()
    {
        $permissions = [];
        foreach ($this->roles()->get() as $role) {
            $permissions[] = $role->permissions()->pluck('code')->toArray();
        }

        return array_values($permissions);
    }

    public function getEmail()
    {
        return $this->getAttribute('email');
    }
}
