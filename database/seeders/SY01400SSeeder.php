<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SY01400SSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('SY01400')->insert([
            'USERID' => 'sa',
            'USERNAME' => '$2y$12$amYUEa99oG2XsjODdGDYKe/KK6aGBJe5ZNX862YXLWCEw08tLae3q',
            'PASSWORD' => '$2y$12$amYUEa99oG2XsjODdGDYKe/KK6aGBJe5ZNX862YXLWCEw08tLae3q'
        ]);
    }
}
