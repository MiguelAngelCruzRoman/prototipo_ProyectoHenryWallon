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
        Schema::create('horario_asignatura', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Horario'); 
            $table->foreign('id_Horario')->references('id')->on('horario')->onDelete('cascade');
            $table->unsignedBigInteger('id_Asignatura'); 
            $table->foreign('id_Asignatura')->references('id')->on('asignatura')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('horario_asignatura');
    }
};
