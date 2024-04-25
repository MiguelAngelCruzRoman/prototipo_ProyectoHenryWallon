<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UsuarioModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'usuario';
    protected $fillable = [
        'primerNombre',
        'segundoNombre',
        'apellidoPaterno',
        'apellidoMaterno',
        'nombreUsuario',
        'contrasenia',
        'correo',
        'rol',
        'foto',
        'estatus',
        'sexo',
        'telefono'
    ];
}
