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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('first_name');
            $table->string('last_name');
            $table->string('middle_name')->nullable();
            $table->string('email');
            $table->text('carier_code')->nullable();
            $table->text('phone');
            $table->string('location')->comment('Users loction');
            $table->string('account_type')->default('User')->comment("account_type can either be Agent or user");
            $table->string('password');
            $table->string('identity_verification')->default(0)->comment("0->unverified, 1->Verified");
            $table->text('address_verification')->default(0)->comment("0->unverified, 1->Verified");
            $table->string('status')->default('Active')->comment("Active-> user can upload to backend, Inactive-> User cannot upload into backend");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
