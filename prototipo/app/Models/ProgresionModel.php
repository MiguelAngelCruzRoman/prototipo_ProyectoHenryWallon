<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProgresionModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'progresion';
    protected $foreignKey = [
        'id_Periodo'];

    protected $fillable = [
        'id_Periodo',
        'tema',
        'aprendizajeEsperado',
        'materiales'
    ];
}
