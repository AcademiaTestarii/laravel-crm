<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRolesAndPermissionsTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('roles', function (Blueprint $table) {
            $table->id();
            $table->string('code');
            $table->string('name');
            $table->string('description')->nullable();
            $table->timestamps();
        });


        Schema::create('role_user', function (Blueprint $table) {
            $table->unsignedBigInteger('role_id');
            $table->unsignedBigInteger('user_id');
            $table->timestamps();

            $table->foreign('role_id')->references('id')->on('roles');

            $table->foreign('user_id')->references('id')->on('users');
            $table->primary(['role_id', 'user_id']);
        });

        Schema::create('permissions', function (Blueprint $table) {
            $table->id();
            $table->string('code');
            $table->string('name');
            $table->string('description')->nullable();
            $table->timestamps();
        });

        Schema::create('permission_role', function (Blueprint $table) {
            $table->unsignedBigInteger('permission_id');
            $table->unsignedBigInteger('role_id');

            $table->foreign('permission_id')->references('id')->on('permissions');
            $table->foreign('role_id')->references('id')->on('roles');

            $table->primary(['permission_id', 'role_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('role_user');
        Schema::dropIfExists('roles');
        Schema::dropIfExists('permissions');
        Schema::dropIfExists('permission_role');
    }
}
