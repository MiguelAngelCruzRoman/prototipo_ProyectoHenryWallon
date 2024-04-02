<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TemaModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'identificador';

    protected $table = 'tema';
    protected $foreignKey = 'identificador_Unidad';

    protected $fillable = [
        'identificador_Unidad',
        'titulo',
        'subtitulo',
        'horasDuracion',
    ];
}
