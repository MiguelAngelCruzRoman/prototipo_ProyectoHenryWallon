<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AsistenciaModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'asistencia';
    protected $foreignKey = [
        'id_Grupo_Alumno'];
    protected $fillable = [
        'id_Grupo_Alumno',
        'fecha',
        'estatus',
        'observacion',
    ];
}
