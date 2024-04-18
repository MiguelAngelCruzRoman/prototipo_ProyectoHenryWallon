<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AsignaturaModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'asignatura';
    protected $fillable = [
        'nombre',
        'objetivo',
        'intencionDidactica',
        'turno',
        'semestre',
        'creditos',
        'horasPracticas',
        'horasTeoricas',
        'calificacionAprobatoria',
        'imagen',
        'estatus'
    ];

    
}



