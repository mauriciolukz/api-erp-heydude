<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class CreateSY01400STable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::unprepared(file_get_contents('database/db/dynamics/tables/SY01400.sql'));
        /* Schema::create('SY01400', function (Blueprint $table) {
            $table->string('USERID');
            $table->string('USERNAME');
            $table->string('PASSWORD');
            $table->integer('DEX_ROW_ID')->autoIncrement();
        }); */
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('SY01400');
    }
}
