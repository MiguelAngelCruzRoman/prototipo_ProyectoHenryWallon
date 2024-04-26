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
            $table->id();
            $table->foreignId('id_Usuario')->constrained('usuario');
            $table->integer('semestre');
            $table->dateTime('fechaIngreso');
            $table->dateTime('fechaEgreso')->nullable();
            $table->boolean('estatus');
            $table->foreignId('id_UsuarioTutor')->constrained('usuario');
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
