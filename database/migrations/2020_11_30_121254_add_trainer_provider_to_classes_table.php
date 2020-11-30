<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTrainerProviderToClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('main_classes', function (Blueprint $table) {
            $table->unsignedBigInteger('trainer_provider_id')->nullable()->after('title');

            $table->foreign('trainer_provider_id')->references('id')->on('trainer_providers');
        });

        $academiaTestariiProvider = \App\Models\TrainerProvider::where('name', 'Academia Testarii')->first();
        \Illuminate\Support\Facades\DB::table('main_classes')
            ->update(array('trainer_provider_id' => $academiaTestariiProvider->id));
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('main_classes', function (Blueprint $table) {
            $table->dropColumn(['trainer_provider_id']);
        });
    }
}
