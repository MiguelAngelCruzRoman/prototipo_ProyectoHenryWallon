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
        Schema::create('unidad', function (Blueprint $table) {
            $table->increments('identificador');
            $table->integer('identificador_Materia')->unsigned();
            $table->foreign('identificador_Materia')->references('identificador')->on('materia')->onDelete('cascade');
            $table->integer('numero');
            $table->string('competencia');
            $table->integer('calificacionMaxima');
            $table->integer('calificacionMinima');
            $table->integer('porcentajeCalificacionFinal');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('unidad');
    }
};
