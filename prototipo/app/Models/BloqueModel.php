<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BloqueModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'bloque';

    protected $fillable = [
        'id_Asignatura',
        'numero',
        'competencia',
        'calificacionMaxima',
        'calificacionMinima',
        'porcentajeCalificacionFinal',
    ];
}
