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
        Schema::create('grupo_alumno', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Grupo'); 
            $table->foreign('id_Grupo')->references('id')->on('grupo')->onDelete('cascade');
            $table->unsignedBigInteger('id_alumno'); 
            $table->foreign('id_alumno')->references('id')->on('alumno')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('grupo_alumno');
    }
};
