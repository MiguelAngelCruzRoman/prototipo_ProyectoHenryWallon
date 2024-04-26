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
        Schema::create('asignatura', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->text('objetivo');
            $table->text('intencionDidactica');
            $table->enum('turno', ['Matutino', 'Vespertino']);
            $table->enum('semestre', ['Primero','Segundo','Tercero','Cuarto','Quinto','Sexto']);
            $table->enum('componente', ['Fundamental', 'Fundamental Extendido','Fundamental Extendido Obligatorio','Laboral Básico','Ampliada']);
            $table->unsignedInteger('creditos');
            $table->unsignedInteger('horasDocente');
            $table->unsignedInteger('horasEstudioIndependiente');
            $table->unsignedInteger('calificacionAprobatoria');
            $table->string('imagen');
            $table->enum('estatus', ['Aprobada','No aprobada','En revisión','Sin planeación']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('asignatura');
    }
};
