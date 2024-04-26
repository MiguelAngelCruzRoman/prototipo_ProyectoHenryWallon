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
        Schema::create('usuario', function (Blueprint $table) {
            $table->id();
            $table->string('primerNombre');
            $table->string('segundoNombre')->nullable();
            $table->string('apellidoPaterno');
            $table->string('apellidoMaterno');
            $table->string('nombreUsuario')->unique();
            $table->string('contrasenia');
            $table->string('correo')->nullable();
            $table->enum('rol', ['administrador', 'alumno', 'docente','tutor']);
            $table->string('foto');
            $table->boolean('estatus');
            $table->enum('sexo', ['Hombre', 'Mujer']);
            $table->string('telefono');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('usuario');
    }
};
