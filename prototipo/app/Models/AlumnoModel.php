<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AlumnoModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'alumno';
    protected $fillable = [
        'primerNombre',
        'segundoNombre',
        'apellidoPaterno',
        'apellidoMaterno',
        'semestre',
        'promedioGeneral',
        'fechaIngreso',
        'fechaEgreso',
    ];
}
