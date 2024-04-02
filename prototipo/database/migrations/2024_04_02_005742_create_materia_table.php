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
        Schema::create('materia', function (Blueprint $table) {
            $table->increments('identificador');
            $table->string('nombre',50);
            $table->string('objetivo');
            $table->string('intencionDidactica');
            $table->integer('creditos');
            $table->integer('horasPracticas');
            $table->integer('horasTeoricas');
            $table->integer('calificacionAprobatoria');
            $table->string('imagen');
            $table->dateTime('updated_at');
            $table->dateTime('created_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('materia');
    }
};
