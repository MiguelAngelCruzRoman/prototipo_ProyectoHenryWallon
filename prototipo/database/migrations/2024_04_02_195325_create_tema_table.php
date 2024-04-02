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
        Schema::create('tema', function (Blueprint $table) {
            $table->increments('identificador');
            $table->integer('identificador_Unidad')->unsigned();
            $table->foreign('identificador_Unidad')->references('identificador')->on('unidad')->onDelete('cascade');
            $table->string('titulo');
            $table->string('subtitulo');
            $table->float('horasDuracion');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tema');
    }
};
