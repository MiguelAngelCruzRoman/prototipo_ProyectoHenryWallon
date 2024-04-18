<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GrupoModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'grupo';
    protected $foreignKey = [
        'id_Asignatura_Docente',
        'id_Periodo'];
    protected $fillable = [
        'id_Asignatura_Docente',
        'id_Periodo',
        'semestre',
    ];
}
