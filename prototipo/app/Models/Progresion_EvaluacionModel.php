<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Progresion_EvaluacionModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'progresion_evaluacion';
    protected $foreignKey = [
        'id_Progresion',
        'id_Evaluacion'];
    protected $fillable = [
        'id_Progresion',
        'id_Evaluacion',
    ];
}
