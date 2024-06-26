<?php

namespace App\Http\Controllers;

use App\Models\Asignatura_DocenteModel;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use App\Models\AsignaturaModel;
use App\Models\Grupo_AlumnoModel;
use App\Models\GrupoModel;
use Database\Factories\Grupo_AlumnoModelFactory;

class Grupo extends Controller
{


    public function index()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $grupos = DB::table('grupo')
            ->select(
                'grupo.id',
                'grupo.semestre',
                'periodo.fechaInicio as fechaInicioPeriodo',
                'periodo.fechaFin as fechaFinPeriodo',
                'users.primerNombre as nombreDocente',
                'users.segundoNombre as segundoNombreDocente',
                'users.apellidoPaterno as apellidoPaternoDocente',
                'users.apellidoMaterno as apellidoMaternoDocente',
                'asignatura.nombre as nombreAsignatura'
            )
            ->join('periodo', 'grupo.id_Periodo', '=', 'periodo.id')
            ->join('asignatura_docente', 'grupo.id_Asignatura_Docente', '=', 'asignatura_docente.id')
            ->join('docente', 'asignatura_docente.id_Docente', '=', 'docente.id')
            ->join('users', 'docente.id_Usuario', '=', 'users.id')
            ->join('asignatura', 'asignatura_docente.id_Asignatura', '=', 'asignatura.id')
            ->paginate(10);


        $asignaturas = DB::table('asignatura')
            ->select('id', 'nombre')
            ->get();

        $docentes = DB::table('docente')
            ->select('docente.id', 'users.primerNombre', 'users.segundoNombre', 'users.apellidoPaterno', 'users.apellidoMaterno')
            ->join('users', 'docente.id_Usuario', '=', 'users.id')
            ->get();

        $alumnos = DB::table('alumno')
            ->select('alumno.id', 'users.primerNombre', 'users.segundoNombre', 'users.apellidoPaterno', 'users.apellidoMaterno')
            ->join('users', 'alumno.id_Usuario', '=', 'users.id')
            ->get();

        $periodos = DB::table('periodo')
            ->select('id', 'fechaInicio', 'fechaFin')
            ->where('tipo', 'CicloEscolar')
            ->get();

