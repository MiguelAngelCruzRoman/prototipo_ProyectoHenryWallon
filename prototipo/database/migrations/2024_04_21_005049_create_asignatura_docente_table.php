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
        Schema::create('asignatura_docente', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Asignatura'); 
            $table->foreign('id_Asignatura')->references('id')->on('asignatura')->onDelete('cascade');
            $table->unsignedBigInteger('id_Docente'); 
            $table->foreign('id_Docente')->references('id')->on('docente')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('asignatura_docente');
    }
};
