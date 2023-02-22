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
        Schema::create('book__a__tables', function (Blueprint $table) {
            $table->id();
            $table->string('name', 50);
            $table->string('email', 60);
            $table->bigInteger('phone');
            $table->date('date');
            $table->time('time');
            $table->integer('nop');
            $table->text('message');
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('book__a__tables');
    }
};
