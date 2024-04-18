<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EvaluacionModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'evaluacion';
    protected $fillable = [
        'tipoEvaluacion',
        'descripcionEvaluacion',
        'archivoEjemplo',
    ];
}
