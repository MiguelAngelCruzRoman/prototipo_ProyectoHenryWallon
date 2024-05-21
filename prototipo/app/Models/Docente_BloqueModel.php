<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Docente_BloqueModel extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'docente_bloque';
    protected $foreignKey = [
        'docente_id','bloque_id'];

    protected $fillable = [
        'docente_id',
        'bloque_id'
    ];
}
