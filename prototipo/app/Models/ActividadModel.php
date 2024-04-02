<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ActividadModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'actividad';
    protected $fillable = [
        'competenciaDesarrollada',
        'tipoActividad',
        'tipoEvaluacion',
    ];
}
