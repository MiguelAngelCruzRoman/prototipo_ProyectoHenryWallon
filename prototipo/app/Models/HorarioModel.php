<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HorarioModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'horario';
    protected $fillable = [
        'dia',
        'horaInicio',
        'horaFin',
    ];
    
}
