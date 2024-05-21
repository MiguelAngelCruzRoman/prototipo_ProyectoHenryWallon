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
        Schema::create('progresion_evaluacion', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Progresion'); 
            $table->foreign('id_Progresion')->references('id')->on('progresion')->onDelete('cascade');
            $table->unsignedBigInteger('id_Evaluacion'); 
            $table->foreign('id_Evaluacion')->references('id')->on('evaluacion')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('progresion_evaluacion');
    }
};
