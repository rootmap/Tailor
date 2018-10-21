<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrderRequirementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_requirements', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('categories_id');
            $table->integer('components_id');
            $table->enum('fabric_option',array('Provide My Fabric','Purchase Fabric And Stitch'));
            $table->integer('fabric_type_id');
            $table->string('fabric_length');
            $table->integer('dress_fitting_id');
            $table->integer('front_design_id');
            $table->integer('back_design_id');
            $table->integer('front_depth_id');
            $table->integer('back_depth_id');
            $table->integer('sleeve_design_id');
            $table->integer('add_ons_closing_id');
            $table->integer('add_ons_delivery_id');
            $table->integer('add_ons_top_linning_id');
            $table->enum('is_add_ons_others_available',array('No','Yes'));
            $table->text('special_instruction');
            $table->enum('order_status',array('Pending','Paid','Approved','Cancel'));
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
        Schema::dropIfExists('order_requirements');
    }
}
