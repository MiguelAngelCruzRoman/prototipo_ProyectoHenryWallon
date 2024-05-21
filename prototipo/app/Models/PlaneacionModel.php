<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlaneacionModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'planeacion';
    protected $foreignKey = [
        'progresion_docente_id',
        'docente_bloque_id',
        'evaluacion_id',
        'asignatura_id '
    ];

    protected $fillable = [
        'progresion_docente_id',
        'docente_bloque_id',
        'evaluacion_id',
        'asignatura_id '
    ];
}
