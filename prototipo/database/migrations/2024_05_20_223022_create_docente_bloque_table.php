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
        Schema::create('docente_bloque', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('docente_id'); 
            $table->foreign('docente_id')->references('id')->on('docente')->onDelete('cascade');
            $table->unsignedBigInteger('bloque_id'); 
            $table->foreign('bloque_id')->references('id')->on('bloque')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('docente_bloque');
    }
};
