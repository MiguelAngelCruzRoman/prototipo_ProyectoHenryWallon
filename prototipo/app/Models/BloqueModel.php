<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BloqueModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'bloque';
    protected $foreignKey = [
        'id_Asignatura'];

    protected $fillable = [
        'id_Asignatura',
        'nombre',
        'numero',
        'proposito',
        'eje',
        'componente',
        'contenidoCentral',
        'productoIntegrador',
        'calificacionMaxima',
        'calificacionMinima',
        'porcentajeCalificacionFinal',
    ];
}
