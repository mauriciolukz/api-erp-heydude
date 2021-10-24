<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMC60100STable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('MC60100', function (Blueprint $table) {
            $table->smallInteger('CMPANYID')->length(6);
            $table->char('CURNCYID', 15);
            $table->tinyInteger('INACTIVE');
            $table->integer('DEX_ROW_ID')->autoIncrement();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('MC60100');
    }
}
