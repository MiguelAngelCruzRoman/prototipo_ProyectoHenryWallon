<?php

namespace App\Http\Controllers;

use App\Models\AsistenciaModel;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class Asistencia extends Controller
{
    public function index($idAsignatura,$idDocente,$nombreAsignatura)
    {
        $userData = session('user');
        $id = $userData['id'];

        $asistencias = DB::table('asistencia')
        ->select('ua.primerNombre','ua.segundoNombre','ua.apellidoPaterno','ua.apellidoMaterno','alumno.id')
        ->join('grupo_alumno', 'grupo_alumno.id', '=', 'asistencia.id_grupo_alumno')
        ->join('alumno', 'grupo_alumno.id_alumno', '=', 'alumno.id')
        ->join('users as ua', 'alumno.id_usuario', '=', 'ua.id')
        ->join('grupo', 'grupo_alumno.id_grupo', '=', 'grupo.id')
        ->join('asignatura_docente', 'grupo.id_asignatura_docente', '=', 'asignatura_docente.id')
        ->where('asignatura_docente.id_Asignatura', $idAsignatura)
        ->where('asignatura_docente.id_docente', $idDocente)
        ->get();

        return view('docente/asignatura/asistencia/index', compact('asistencias', 'nombreAsignatura'));
    }

    public function busqueda()
    {
        $periodos = DB::table('periodo')
            ->where('tipo', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/periodo/index', compact('periodos'));
    }

    public function agregar()
    {
        return view('administrador/periodo/agregar');
    }

    public function insert(Request $request)
    {
        $periodo = new AsistenciaModel();
        $periodo->fechaInicio = date(strtolower($request->fechaInicio));
        $periodo->fechaFin = date(strtolower($request->fechaFin));
        $periodo->tipo = ucwords(strtolower($request->tipo));

        $periodo->save();

        return redirect('/periodo/index');
    }
}


