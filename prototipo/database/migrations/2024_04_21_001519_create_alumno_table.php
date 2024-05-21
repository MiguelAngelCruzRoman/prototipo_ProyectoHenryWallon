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
            $table->unsignedBigInteger('id_Usuario'); 
            $table->foreign('id_Usuario')->references('id')->on('users')->onDelete('cascade');
            $table->integer('semestre');
            $table->dateTime('fechaIngreso');
            $table->dateTime('fechaEgreso')->nullable();
            $table->boolean('estatus');
            $table->unsignedBigInteger('id_UsuarioTutor')->nullable(); 
            $table->foreign('id_UsuarioTutor')->references('id')->on('users')->onDelete('cascade');
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
