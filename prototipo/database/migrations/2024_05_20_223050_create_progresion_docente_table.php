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
        Schema::create('progresion_docente', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('progresion_id'); 
            $table->foreign('progresion_id')->references('id')->on('progresion')->onDelete('cascade');
            $table->unsignedBigInteger('docente_id'); 
            $table->foreign('docente_id')->references('id')->on('docente')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('progresion_docente');
    }
};
