<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class Materia extends Controller
{
    public function index()
    {
        $materias = DB::table('materia_docente')
            ->join('materia', 'materia_docente.identificador_materia', '=', 'materia.identificador')
            ->join('docente', 'materia_docente.identificador_docente', '=', 'docente.identificador')
            ->get();

        return view('materia/index', compact('materias'));
    }

    public function instrumentacion_ver(string $idMateria, string $idDocente)
    {
        $materia = DB::table('materia_docente')
            ->join('materia', 'materia_docente.identificador_materia', '=', 'materia.identificador')
            ->join('docente', 'materia_docente.identificador_docente', '=', 'docente.identificador')
            ->where('materia_docente.identificador_materia', $idMateria)
            ->where('materia_docente.identificador_docente', $idDocente)
            ->get();


        $temas = DB::table('tema')
            ->join('unidad', 'tema.identificador_Unidad', '=', 'unidad.identificador')
            ->join('materia', 'unidad.identificador_Materia', '=', 'materia.identificador')
            ->join('materia_docente', 'materia.identificador', '=', 'materia_docente.identificador_materia')
            ->where('materia_docente.identificador_materia', $idMateria)
            ->where('materia_docente.identificador_docente', $idDocente)
            ->orderBy('unidad.numero', 'asc')
            ->get();

        $unidades = DB::table('unidad')
            ->join('materia', 'unidad.identificador_Materia', '=', 'materia.identificador')
            ->where('unidad.identificador_materia', $idMateria)
            ->get();

        return view('materia/instrumentacion/ver', compact('materia', 'temas', 'unidades'));
    }


    public function agregarDatosMateria()
    {
        return view('materia/agregar/datosMateria');
    }

    public function agregarDatosUnidad(string $numeroUnidad)
    {
            $numeroUnidad = $numeroUnidad +1;
            return view('materia/agregar/datosUnidad', compact('numeroUnidad'));
   
    }
}
