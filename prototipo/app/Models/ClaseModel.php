<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClaseModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'clase';
    protected $foreignKey = [
        'identificador_Alumno_Materia_Docente',
        'identificador_Tema'];
    protected $fillable = [
        'identificador_Alumno_Materia_Docente',
        'identificador_Tema',
        'fecha',
        'asistenciaAlumno',
        'asistenciaDocente',
        'estatus',
        'observaciones',
    ];
}
