<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use League\CommonMark\Reference\Reference;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('property', function (Blueprint $table) {
            $table->id();
            $table->string('city')->comment('city where property is located ');
            $table->unsignedBigInteger('user_id');
            $table->string('price')->default('xaf');
            $table->string('area');
            $table->string('beds');
            $table->string('baths');
            $table->string('garages');
            $table->text('locatioon');
            $table->string('status')->default('Active');
            $table->string('batch')->enum(['sales','rentals'])->default('sales')->comment("batch shows the status of a property either sales or rentals");
            $table->timestamps();
            $table->foreign('user_id')->references('id')->on('users')->onDelete("cascade")->onUpdate("cascade");
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('property');
    }
};
