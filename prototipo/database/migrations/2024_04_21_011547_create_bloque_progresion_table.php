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
        Schema::create('bloque_progresion', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Bloque'); 
            $table->foreign('id_Bloque')->references('id')->on('bloque')->onDelete('cascade');
            $table->unsignedBigInteger('id_Progresion'); 
            $table->foreign('id_Progresion')->references('id')->on('progresion')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bloque_progresion');
    }
};
