<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DocenteModel extends Model
{
    use HasFactory;
    
    protected $primaryKey = 'identificador';

    protected $table = 'docente';
    protected $fillable = [
        'primerNombre',
        'segundoNombre',
        'apellidoPaterno',
        'apellidoMaterno',
        'foto',
        'usuario',
        'contrasenia',
    ];
}
