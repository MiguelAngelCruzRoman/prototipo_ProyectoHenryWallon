<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DocenteModel extends Model
{
    use HasFactory;
    
    protected $primaryKey = 'id';

    protected $table = 'docente';

    protected $foreignKey = [
        'id_Usuario'];
    protected $fillable = [
        'id_Usuario',
        'fechaContratacion',
        'fechaDimision',
        'estatus',
    ];
}
