<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTrainerProviders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $academiaTestariiProvider = \App\Models\TrainerProvider::where('name', 'Academia Testarii')->first();
        \Illuminate\Support\Facades\DB::table('trainer')
            ->update(array('trainer_provider_id' => $academiaTestariiProvider->id));

        \App\User::where('name', 'academiatestarii')->update([
            'is_active' => 1
        ]);
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
