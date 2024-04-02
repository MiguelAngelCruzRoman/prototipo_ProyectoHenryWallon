<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UnidadModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'unidad';
    protected $foreignKey = 'identificador_Materia';

    protected $fillable = [
        'identificador_Materia',
        'numero',
        'competencia',
        'calificacionMaxima',
        'calificacionMinima',
        'porcentajeCalificacionFinal',
    ];
}
