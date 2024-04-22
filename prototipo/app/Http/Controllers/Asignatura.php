<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class Asignatura extends Controller
{
    public function index()
    {
        $asignaturas = DB::table('asignatura_docente')
            ->join('asignatura', 'asignatura_docente.id_asignatura', '=', 'asignatura.id')
            ->join('docente', 'asignatura_docente.id_docente', '=', 'docente.id')
            ->join('usuario', 'docente.id_Usuario', '=', 'usuario.id')
            ->get();

        return view('administrador/asignatura/index', compact('asignaturas'));
    }

    public function planeacion_ver(string $idAsignatura, string $idDocente)
    {
        $asignatura = DB::table('asignatura_docente')
            ->join('asignatura', 'asignatura_docente.id_asignatura', '=', 'asignatura.id')
            ->join('docente', 'asignatura_docente.id_docente', '=', 'docente.id')
            ->join('usuario', 'docente.id_Usuario', '=', 'usuario.id')
            ->where('asignatura_docente.id_asignatura', $idAsignatura)
            ->where('asignatura_docente.id_docente', $idDocente)
            ->get();

        $bloques = DB::table('bloque')
            ->join('asignatura', 'bloque.id_Asignatura', '=', 'asignatura.id')
            ->where('bloque.id_Asignatura', $idAsignatura)
            ->get();


        $progresiones = DB::table('evaluacion')
            ->select(
                '*',
                'bloque.nombre as nombreBloque'
            )
            ->join('progresion_evaluacion', 'evaluacion.id', '=', 'progresion_evaluacion.id_Evaluacion')
            ->join('progresion', 'progresion_evaluacion.id_Progresion', '=', 'progresion.id')
            ->join('bloque_progresion', 'progresion.id', '=', 'bloque_progresion.id_Progresion')
            ->join('bloque', 'bloque_progresion.id_Bloque', '=', 'bloque.id')
            ->join('asignatura', 'bloque.id_Asignatura', '=', 'asignatura.id')
            ->join('asignatura_docente', 'asignatura.id', '=', 'asignatura_docente.id_Asignatura')
            ->where('asignatura_docente.id_asignatura', $idAsignatura)
            ->where('asignatura_docente.id_docente', $idDocente)
            ->orderBy('bloque.numero', 'asc')
            ->get();


        return view('administrador/asignatura/planeacion/ver', compact('asignatura', 'bloques', 'progresiones'));
    }


    public function agregarDatosAsignatura()
    {
        return view('asignatura/agregar/datosAsignatura');
    }

    public function agregarDatosUnidad(string $numeroUnidad)
    {
        if ($_POST['unidades'] >= $numeroUnidad) {
            $numeroUnidad = $numeroUnidad + 1;
            return view('asignatura/agregar/datosUnidad', compact('numeroUnidad'));
        } else {
            $totalUnidades = $_POST['unidades'];

            $datosUnidades = [];

            for ($i = 1; $i <= $totalUnidades; $i++) {
                $datosUnidad = [];
                $unidadNombre = $_POST["Unidad_${i}_nombre"];
                $datosUnidad['nombre'] = $unidadNombre;
                $datosUnidad['competencia'] = $_POST["Unidad_${i}_competencia"];
                $datosUnidad['porcentajeCalificacionFinal'] = $_POST["Unidad_${i}_porcentajeCalificacionFinal"];
                $datosUnidad['calificacionMaxima'] = $_POST["Unidad_${i}_calificacionMaxima"];
                $datosUnidad['calificacionMinima'] = $_POST["Unidad_${i}_calificacionMinima"];

                if (!empty($unidadNombre)) {
                    for ($j = 1; $j <= 5; $j++) {
                        $datosTema = [];
                        $temaNombre = $_POST["Unidad_${i}_tema_${j}_nombre"];
                        $datosTema['nombre'] = $temaNombre;

                        if (!empty($temaNombre)) {
                            for ($k = 1; $k <= 5; $k++) {
                                $datosSubtema = [];
                                $subtemaNombre = $_POST["Unidad_${i}_tema_${j}_subtema_${k}_nombre"];
                                $datosSubtema['nombre'] = $subtemaNombre;

                                if (!empty($subtemaNombre)) {
                                    foreach ($_POST as $campo => $valor) {
                                        if (strpos($campo, "Unidad_${i}_tema_${j}_subtema_${k}") === 0) {
                                            $nombreCampo = substr($campo, strlen("Unidad_${i}_tema_${j}_subtema_${k}") + 1);
                                            $datosSubtema[$nombreCampo] = $valor;
                                        }
                                    }
                                    $datosTema["Subtema_$k"] = $datosSubtema;
                                }
                            }
                            $datosUnidad["Tema_$j"] = $datosTema;
                        }
                    }
                    $datosUnidades["Unidad_$i"] = $datosUnidad;
                }
            }

            $datosAsignatura = [];
            $datosAsignatura["asignatura"] = $_POST["asignatura"];
            $datosAsignatura["objetivo"] = $_POST["objetivo"];
            $datosAsignatura["intencionDidactica"] = $_POST["intencionDidactica"];
            $datosAsignatura["unidades"] = $_POST["unidades"];
            $datosAsignatura["creditos"] = $_POST["creditos"];
            $datosAsignatura["horasPracticas"] = $_POST["horasPracticas"];
            $datosAsignatura["horasTeoricas"] = $_POST["horasTeoricas"];
            $datosAsignatura["calificacionAprobatoria"] = $_POST["calificacionAprobatoria"];

            print_r($datosUnidades['Unidad_1']['Tema_1']);
            return view('asignatura/agregar/previsualizar', compact('datosAsignatura', 'datosUnidades'));
        }
    }


    public function insertDatos()
    {
        print_r($_POST);
    }
}
