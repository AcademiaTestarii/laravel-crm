<?php

use Database\Seeders\SqlFileSeeder;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $path = public_path('academia_2020.sql');
        $sql = file_get_contents($path);
        DB::unprepared($sql);
    }
}
