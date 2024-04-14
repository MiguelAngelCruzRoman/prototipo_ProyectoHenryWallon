<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usuario_AlumnoModel extends Model
{
    use HasFactory;
    
    protected $primaryKey = 'identificador';

    protected $table = 'usuario_alumno';

    protected $fillable = [
        'identificador_Usuario',
        'identificador_Alumno',
    ];
}
