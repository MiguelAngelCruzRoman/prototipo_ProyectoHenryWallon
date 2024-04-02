<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Materia_DocenteModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'materia_docente';
    protected $foreignKey = [
        'identificador_Materia',
        'identificador_Docente'];
    protected $fillable = [
        'identificador_Materia',
        'identificador_Docente',
    ];
}
