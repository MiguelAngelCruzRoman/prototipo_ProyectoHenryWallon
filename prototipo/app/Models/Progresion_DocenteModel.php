<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Progresion_DocenteModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'docente_bloque';
    protected $foreignKey = [
        'progresion_id','docente_id'];

    protected $fillable = [
        'progresion_id',
        'docente_id'
    ];
}
