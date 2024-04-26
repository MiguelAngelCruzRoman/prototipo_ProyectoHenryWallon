<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use App\Models\AsignaturaModel;
use App\Models\GrupoModel;

class Grupo extends Controller
{


    public function index()
    {
        $grupos = DB::table('grupo')->paginate(10);

        return view('administrador/grupo/index', compact('grupos'));
    }


    public function busqueda()
    {
        $grupos = DB::table('grupo')
            ->where('id', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/grupo/index', compact('grupos'));
    }



    public function agregar()
    {
        $asignaturas = DB::table('asignatura')
            ->select('id', 'nombre')
            ->get();

        $docentes = DB::table('docente')
            ->select('docente.id', 'usuario.primerNombre', 'usuario.segundoNombre', 'usuario.apellidoPaterno', 'usuario.apellidoMaterno')
            ->join('usuario', 'docente.id_Usuario', '=', 'usuario.id')
            ->get();

        $alumnos = DB::table('alumno')
            ->select('alumno.id', 'usuario.primerNombre', 'usuario.segundoNombre', 'usuario.apellidoPaterno', 'usuario.apellidoMaterno')
            ->join('usuario', 'alumno.id_Usuario', '=', 'usuario.id')
            ->get();

        $periodos = DB::table('periodo')
            ->select('id', 'fechaInicio', 'fechaFin')
            ->where('tipo', 'CicloEscolar')
            ->get();

        return view('administrador/grupo/agregar', compact('asignaturas', 'docentes','alumnos','periodos'));
    }


    public function insert(Request $request)
    {
        print_r($_POST['listaAlumnos']);
    }


    public function editar(string $idGrupo)
    {
        $grupo = DB::table('grupo')->where('id', $idGrupo)->get();

        return view('administrador/grupo/editar', compact('grupo'));
    }


    public function updateDatosAsignatura(Request $request, string $idGrupo)
    {
        $asignatura = GrupoModel::findOrFail($idGrupo);

        $asignatura->nombre = ucwords(strtolower($request->nombre));
        $asignatura->objetivo = ucwords(strtolower($request->objetivo));
        $asignatura->intencionDidactica = ucwords(strtolower($request->intencionDidactica));
        $asignatura->turno = $request->turno;
        $asignatura->semestre = $request->semestre;
        $asignatura->componente = ucwords(strtolower($request->componente));
        $asignatura->creditos = $request->creditos;
        $asignatura->horasDocente = $request->horasDocente;
        $asignatura->horasEstudioIndependiente = $request->horasEstudioIndependiente;
        $asignatura->calificacionAprobatoria = $request->calificacionAprobatoria;

        if ($request->hasFile('imagen') && $request->file('imagen')->isValid()) {
            $asignatura->imagen = $request->imagen;
        }

        $asignatura->estatus = "En revisión";
        $asignatura->updated_at = now();

        $asignatura->save();

        return redirect('/asignatura/index');
    }


    public function eliminarAsignatura(string $idAsignatura)
    {
        $asignatura = AsignaturaModel::findOrFail($idAsignatura);
        $asignatura->delete();
        return redirect()->back();
    }


}

