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
            $table->foreignId('id_Asignatura')->constrained('asignatura');
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
