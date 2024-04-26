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
            $table->foreignId('id_Asignatura_Docente')->constrained('asignatura_docente');
            $table->foreignId('id_Periodo')->constrained('periodo');
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
