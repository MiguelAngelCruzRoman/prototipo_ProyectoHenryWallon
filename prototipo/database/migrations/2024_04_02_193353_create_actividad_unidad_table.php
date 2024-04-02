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
        Schema::create('actividad_unidad', function (Blueprint $table) {
            $table->increments('identificador');
            $table->integer('identificador_Actividad')->unsigned();
            $table->foreign('identificador_Actividad')->references('identificador')->on('actividad')->onDelete('cascade');
            $table->integer('identificador_Unidad')->unsigned();
            $table->foreign('identificador_Unidad')->references('identificador')->on('unidad')->onDelete('cascade');
            $table->float('porcentajeCalificacionUnidad');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('actividad_unidad');
    }
};
