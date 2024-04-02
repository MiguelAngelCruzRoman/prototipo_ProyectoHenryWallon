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
        Schema::create('actividad_clase', function (Blueprint $table) {
            $table->increments('identificador');
            $table->integer('identificador_Clase')->unsigned();
            $table->foreign('identificador_Clase')->references('identificador')->on('clase')->onDelete('cascade');
            $table->integer('identificador_Actividad_Unidad')->unsigned();
            $table->foreign('identificador_Actividad_Unidad')->references('identificador')->on('actividad_unidad')->onDelete('cascade');
            $table->integer('horasPlaneadas');
            $table->integer('calificacion');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('actividad_clase');
    }
};
