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
        Schema::create('progresion', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Periodo'); 
            $table->foreign('id_Periodo')->references('id')->on('periodo')->onDelete('cascade');
            $table->string('tema');
            $table->string('aprendizajeEsperado');
            $table->string('materiales');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('progresion');
    }
};
