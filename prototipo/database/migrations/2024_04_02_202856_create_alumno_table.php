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
        Schema::create('alumno', function (Blueprint $table) {
            $table->increments('identificador');
            $table->string('primerNombre');
            $table->string('segundoNombre')->nullable();
            $table->string('apellidoPaterno');
            $table->string('apellidoMaterno');
            $table->integer('semestre');
            $table->integer('promedioGeneral');
            $table->dateTime('fechaIngreso');
            $table->dateTime('fechaEgreso');
            $table->string('foto');
            $table->string('usuario');
            $table->string('contrasenia');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alumno');
    }
};