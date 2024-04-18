<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AlumnoModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'alumno';
    protected $foreignKey = [
        'id_Usuario'];
    protected $fillable = [
        'id_Usuario',
        'semestre',
        'fechaIngreso',
        'fechaEgreso',
        'estatus'
    ];
}
