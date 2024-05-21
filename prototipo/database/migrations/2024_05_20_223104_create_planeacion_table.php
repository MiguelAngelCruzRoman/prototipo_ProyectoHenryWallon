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
        Schema::create('planeacion', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('progresion_docente_id'); 
            $table->foreign('progresion_docente_id')->references('id')->on('progresion_docente')->onDelete('cascade');
            $table->unsignedBigInteger('docente_bloque_id'); 
            $table->foreign('docente_bloque_id')->references('id')->on('docente_bloque')->onDelete('cascade');
            $table->unsignedBigInteger('evaluacion_id'); 
            $table->foreign('evaluacion_id')->references('id')->on('evaluacion')->onDelete('cascade');
            $table->unsignedBigInteger('asignatura_id'); 
            $table->foreign('asignatura_id')->references('id')->on('asignatura')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('planeacion');
    }
};
