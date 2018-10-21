<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOwnMeasurementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('own_measurements', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('categories_id');
            $table->string('length');
            $table->string('chest');
            $table->string('waist_round');
            $table->string('shoulder');
            $table->string('sleeve_length');
            $table->string('sleeve_round');
            $table->string('armhole_round');
            $table->string('arm_round');
            $table->string('point');
            $table->string('neck_front');
            $table->string('neck_back');
            $table->string('shoulder_width');
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
        Schema::dropIfExists('own_measurements');
    }
}
