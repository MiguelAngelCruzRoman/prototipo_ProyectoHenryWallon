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
        Schema::create('docente', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_Usuario');
            $table->foreign('id_Usuario')->references('id')->on('usuario')->onDelete('cascade');
            $table->dateTime('fechaContratacion');
            $table->dateTime('fechaDimision')->nullable();
            $table->boolean('estatus');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('docente');
    }
};
