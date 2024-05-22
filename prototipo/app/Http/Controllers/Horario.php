<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

use App\Models\AlumnoModel;

use App\Models\DocenteModel;


class Horario extends Controller
{
    public function horario_alumno()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        // el id del alumno se sacara de la sesion del alumno

        //retorna los grupos, materias, nombre completo del alumno, dias y horas que toma una materia, de un alumno especifico
        $horario = DB::table('alumno as al')
            ->select(
                'g.id',
                'a.nombre',
                'u.apellidoMaterno',
                'h.dia',
                'h.horaInicio',
                'h.horaFin'
            )
            ->join('Users as u', 'al.id_Usuario', '=', 'u.id')
            ->join('grupo_alumno as ga', 'al.id', '=', 'ga.id_alumno')
            ->join('grupo as g', 'ga.id_Grupo', '=', 'g.id')
            ->join('asignatura_docente as ad', 'g.id_Asignatura_Docente', '=', 'ad.id')
            ->join('docente as d', 'ad.id_docente', '=', 'd.id')
            ->join('asignatura as a', 'ad.id_asignatura', '=', 'a.id')
            ->join('horario_asignatura as ha', 'a.id', '=', 'ha.id_asignatura')
            ->join('horario as h', 'ha.id_horario', '=', 'h.id')
            ->join('periodo as pe', 'g.id_Periodo', '=', 'pe.id')
            ->where('al.id', session('user.id'))
            ->get();

        $ids_asignaturas = DB::table('alumno as al')
            ->select('a.id as id_asignatura')
            ->join('Users as u', 'al.id_Usuario', '=', 'u.id')
            ->join('grupo_alumno as ga', 'al.id', '=', 'ga.id_alumno')
            ->join('grupo as g', 'ga.id_Grupo', '=', 'g.id')
            ->join('asignatura_docente as ad', 'g.id_Asignatura_Docente', '=', 'ad.id')
            ->join('docente as d', 'ad.id_docente', '=', 'd.id')
            ->join('asignatura as a', 'ad.id_asignatura', '=', 'a.id')
            ->join('horario_asignatura as ha', 'a.id', '=', 'ha.id_asignatura')
            ->join('horario as h', 'ha.id_horario', '=', 'h.id')
            ->join('periodo as pe', 'g.id_Periodo', '=', 'pe.id')
            ->where('al.id',session('user.id'))
            ->distinct()
            ->pluck('id_asignatura');

        $ids_docentes = DB::table('alumno as al')
            ->select('d.id as id_docente')
            ->join('Users as u', 'al.id_Usuario', '=', 'u.id')
            ->join('grupo_alumno as ga', 'al.id', '=', 'ga.id_alumno')
            ->join('grupo as g', 'ga.id_Grupo', '=', 'g.id')
            ->join('asignatura_docente as ad', 'g.id_Asignatura_Docente', '=', 'ad.id')
            ->join('docente as d', 'ad.id_docente', '=', 'd.id')
            ->join('asignatura as a', 'ad.id_asignatura', '=', 'a.id')
            ->join('horario_asignatura as ha', 'a.id', '=', 'ha.id_asignatura')
            ->join('horario as h', 'ha.id_horario', '=', 'h.id')
            ->join('periodo as pe', 'g.id_Periodo', '=', 'pe.id')
            ->where('al.id', session('user.id'))
            ->distinct()
            ->pluck('id_docente');

        $alumno = AlumnoModel::select('u.primerNombre', 'u.segundoNombre', 'u.apellidoPaterno', 'u.apellidoMaterno')
            ->join('Users as u', 'alumno.id_Usuario', '=', 'u.id')
            ->where('alumno.id', session('user.id'))
            ->first();


        $datos_maestros = [];

        foreach ($ids_asignaturas as $id_asignatura) {
            foreach ($ids_docentes as $id_docente) {
                $datos_maestros[] = DB::table('docente as d')
                    ->select('u.primerNombre', 'u.apellidoPaterno', 'u.apellidoMaterno')
                    ->join('Users as u', 'd.id_Usuario', '=', 'u.id')
                    ->join('asignatura_docente as ad', 'd.id', '=', 'ad.id_docente')
                    ->join('asignatura as a', 'ad.id_asignatura', '=', 'a.id')
                    ->where('d.id', $id_docente)
                    ->where('a.id', $id_asignatura)
                    ->get();
            }
        }

        return view('alumno/horario/ver_horario_alumno', compact('horario', 'datos_maestros', 'alumno'));
    }

    public function horario_docente()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        // retorna el nombre del docente
        $docente = DocenteModel::select('u.primerNombre', 'u.segundoNombre', 'u.apellidoPaterno', 'u.apellidoMaterno')
            ->join('Users as u', 'docente.id_Usuario', '=', 'u.id')
            ->where('docente.id', session('user.id'))
            ->first();

        //Retorna todas las materias que imparte un docente especifico
        // y las horas en las que lo imparte
        $materias = DB::table('asignatura_docente as ad')
            ->select('a.nombre', 'h.dia', 'h.horaInicio', 'h.horaFin')
            ->join('asignatura as a', 'ad.id_Asignatura', '=', 'a.id')
            ->join('horario_asignatura as ha', 'a.id', '=', 'ha.id_Asignatura')
            ->join('horario as h', 'ha.id_Horario', '=', 'h.id')
            ->where('ad.id_Docente', session('user.id'))
            ->get();

        return view('docente/horario/ver_horario_docente', compact('docente', 'materias'));
    }

    public function ver_horarios_administrador()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }
    }

    public function modificar_horario_administrador()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }
    }

}