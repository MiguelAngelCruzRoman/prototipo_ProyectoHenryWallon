<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usuario_DocenteModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'usuario_docente';

    protected $fillable = [
        'identificador_Usuario',
        'identificador_Docente',
    ];
}
