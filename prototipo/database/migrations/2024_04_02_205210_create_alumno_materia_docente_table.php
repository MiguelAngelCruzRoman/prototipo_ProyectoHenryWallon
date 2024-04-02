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
        Schema::create('alumno_materia_docente', function (Blueprint $table) {
            $table->increments('identificador');
            $table->integer('identificador_Alumno')->unsigned();
            $table->foreign('identificador_Alumno')->references('identificador')->on('alumno')->onDelete('cascade');
            $table->integer('identificador_Materia_Docente')->unsigned();
            $table->foreign('identificador_Materia_Docente')->references('identificador')->on('materia_docente')->onDelete('cascade');
            $table->dateTime('fechaInicio');
            $table->dateTime('fechaFin');
            $table->integer('calificacion');
            $table->integer('semestre');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alumno_materia_docente');
    }
};
