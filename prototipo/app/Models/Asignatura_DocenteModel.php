<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Asignatura_DocenteModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'asignatura_docente';
    protected $foreignKey = [
        'id_Asignatura',
        'id_Docente'];

    protected $fillable = [
        'id_Asignatura',
        'id_Docente',
    ];
}
