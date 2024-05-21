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
        Schema::create('bloque', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Asignatura'); 
            $table->foreign('id_Asignatura')->references('id')->on('asignatura')->onDelete('cascade');
            $table->string('nombre');
            $table->integer('numero');
            $table->text('proposito');
            $table->string('eje');
            $table->text('componente');
            $table->text('contenidoCentral');
            $table->text('productoIntegrador');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bloque');
    }
};
