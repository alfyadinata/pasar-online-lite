<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('uuid');
            $table->BigInteger('product_id')->unsigned();
            $table->text('message')->nullable();
            $table->BigInteger('payment_method')->default(0);
            $table->BigInteger('store_id')->unsigned();
            $table->string('invoice');
            $table->BigInteger('user_id')->unsigned();
            $table->BigInteger('admin_id')->unsigned();
            $table->BigInteger('total')->default(0);
            $table->integer('status')->default(0);
            $table->text('receiver_address');
            $table->BigInteger('shipping_costs')->default(0);

            $table->timestamps();
            $table->softDeletes();

            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('store_id')->references('id')->on('stores')->onDelete('cascade')->onUpdate('cascade');        
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');        
            $table->foreign('admin_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transactions');
    }
}
