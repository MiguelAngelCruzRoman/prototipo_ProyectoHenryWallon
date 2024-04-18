<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Grupo_AlumnoModel extends Model
{
    use HasFactory;
    
    protected $primaryKey = 'id';

    protected $table = 'grupo_alumno';

    protected $foreignKey = [
        'id_Grupo',
        'id_Alumno'];

    protected $fillable = [
        'id_Grupo',
        'id_Alumno',
    ];
}
