<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Horario_MateriaModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'horario_materia';
    protected $foreignKey = [
        'identificador_Horario',
        'identificador_Materia'];

    protected $fillable = [
        'identificador_Horario',
        'identificador_Materia',
    ];
}
