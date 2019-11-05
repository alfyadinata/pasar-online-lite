<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->uuid('uuid');
            $table->string('name');
            $table->BigInteger('category_id')->unsigned();
            $table->BigInteger('unit_id')->unsigned();
            $table->string('slug');
            $table->text('description');
            $table->BigInteger('qty');
            $table->BigInteger('visit')->default(0);
            $table->string('foto');
            $table->string('foto_2')->nullable();
            $table->string('foto_3')->nullable();
            $table->BigInteger('price')->default(0);
            $table->BigInteger('store_id')->unsigned();
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('store_id')->references('id')->on('stores')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('unit_id')->references('id')->on('units')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
