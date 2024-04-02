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
        Schema::create('clase', function (Blueprint $table) {
            $table->increments('identificador');
            $table->integer('identificador_Alumno_Materia_Docente')->unsigned();
            $table->foreign('identificador_Alumno_Materia_Docente')->references('identificador')->on('alumno_materia_docente')->onDelete('cascade');
            $table->integer('identificador_Tema')->unsigned();
            $table->foreign('identificador_Tema')->references('identificador')->on('tema')->onDelete('cascade');
            $table->dateTime('fecha');
            $table->boolean('asistenciaAlumno');
            $table->boolean('asistenciaDocente');
            $table->string('estatus');
            $table->string('observaciones');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('clase');
    }
};
