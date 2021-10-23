<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class CreateMC40200STable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::unprepared(file_get_contents('database/db/dynamics/tables/MC40200.sql'));
        /* Schema::create('MC40200', function (Blueprint $table) {
            $table->char('CURNCYID', 15);
            $table->smallInteger('CURRNIDX')->length(6);
            $table->decimal('NOTEINDX',19,5);
            $table->char('CRNCYDSC',31);
            $table->char('CRNCYSYM',3);
            $table->smallInteger('CNYSYMAR_1')->length(6);
            $table->smallInteger('CNYSYMAR_2')->length(6);
            $table->smallInteger('CNYSYMAR_3')->length(6);
            $table->smallInteger('CYSYMPLC')->length(6);
            $table->tinyInteger('INCLSPAC')->length(6);
            $table->smallInteger('NEGSYMBL')->length(6);
            $table->smallInteger('NGSMAMPC')->length(6);
            $table->smallInteger('NEGSMPLC')->length(6);
            $table->smallInteger('DECSYMBL')->length(6);
            $table->smallInteger('DECPLCUR')->length(6);
            $table->smallInteger('THOUSSYM')->length(6);
            $table->char('CURTEXT_1',25);
            $table->char('CURTEXT_2',25);
            $table->char('CURTEXT_3',25);
            $table->char('ISOCURRC',3);
            $table->smallInteger('CURLNGID')->length(6);
            $table->dateTime('DEX_ROW_TS');
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
        Schema::dropIfExists('MC40200');
    }
}
