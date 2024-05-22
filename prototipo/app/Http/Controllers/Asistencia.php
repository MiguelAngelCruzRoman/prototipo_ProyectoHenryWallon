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

    public function descargarPDF($asignatura)
    {
        // Obtener datos de asistencias de la base de datos
        $asistencias = DB::table('asistencia')
            ->select(
                'ua.primerNombre as nombreAlumno',
                'ua.segundoNombre as segundoNombreAlumno',
                'ua.apellidoPaterno as apellidoPAlumno',
                'ua.apellidoMaterno as apellidoMAlumno',
                'alumno.id as idAlumno',
                'grupo.id as id_Grupo',
                'asistencia.estatus as asistenciaAlumno',
                'asistencia.fecha as fechaAsistencia',
                'asignatura.nombre as nombreAsignatura'
            )
            ->join('grupo_alumno', 'grupo_alumno.id', '=', 'asistencia.id_grupo_alumno')
            ->join('alumno', 'grupo_alumno.id_alumno', '=', 'alumno.id')
            ->join('users as ua', 'alumno.id_usuario', '=', 'ua.id')
            ->join('grupo', 'grupo_alumno.id_grupo', '=', 'grupo.id')
            ->join('asignatura_docente', 'grupo.id_asignatura_docente', '=', 'asignatura_docente.id')
            ->join('asignatura', 'asignatura_docente.id_asignatura', '=', 'asignatura.id')
            ->where('asignatura.nombre', $asignatura)
            ->orderBy('ua.apellidoPaterno')
            ->orderBy('ua.apellidoMaterno')
            ->orderBy('ua.primerNombre')
            ->orderBy('ua.segundoNombre')
            ->get();
    
        // Fecha para el reporte
        $fechaReporte = date('Y-m-d');
    
        // Preparar el HTML para el PDF
        $html = '<html><head><style>';
        $html .= 'body { font-family: Arial, sans-serif; font-size: 12px; }';
        $html .= 'table { width: 100%; border-collapse: collapse; }';
        $html .= 'th, td { border: 1px solid black; padding: 8px; text-align: left; }';
        $html .= '.header { width: 100%; margin-bottom: 20px; }';
        $html .= '.logo { float: left; width: 20%; }';
        $html .= '.school-info { width: 80%; text-align: center; }';
        $html .= '.footer { position: fixed; bottom: 10px; left: 0px; right: 0px; height: 30px; font-size: 10px; }';
        $html .= '</style></head><body>';
        $html .= '<div class="header">';
        $html .= '<div class="logo"><img src="' . public_path('logoHenryWallon.png') . '" alt="Logo" height="75" width="75"></div>'; // Aquí se utiliza public_path() para obtener la ruta absoluta al archivo
        $html .= '<div class="school-info"><strong>Instituto Henry Wallon</strong><br>Nivel Preparatoria<br>C.C.T 21PBH0062R<br>Calle Vicente Guerrero #506 C.P. 73870 Teziutlán, Pue.</div>';
        $html .= '</div>';
        $html .= '<h1 style="text-align: center; font-size: 20px; margin-bottom: 10px;">Reporte de Asistencias</h1>';
        $html .= '<h2 style="text-align: center; font-size: 16px; margin-bottom: 20px;">Materia: ' . $asignatura . '</h2>';
        $html .= '<table>';
        $html .= '<thead><tr><th>ID Alumno</th><th>Nombre Estudiante</th><th>Asistencia</th><th>Fecha</th></tr></thead>';
        $html .= '<tbody>';
        foreach ($asistencias as $asistencia) {
            $html .= '<tr>';
            $html .= '<td>' . $asistencia->idAlumno . '</td>';
            $html .= '<td>' . htmlspecialchars($asistencia->nombreAlumno . ' ' . $asistencia->segundoNombreAlumno . ' ' . $asistencia->apellidoPAlumno . ' ' . $asistencia->apellidoMAlumno) . '</td>';
            $html .= '<td>' . $asistencia->asistenciaAlumno . '</td>';
            $html .= '<td>' . $asistencia->fechaAsistencia . '</td>';
            $html .= '</tr>';
        }
        $html .= '</tbody></table>';
        $html .= '<div class="footer">';
        $html .= 'Fecha del Reporte: ' . $fechaReporte ;
        $html .= '</div>';
        $html .= '</body></html>';
    
        // Generar y descargar el PDF
        $pdf = PDF::loadHTML($html);
        return $pdf->stream('Reporte Asistencia'. ' ' . $asignatura . '.pdf');
    }
    
}
