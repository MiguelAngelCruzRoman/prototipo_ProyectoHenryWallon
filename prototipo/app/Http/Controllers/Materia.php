<?php

namespace App\Http\Controllers;
use App\Models\MateriaModel;

use Illuminate\Http\Request;

class Materia extends Controller
{
    public function index(){
        $materias = MateriaModel::all();

        return view('materia/index', compact('materias'));


    }
}
