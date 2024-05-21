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
        Schema::create('grupo', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Asignatura_Docente'); 
            $table->foreign('id_Asignatura_Docente')->references('id')->on('asignatura_docente')->onDelete('cascade');
            $table->unsignedBigInteger('id_Periodo'); 
            $table->foreign('id_Periodo')->references('id')->on('periodo')->onDelete('cascade');
            $table->enum('semestre', ['Primero','Segundo','Tercero','Cuarto','Quinto','Sexto']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('grupo');
    }
};
