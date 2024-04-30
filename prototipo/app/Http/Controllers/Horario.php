<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class Horario extends Controller
{
    //tcpdf, dompdf, fpdf, html2pdf, xhtml
    public function horario_alumno($id_alumno){
        // el id del alumno se sacara de la sesion del alumno
        
        //retorna los grupos, materias, nombre completo del alumno, dias y horas que toma una materia, de un alumno especifico
        $horario = DB::table('alumno as al')
        ->select('g.id, a.nombre, u.primerNombre, u.segundoNombre, u.apellidoPaterno, u.apellidoMaterno, 
        h.dia, h.horaInicio, h.horaFin')
        ->join('sers as u','al.id_Usuario','=','u.id')
        ->join('grupo_alumno as ga','al.id','=','ga.id_alumno')
        ->join('grupo as g','ga.id_Grupo','=','g.id')
        ->join('asignatura_docente as ad','g.id_Asignatura_Docente','=','ad.id')
        ->join('docente as d','ad.id_docente','=','d.id')
        ->join('asignatura as a','ad.id_asignatura','=','a.id')
        ->join('horario_asignatura as ha','a.id','=','ha.id_asignatura')
        ->join('horario as h','ha.id_horario','=','h.id')
        ->join('periodo as pe','g.id_Periodo','=','pe.id')
        ->where('al.id',$id_alumno)
        ->get();

        $ids_asignaturas =  DB::table('alumno as al')
        ->select('a.id as id_asignatura')
        ->join('Users as u','al.id_Usuario','=','u.id')
        ->join('grupo_alumno as ga','al.id','=','ga.id_alumno')
        ->join('grupo as g','ga.id_Grupo','=','g.id')
        ->join('asignatura_docente as ad','g.id_Asignatura_Docente','=','ad.id')
        ->join('docente as d','ad.id_docente','=','d.id')
        ->join('asignatura as a','ad.id_asignatura','=','a.id')
        ->join('horario_asignatura as ha','a.id','=','ha.id_asignatura')
        ->join('horario as h','ha.id_horario','=','h.id')
        ->join('periodo as pe','g.id_Periodo','=','pe.id')
        ->where('al.id',$id_alumno)
        ->distinct()
        ->pluck('id_asignatura');

        $ids_docentes =  DB::table('alumno as al')
        ->select('d.id as id_docente')
        ->join('Users as u','al.id_Usuario','=','u.id')
        ->join('grupo_alumno as ga','al.id','=','ga.id_alumno')
        ->join('grupo as g','ga.id_Grupo','=','g.id')
        ->join('asignatura_docente as ad','g.id_Asignatura_Docente','=','ad.id')
        ->join('docente as d','ad.id_docente','=','d.id')
        ->join('asignatura as a','ad.id_asignatura','=','a.id')
        ->join('horario_asignatura as ha','a.id','=','ha.id_asignatura')
        ->join('horario as h','ha.id_horario','=','h.id')
        ->join('periodo as pe','g.id_Periodo','=','pe.id')
        ->where('al.id',$id_alumno)
        ->distinct()
        ->pluck('id_docente');

        $datos_maestros = [];

        foreach ($ids_asignaturas as $id_asignatura){
            foreach ($ids_docentes as $id_docente){
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

        return view('alumno/horario/ver_horario_alumno',compact('horario','datos_maestros')); 
    }

}