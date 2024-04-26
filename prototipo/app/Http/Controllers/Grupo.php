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
        $grupos = DB::table('grupo')
            ->select(
                'grupo.id',
                'grupo.semestre',
                'periodo.fechaInicio as fechaInicioPeriodo',
                'periodo.fechaFin as fechaFinPeriodo',
                'usuario.primerNombre as nombreDocente',
                'usuario.segundoNombre as segundoNombreDocente',
                'usuario.apellidoPaterno as apellidoPaternoDocente',
                'usuario.apellidoMaterno as apellidoMaternoDocente',
                'asignatura.nombre as nombreAsignatura'
            )
            ->join('periodo', 'grupo.id_Periodo', '=', 'periodo.id')
            ->join('asignatura_docente', 'grupo.id_Asignatura_Docente', '=', 'asignatura_docente.id')
            ->join('docente', 'asignatura_docente.id_Docente', '=', 'docente.id')
            ->join('usuario', 'docente.id_Usuario', '=', 'usuario.id')
            ->join('asignatura', 'asignatura_docente.id_Asignatura', '=', 'asignatura.id')
            ->paginate(10);


        return view('administrador/grupo/index', compact('grupos'));
    }


    public function busqueda()
    {
        $grupos = DB::table('grupo')
            ->select(
                'grupo.id',
                'grupo.semestre',
                'periodo.fechaInicio as fechaInicioPeriodo',
                'periodo.fechaFin as fechaFinPeriodo',
                'usuario.primerNombre as nombreDocente',
                'usuario.segundoNombre as segundoNombreDocente',
                'usuario.apellidoPaterno as apellidoPaternoDocente',
                'usuario.apellidoMaterno as apellidoMaternoDocente',
                'asignatura.nombre as nombreAsignatura'
            )
            ->join('periodo', 'grupo.id_Periodo', '=', 'periodo.id')
            ->join('asignatura_docente', 'grupo.id_Asignatura_Docente', '=', 'asignatura_docente.id')
            ->join('docente', 'asignatura_docente.id_Docente', '=', 'docente.id')
            ->join('usuario', 'docente.id_Usuario', '=', 'usuario.id')
            ->join('asignatura', 'asignatura_docente.id_Asignatura', '=', 'asignatura.id')
            ->where('asignatura.nombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('usuario.primerNombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('usuario.segundoNombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('usuario.apellidoPaterno', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('usuario.apellidoMaterno', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('grupo.semestre', 'like', '%' . $_GET['valorBusqueda'] . '%')
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

        return view('administrador/grupo/agregar', compact('asignaturas', 'docentes', 'alumnos', 'periodos'));
    }


    public function insert(Request $request)
    {
        $validatedData = $request->validate([
            'id_Asignatura' => 'required',
            'id_Docente' => 'required',
            'id_Periodo' => 'required',
            'semestre' => 'required',
            'listaAlumnos' => 'required'
        ]);

        $listaAlumnos = json_decode($validatedData['listaAlumnos'], true);

        $asignaturaDocente = new Asignatura_DocenteModel();
        $asignaturaDocente->id_Asignatura = $validatedData['id_Asignatura'];
        $asignaturaDocente->id_Docente = $validatedData['id_Docente'];
        $asignaturaDocente->save();

        $grupo = new GrupoModel();
        $grupo->id_Asignatura_Docente = $asignaturaDocente->id;
        $grupo->id_Periodo = $validatedData['id_Periodo'];
        $grupo->semestre = $validatedData['semestre'];
        $grupo->save();

        foreach ($listaAlumnos as $alumno) {
            $grupoAlumno = new Grupo_AlumnoModel();
            $grupoAlumno->id_Grupo = $grupo->id;
            $grupoAlumno->id_Alumno = $alumno['id'];
            $grupoAlumno->save();
        }

        return redirect()->route('grupo.index');
    }



    public function editar(string $idGrupo)
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

        $grupo = DB::table('grupo')
            ->select(
                'grupo.id',
                'grupo.semestre',
                'periodo.id as idPeriodo',
                'periodo.fechaInicio as fechaInicioPeriodo',
                'periodo.fechaFin as fechaFinPeriodo',
                'usuario.id as idAlumno',
                'usuario.primerNombre as nombreAlumno',
                'usuario.segundoNombre as segundoNombreAlumno',
                'usuario.apellidoPaterno as apellidoPaternoAlumno',
                'usuario.apellidoMaterno as apellidoMaternoAlumno',
                'usuario2.id as idDocente',
                'usuario2.primerNombre as nombreDocente',
                'usuario2.segundoNombre as segundoNombreDocente',
                'usuario2.apellidoPaterno as apellidoPaternoDocente',
                'usuario2.apellidoMaterno as apellidoMaternoDocente',
                'asignatura.nombre as nombreAsignatura',
                'asignatura.id as idAsignatura',
                'asignatura_docente.id as idAsignaturaDocente',
                'grupo_alumno.id as idgrupoAlumno'
            )
            ->join('periodo', 'grupo.id_Periodo', '=', 'periodo.id')
            ->join('grupo_alumno', 'grupo.id', '=', 'grupo_alumno.id_Grupo')
            ->join('alumno', 'grupo_alumno.id_Alumno', '=', 'alumno.id')
            ->join('usuario', 'alumno.id_Usuario', '=', 'usuario.id')
            ->join('asignatura_docente', 'grupo.id_Asignatura_Docente', '=', 'asignatura_docente.id')
            ->join('docente', 'asignatura_docente.id_Docente', '=', 'docente.id')
            ->join('usuario as usuario2', 'docente.id_Usuario', '=', 'usuario2.id')
            ->join('asignatura', 'asignatura_docente.id_Asignatura', '=', 'asignatura.id')
            ->where('grupo.id',$idGrupo)
            ->paginate(10);

        return view('administrador/grupo/editar', compact('asignaturas', 'docentes', 'alumnos', 'periodos', 'grupo'));
    }


    public function update(Request $request, string $idGrupo)
    {
        $asignaturaDocente = Asignatura_DocenteModel::findOrFail($request->input('id_asignatura_docente_anterior'));
        $asignaturaDocente->id_Docente = $request->input('id_Docente');
        $asignaturaDocente->id_Asignatura = $request->input('id_Asignatura');
        $asignaturaDocente->save();
    
        $grupo = GrupoModel::findOrFail($idGrupo);
        $grupo->id_Periodo = $request->input('id_Periodo');
        $grupo->semestre = $request->input('semestre');
        $grupo->save();
    
        Grupo_AlumnoModel::where('id_Grupo', $idGrupo)->delete();


        $validatedData = $request->validate([
            'listaAlumnos' => 'required'
        ]);

        $listaAlumnos = json_decode($validatedData['listaAlumnos'], true);
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
        Grupo_AlumnoModel::where('id_Grupo', $idGrupo)->delete();
        GrupoModel::where('id', $idGrupo)->delete();
        return redirect()->route('grupo.index');
    }


    public function ver(string $idGrupo)
    {
        $grupo = DB::table('grupo')
            ->select(
                'grupo.id',
                'grupo.semestre',
                'periodo.id as idPeriodo',
                'periodo.fechaInicio as fechaInicioPeriodo',
                'periodo.fechaFin as fechaFinPeriodo',
                'usuario.id as idAlumno',
                'usuario.primerNombre as nombreAlumno',
                'usuario.segundoNombre as segundoNombreAlumno',
                'usuario.apellidoPaterno as apellidoPaternoAlumno',
                'usuario.apellidoMaterno as apellidoMaternoAlumno',
                'usuario2.id as idDocente',
                'usuario2.primerNombre as nombreDocente',
                'usuario2.segundoNombre as segundoNombreDocente',
                'usuario2.apellidoPaterno as apellidoPaternoDocente',
                'usuario2.apellidoMaterno as apellidoMaternoDocente',
                'asignatura.nombre as nombreAsignatura',
                'asignatura.id as idAsignatura',
                'asignatura_docente.id as idAsignaturaDocente',
                'grupo_alumno.id as idgrupoAlumno'
            )
            ->join('periodo', 'grupo.id_Periodo', '=', 'periodo.id')
            ->join('grupo_alumno', 'grupo.id', '=', 'grupo_alumno.id_Grupo')
            ->join('alumno', 'grupo_alumno.id_Alumno', '=', 'alumno.id')
            ->join('usuario', 'alumno.id_Usuario', '=', 'usuario.id')
            ->join('asignatura_docente', 'grupo.id_Asignatura_Docente', '=', 'asignatura_docente.id')
            ->join('docente', 'asignatura_docente.id_Docente', '=', 'docente.id')
            ->join('usuario as usuario2', 'docente.id_Usuario', '=', 'usuario2.id')
            ->join('asignatura', 'asignatura_docente.id_Asignatura', '=', 'asignatura.id')
            ->where('grupo.id',$idGrupo)
            ->paginate(10);

        return view('administrador/grupo/ver', compact('grupo'));
    }

}

