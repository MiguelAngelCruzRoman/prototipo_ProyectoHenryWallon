<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Horario_AsignaturaModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'horario_asignatura';

    protected $foreignKey = [
        'id_Horario',
        'id_Asignatura'];
    protected $fillable = [
        'id_Horario',
        'id_Asignatura',
    ];
}