        return view('administrador/grupo/index', compact('grupos', 'asignaturas', 'docentes', 'alumnos', 'periodos'));
    }


    public function busqueda(Request $request)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $request->validate([
            'valorBusqueda' => 'required|string',
        ]);

        $grupos = DB::table('grupo')
            ->select(
                'grupo.id',
                'grupo.semestre',
                'periodo.fechaInicio as fechaInicioPeriodo',
                'periodo.fechaFin as fechaFinPeriodo',
                'users.primerNombre as nombreDocente',
                'users.segundoNombre as segundoNombreDocente',
                'users.apellidoPaterno as apellidoPaternoDocente',
                'users.apellidoMaterno as apellidoMaternoDocente',
                'asignatura.nombre as nombreAsignatura'
            )
            ->join('periodo', 'grupo.id_Periodo', '=', 'periodo.id')
            ->join('asignatura_docente', 'grupo.id_Asignatura_Docente', '=', 'asignatura_docente.id')
            ->join('docente', 'asignatura_docente.id_Docente', '=', 'docente.id')
            ->join('users', 'docente.id_Usuario', '=', 'users.id')
            ->join('asignatura', 'asignatura_docente.id_Asignatura', '=', 'asignatura.id')
            ->where('asignatura.nombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('users.primerNombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('users.segundoNombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('users.apellidoPaterno', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('users.apellidoMaterno', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('grupo.semestre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        $asignaturas = DB::table('asignatura')
            ->select('id', 'nombre')
            ->get();

        $docentes = DB::table('docente')
            ->select('docente.id', 'users.primerNombre', 'users.segundoNombre', 'users.apellidoPaterno', 'users.apellidoMaterno')
            ->join('users', 'docente.id_Usuario', '=', 'users.id')
            ->get();

        $alumnos = DB::table('alumno')
            ->select('alumno.id', 'users.primerNombre', 'users.segundoNombre', 'users.apellidoPaterno', 'users.apellidoMaterno')
            ->join('users', 'alumno.id_Usuario', '=', 'users.id')
            ->get();

        $periodos = DB::table('periodo')
            ->select('id', 'fechaInicio', 'fechaFin')
            ->where('tipo', 'CicloEscolar')
            ->get();

        return view('administrador/grupo/index', compact('grupos', 'asignaturas', 'docentes', 'alumnos', 'periodos'));
    }



    public function agregar()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $asignaturas = DB::table('asignatura')
            ->select('id', 'nombre')
            ->get();

        $docentes = DB::table('docente')
            ->select('docente.id', 'users.primerNombre', 'users.segundoNombre', 'users.apellidoPaterno', 'users.apellidoMaterno')
            ->join('users', 'docente.id_Usuario', '=', 'users.id')
            ->get();

        $alumnos = DB::table('alumno')
            ->select('alumno.id', 'users.primerNombre', 'users.segundoNombre', 'users.apellidoPaterno', 'users.apellidoMaterno')
            ->join('users', 'alumno.id_Usuario', '=', 'users.id')
            ->get();

        $periodos = DB::table('periodo')
            ->select('id', 'fechaInicio', 'fechaFin')
            ->where('tipo', 'CicloEscolar')
            ->get();

        return view('administrador/grupo/agregar', compact('asignaturas', 'docentes', 'alumnos', 'periodos'));
    }


    public function insert(Request $request)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $validatedData = $request->validate([
            'id_Asignatura' => 'required',
            'id_Docente' => 'required',
            'id_Periodo' => 'required',
            'semestre' => 'required',
            'alumnos' => 'required'
        ]);

       $alumnos = $request->input('alumnos');

        $asignaturaDocente = new Asignatura_DocenteModel();
        $asignaturaDocente->id_Asignatura = $validatedData['id_Asignatura'];
        $asignaturaDocente->id_Docente = $validatedData['id_Docente'];
        $asignaturaDocente->save();

        $grupo = new GrupoModel();
        $grupo->id_Asignatura_Docente = $asignaturaDocente->id;
        $grupo->id_Periodo = $validatedData['id_Periodo'];
        $grupo->semestre = $validatedData['semestre'];
        $grupo->save();

        foreach ($alumnos as $alumno) {
            $grupoAlumno = new Grupo_AlumnoModel();
            $grupoAlumno->id_Grupo = $grupo->id;
            $grupoAlumno->id_Alumno = $alumno;
            $grupoAlumno->save();
        }

        return redirect()->route('grupo.index');
    }



    public function editar(string $idGrupo)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $asignaturas = DB::table('asignatura')
            ->select('id', 'nombre')
            ->get();

        $docentes = DB::table('docente')
            ->select('docente.id', 'users.primerNombre', 'users.segundoNombre', 'users.apellidoPaterno', 'users.apellidoMaterno')
            ->join('users', 'docente.id_Usuario', '=', 'users.id')
            ->get();

        $alumnos = DB::table('alumno')
            ->select('alumno.id', 'users.primerNombre', 'users.segundoNombre', 'users.apellidoPaterno', 'users.apellidoMaterno')
            ->join('users', 'alumno.id_Usuario', '=', 'users.id')
            ->get();

        $periodos = DB::table('periodo')
            ->select('id', 'fechaInicio', 'fechaFin')
            ->where('tipo', 'CicloEscolar')
            ->get();

        $grupo = DB::table('grupo')
            ->select(
                'grupo.id',
                'grupo.semestre',
                'periodo.id as idPeriodo',
                'periodo.fechaInicio as fechaInicioPeriodo',
                'periodo.fechaFin as fechaFinPeriodo',
                'alumno.id as idAlumno',
                'users.primerNombre as nombreAlumno',
                'users.segundoNombre as segundoNombreAlumno',
                'users.apellidoPaterno as apellidoPaternoAlumno',
                'users.apellidoMaterno as apellidoMaternoAlumno',
                'docente.id as idDocente',
                'users2.primerNombre as nombreDocente',
                'users2.segundoNombre as segundoNombreDocente',
                'users2.apellidoPaterno as apellidoPaternoDocente',
                'users2.apellidoMaterno as apellidoMaternoDocente',
                'asignatura.nombre as nombreAsignatura',
                'asignatura.id as idAsignatura',
                'asignatura_docente.id as idAsignaturaDocente',
                'grupo_alumno.id as idgrupoAlumno',
            )
            ->join('periodo', 'grupo.id_Periodo', '=', 'periodo.id')
            ->join('grupo_alumno', 'grupo.id', '=', 'grupo_alumno.id_Grupo')
            ->join('alumno', 'grupo_alumno.id_Alumno', '=', 'alumno.id')
            ->join('users', 'alumno.id_Usuario', '=', 'users.id')
            ->join('asignatura_docente', 'grupo.id_Asignatura_Docente', '=', 'asignatura_docente.id')
            ->join('docente', 'asignatura_docente.id_Docente', '=', 'docente.id')
            ->join('users as users2', 'docente.id_Usuario', '=', 'users2.id')
            ->join('asignatura', 'asignatura_docente.id_Asignatura', '=', 'asignatura.id')
            ->where('grupo.id', $idGrupo) ->get();

        return view('administrador/grupo/editar', compact('asignaturas', 'docentes', 'alumnos', 'periodos', 'grupo'));
    }


    public function update(Request $request, string $idGrupo)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        
    
        $asignaturaDocente = Asignatura_DocenteModel::findOrFail($request->input('id_asignatura_docente_anterior'));
        $asignaturaDocente->id_Asignatura = $request->input('id_Asignatura');
        $asignaturaDocente->id_Docente = $request->input('id_Docente');
        $asignaturaDocente->save();

        $grupo = GrupoModel::findOrFail($idGrupo);
        $grupo->id_Periodo = $request->input('id_Periodo');
        $grupo->semestre = $request->input('semestre');
        $grupo->save();

        Grupo_AlumnoModel::where('id_Grupo', $idGrupo)->delete();

        $listaAlumnos = json_decode($request->input('listaAlumnos'), true);
        
        foreach ($listaAlumnos as $alumno) {
            $grupoAlumno = new Grupo_AlumnoModel();
            $grupoAlumno->id_Grupo = $idGrupo;
            $grupoAlumno->id_Alumno = $alumno['id'];
            $grupoAlumno->save();
        }

        return redirect()->route('grupo.index');
    }


    public function eliminar(string $idGrupo)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        Grupo_AlumnoModel::where('id_Grupo', $idGrupo)->delete();
        GrupoModel::where('id', $idGrupo)->delete();
        return redirect()->route('grupo.index');
    }


    public function ver(string $idGrupo)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 
        
        $grupo = DB::table('grupo')
            ->select(
                'grupo.id',
                'grupo.semestre',
                'periodo.id as idPeriodo',
                'periodo.fechaInicio as fechaInicioPeriodo',
                'periodo.fechaFin as fechaFinPeriodo',
                'users.id as idAlumno',
                'users.primerNombre as nombreAlumno',
                'users.segundoNombre as segundoNombreAlumno',
                'users.apellidoPaterno as apellidoPaternoAlumno',
                'users.apellidoMaterno as apellidoMaternoAlumno',
                'users2.id as idDocente',
                'users2.primerNombre as nombreDocente',
                'users2.segundoNombre as segundoNombreDocente',
                'users2.apellidoPaterno as apellidoPaternoDocente',
                'users2.apellidoMaterno as apellidoMaternoDocente',
                'asignatura.nombre as nombreAsignatura',
                'asignatura.id as idAsignatura',
                'asignatura_docente.id as idAsignaturaDocente',
                'grupo_alumno.id as idgrupoAlumno'
            )
            ->join('periodo', 'grupo.id_Periodo', '=', 'periodo.id')
            ->join('grupo_alumno', 'grupo.id', '=', 'grupo_alumno.id_Grupo')
            ->join('alumno', 'grupo_alumno.id_Alumno', '=', 'alumno.id')
            ->join('users', 'alumno.id_Usuario', '=', 'users.id')
            ->join('asignatura_docente', 'grupo.id_Asignatura_Docente', '=', 'asignatura_docente.id')
            ->join('docente', 'asignatura_docente.id_Docente', '=', 'docente.id')
            ->join('users as users2', 'docente.id_Usuario', '=', 'users2.id')
            ->join('asignatura', 'asignatura_docente.id_Asignatura', '=', 'asignatura.id')
            ->where('grupo.id', $idGrupo)
            ->get();

        return view('administrador/grupo/ver', compact('grupo'));
    }
}

