<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
             $table->increments('orderIdPrimary');
            $table->integer('customerId');
            $table->integer('shippingId');
            $table->float('orderTotal',10,2);
            $table->integer('discount')->nullable();
            $table->integer('bkashFee')->nullable();
            $table->string('trackingId')->nullable();
            $table->tinyInteger('orderStatus')->default('0');
            $table->tinyInteger('cancelRequest')->default('0');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
