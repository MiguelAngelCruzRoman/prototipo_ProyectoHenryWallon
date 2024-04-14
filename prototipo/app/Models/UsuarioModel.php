<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UsuarioModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'usuario';
    protected $fillable = [
        'usuario',
        'contrasenia',
        'foto',
        'rol',
    ];
}
