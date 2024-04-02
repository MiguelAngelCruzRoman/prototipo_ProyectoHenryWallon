<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Actividad_ClaseModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'actividad_clase';
    protected $foreignKey = [
        'identificador_Clase',
        'identificador_Actividad_Unidad'];

    protected $fillable = [
        'identificador_Clase',
        'identificador_Actividad_Unidad',
        'horasPlaneadas',
        'calificacion',
    ];
}
