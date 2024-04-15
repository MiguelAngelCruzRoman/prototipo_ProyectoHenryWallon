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
        if ($_POST['unidades'] >= $numeroUnidad) {
            $numeroUnidad = $numeroUnidad + 1;
            return view('materia/agregar/datosUnidad', compact('numeroUnidad'));
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

            $datosMateria = [];
            $datosMateria["materia"] = $_POST["materia"];
            $datosMateria["objetivo"] = $_POST["objetivo"];
            $datosMateria["intencionDidactica"] = $_POST["intencionDidactica"];
            $datosMateria["unidades"] = $_POST["unidades"];
            $datosMateria["creditos"] = $_POST["creditos"];
            $datosMateria["horasPracticas"] = $_POST["horasPracticas"];
            $datosMateria["horasTeoricas"] = $_POST["horasTeoricas"];
            $datosMateria["calificacionAprobatoria"] = $_POST["calificacionAprobatoria"];

            //print_r($datosUnidades['Unidad_1']['Tema_1']);
            return view('materia/agregar/previsualizar', compact('datosMateria', 'datosUnidades'));
        }
    }


    public function insertDatos()
    {
        print_r($_POST);
    }
}
