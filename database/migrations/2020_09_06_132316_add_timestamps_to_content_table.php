<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTimestampsToContentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('content', function (Blueprint $table) {
            $table->timestamps();
        });

        Schema::table('subcontent', function (Blueprint $table) {
            $table->timestamps();
        });

        Schema::table('classes', function (Blueprint $table) {
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::table('feedback', function (Blueprint $table) {
            $table->timestamps();
        });

        Schema::table('trainers', function (Blueprint $table) {
            $table->timestamps();
        });

        Schema::table('partners', function (Blueprint $table) {
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::table('news', function (Blueprint $table) {
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('content', function (Blueprint $table) {
            $table->dropColumn(['created_at', 'updated_at']);
        });

        Schema::table('subcontent', function (Blueprint $table) {
            $table->dropColumn(['created_at', 'updated_at']);
        });

        Schema::table('feedback', function (Blueprint $table) {
            $table->dropColumn(['created_at', 'updated_at']);
        });

        Schema::table('trainers', function (Blueprint $table) {
            $table->dropColumn(['created_at', 'updated_at']);
        });

        Schema::table('classes', function (Blueprint $table) {
            $table->dropColumn(['created_at', 'updated_at', 'deleted_at']);
        });

        Schema::table('partners', function (Blueprint $table) {
            $table->dropColumn(['created_at', 'updated_at', 'deleted_at']);
        });

        Schema::table('news', function (Blueprint $table) {
            $table->dropColumn(['created_at', 'updated_at', 'deleted_at']);
        });
    }
}
