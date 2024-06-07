<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDescriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('descriptions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('property_id');
            $table->text('description');
            $table->string('agent_name');
            $table->text('agent_description');
            $table->string('agent_phone');
            $table->string('agent_mobile');
            $table->string('agent_email');
            $table->string('agent_skype')->nullable();
            $table->string('agent_image');
            $table->string('agent_facebook')->nullable();
            $table->string('agent_twitter')->nullable();
            $table->string('agent_instagram')->nullable();
            $table->string('agent_linkedin')->nullable();
            $table->decimal('longitude', 10, 7);
            $table->decimal('latitude', 10, 7);
            $table->timestamps();

            $table->foreign('property_id')->references('id')->on('property')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('descriptions');
    }
}
