<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MateriaModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'materia';
    protected $fillable = [
        'nombre',
        'objetivo',
        'intencionDidactica',
        'creditos',
        'horasPracticas',
        'horasTeoricas',
        'calificacionAprobatoria',
        'imagen',
    ];
}



