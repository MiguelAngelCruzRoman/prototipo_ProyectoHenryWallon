<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Alumno_Materia_DocenteModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'alumno_materia_docente';
    protected $foreignKey = [
        'identificador_Alumno',
        'identificador_Materia_Docente'];
    protected $fillable = [
        'identificador_Alumno',
        'identificador_Materia_Docente',
        'fechaInicio',
        'fechaFin',
        'calificacion',
        'semestre',
    ];
}
