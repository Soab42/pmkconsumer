<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('consumer_orders', function (Blueprint $table) {
            $table->id()->primary();
            $table->integer('Order ID', 8);
            $table->string('Branch Name');
            $table->date('Order Date');
            $table->string('Distributor Name');
            $table->string('Product Name');
            $table->string('Model No');
            $table->string('Order Status');
            $table->integer('Product Price');
            $table->integer('Order Quantity');
            $table->integer('Shipped Quantity');
            $table->integer('Received Quantity');
            $table->integer('Received Quantity');
            $table->integer('Purchase Price');
            $table->date('Status Change Date');
            $table->string('Bill Pay');
            $table->string('Remarks');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('consumer_orders');
    }
};
