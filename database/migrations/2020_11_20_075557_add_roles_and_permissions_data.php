<?php

use App\User;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

class AddRolesAndPermissionsData extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $roles = [
            'Admin' => ['Can view all'],
            'Student' => [],
            'Trainer' => [],
            'Trainer Provider' => ['Can view all'],
        ];

        foreach ($roles as $role => $permissions) {
            $dbRole = \App\Models\Role::create([
                'code' => Str::slug(strtolower($role)),
                'name' => $role
            ]);

            if (!empty($permissions)) {
                foreach ($permissions as $permission) {
                    $dbPermission = \App\Models\Permission::firstOrCreate([
                        'code' => Str::slug(strtolower($permission)),
                        'name' => $permission
                    ]);

                    $dbRole->givePermissionTo($dbPermission);
                }
            }
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
