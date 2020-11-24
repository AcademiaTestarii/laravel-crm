<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTrainerProviderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trainer_providers', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
        });

        Schema::table('trainer', function (Blueprint $table) {
            $table->unsignedBigInteger('trainer_provider_id')->nullable()->after('is_staff');
            $table->unsignedBigInteger('user_id')->nullable()->after('trainer_provider_id');

            $table->foreign('trainer_provider_id')->references('id')->on('trainer_providers');
            $table->foreign('user_id')->references('id')->on('users');
        });

        \Illuminate\Support\Facades\DB::statement("
            UPDATE students set date_of_birth = NULL where date_of_birth <= '1900-01-01';
        ");

        Schema::table('students', function (Blueprint $table) {
            $table->unsignedBigInteger('user_id')->nullable()->after('newsletter');
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('trainer_providers');
    }
}
