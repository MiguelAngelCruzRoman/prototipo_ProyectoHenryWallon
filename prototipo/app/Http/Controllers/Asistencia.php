<?php

namespace App\Http\Controllers;

use App\Models\AsistenciaModel;
use Illuminate\Support\Facades\DB;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class Asistencia extends Controller
{
    public function index($idAsignatura, $idDocente, $nombreAsignatura)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $userData = session('user');
        $id = $userData['id'];

        $asistencias = DB::table('grupo_alumno')
            ->select('ua.primerNombre', 'ua.segundoNombre', 'ua.apellidoPaterno', 'ua.apellidoMaterno', 'alumno.id', 'grupo_alumno.id as id_GrupoAlumno')
            ->join('alumno', 'grupo_alumno.id_alumno', '=', 'alumno.id')
            ->join('users as ua', 'alumno.id_usuario', '=', 'ua.id')
            ->join('grupo', 'grupo_alumno.id_grupo', '=', 'grupo.id')
            ->join('asignatura_docente', 'grupo.id_asignatura_docente', '=', 'asignatura_docente.id')
            ->where('asignatura_docente.id_Asignatura', $idAsignatura)
            ->where('asignatura_docente.id_docente', $idDocente)
            ->get();

        return view('docente/asignatura/asistencia/index', compact('asistencias', 'nombreAsignatura', 'idAsignatura', 'idDocente'));
    }

    public function busqueda()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $periodos = DB::table('periodo')
            ->where('tipo', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/periodo/index', compact('periodos'));
    }

    public function agregar()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        return view('administrador/periodo/agregar');
    }

    public function insert(Request $request)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $cantidadEstudiantes = 0;
        while ($cantidadEstudiantes < count($_POST['comentarios'])) {
            $asistencias = new AsistenciaModel();

            if (isset($_POST['grupo_alumno'][$cantidadEstudiantes]) && isset($_POST['idAlumnos'][$cantidadEstudiantes]) && isset($_POST['asistencias_' . $_POST['idAlumnos'][$cantidadEstudiantes]])) {
                $asistencias->id_Grupo_Alumno = $_POST['grupo_alumno'][$cantidadEstudiantes];
                $asistencias->fecha = now();
                $asistencias->estatus = $_POST['asistencias_' . $_POST['idAlumnos'][$cantidadEstudiantes]];
                $asistencias->observacion = isset($_POST['comentarios'][$cantidadEstudiantes]) ? $_POST['comentarios'][$cantidadEstudiantes] : "";

                $asistencias->save();
            }
            $cantidadEstudiantes++;
        }
        return redirect()->route('docente.asignatura.index');
    }


    public function historial($idAsignatura, $idDocente, $nombreAsignatura)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $userData = session('user');
        $id = $userData['id'];

        $asistencias = DB::table('asistencia')
            ->select('ua.primerNombre', 'ua.segundoNombre', 'ua.apellidoPaterno', 'ua.apellidoMaterno', 'alumno.id', 'grupo_alumno.id as id_GrupoAlumno', 'asistencia.estatus', 'asistencia.fecha')
            ->join('grupo_alumno', 'grupo_alumno.id', '=', 'asistencia.id_grupo_alumno')
            ->join('alumno', 'grupo_alumno.id_alumno', '=', 'alumno.id')
            ->join('users as ua', 'alumno.id_usuario', '=', 'ua.id')
            ->join('grupo', 'grupo_alumno.id_grupo', '=', 'grupo.id')
            ->join('asignatura_docente', 'grupo.id_asignatura_docente', '=', 'asignatura_docente.id')
            ->where('asignatura_docente.id_Asignatura', $idAsignatura)
            ->where('asignatura_docente.id_docente', $idDocente)
            ->orderBy('asistencia.fecha', 'ASC')
            ->get();

        return view('docente/asignatura/asistencia/historial', compact('asistencias', 'nombreAsignatura', 'idAsignatura', 'idDocente'));
    }

    public function indexReportes()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }
        
        $asistencias = DB::table('asistencia')
            ->select(
                'ua.primerNombre as nombreAlumno',
                'ua.segundoNombre as segundoNombreAlumno',
                'ua.apellidoPaterno as apellitoPAlumno',
                'ua.apellidoMaterno as apellidoMAlumno',
                'alumno.id as idAlumno',
                'grupo.id as id_Grupo',
                'asistencia.estatus as asistenciaAlumno',
                'asistencia.fecha as fechaAsistenia',
                'asignatura.nombre as nombreAsignatura'
            )
            ->join('grupo_alumno', 'grupo_alumno.id', '=', 'asistencia.id_grupo_alumno')
            ->join('alumno', 'grupo_alumno.id_alumno', '=', 'alumno.id')
            ->join('users as ua', 'alumno.id_usuario', '=', 'ua.id')
            ->join('grupo', 'grupo_alumno.id_grupo', '=', 'grupo.id')
            ->join('asignatura_docente', 'grupo.id_asignatura_docente', '=', 'asignatura_docente.id')
            ->join('asignatura', 'asignatura_docente.id_Asignatura', '=', 'asignatura.id')
            ->get();

        return view('administrador/reportes/index', compact('asistencias'));
    }
}
