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
        Schema::create('asistencia', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Grupo_Alumno'); 
            $table->foreign('id_Grupo_Alumno')->references('id')->on('grupo_alumno')->onDelete('cascade');
            $table->dateTime('fecha');
            $table->enum('estatus', ['Asistencia', 'Justificante', 'Retraso', 'Falta']);
            $table->text('observacion');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('asistencia');
    }
};
