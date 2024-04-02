<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Actividad_UnidadModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'actividad_unidad';
    protected $foreignKey = [
        'identificador_Actividad',
        'identificador_Unidad'];

    protected $fillable = [
        'identificador_Actividad',
        'identificador_Unidad',
    ];
}
