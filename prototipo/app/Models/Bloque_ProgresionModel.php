<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bloque_ProgresionModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'bloque_progresion';
    protected $foreignKey = [
        'id_Bloque',
        'id_Progresion'];

    protected $fillable = [
        'id_Bloque',
        'id_Progresion'
    ];
}
