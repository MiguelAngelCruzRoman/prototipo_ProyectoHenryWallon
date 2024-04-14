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
        Schema::create('usuario_alumno', function (Blueprint $table) {
            $table->increments('identificador');
            $table->integer('identificador_Usuario')->unsigned();
            $table->foreign('identificador_Usuario')->references('identificador')->on('usuario')->onDelete('cascade');
            $table->integer('identificador_Alumno')->unsigned();
            $table->foreign('identificador_Alumno')->references('identificador')->on('alumno')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('usuario_alumno');
    }
};
