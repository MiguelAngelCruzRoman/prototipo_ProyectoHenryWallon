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
        Schema::create('horario_materia', function (Blueprint $table) {
            $table->increments('identificador');
            $table->integer('identificador_Horario')->unsigned();
            $table->foreign('identificador_Horario')->references('identificador')->on('horario')->onDelete('cascade');
            $table->integer('identificador_Materia')->unsigned();
            $table->foreign('identificador_Materia')->references('identificador')->on('materia')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('horario_materia');
    }
};
