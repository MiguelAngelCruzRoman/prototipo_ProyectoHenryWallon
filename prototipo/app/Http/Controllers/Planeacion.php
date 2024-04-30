<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Password;

class Users extends Controller
{

    public function perfil()
    {
        $user = User::find(session('user.id'));

    // Generar el token de restablecimiento de contraseña
    $token = Password::createToken($user);

    return view('administrador/users/perfil', compact('user', 'token'));

    }

    public function index()
    {
        $user = DB::table('users')
            ->where('id', session('user.id'));

        return view('administrador/users/index', compact('user'));
    }


    public function busqueda()
    {
        $asignaturas = DB::table('asignatura')
            ->where('nombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('componente', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('semestre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/asignatura/index', compact('asignaturas'));
    }



    public function agregarDatosAsignatura()
    {
        return view('administrador/asignatura/agregar');
    }


    public function insertDatosAsignatura(Request $request)
    {
        $asignatura = new User();
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
        $asignatura->imagen = $request->imagen;
        $asignatura->estatus = "Sin planeación";
        $asignatura->created_at = now();
        $asignatura->updated_at = now();

        $asignatura->save();

        return redirect('/asignatura/index');
    }



    public function verAsignatura(string $idAsignatura)
    {

        $asignatura = DB::table('asignatura')->where('id', $idAsignatura)->get();

        return view('administrador/asignatura/ver', compact('asignatura'));
    }

    public function editarDatosAsignatura(string $idAsignatura)
    {
        $asignatura = DB::table('asignatura')->where('id', $idAsignatura)->get();

        return view('administrador/asignatura/editar', compact('asignatura'));
    }


    public function updateDatosAsignatura(Request $request, string $idAsignatura)
    {
        $asignatura = User::findOrFail($idAsignatura);

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

        //$asignatura->estatus = "En revisión";
        $asignatura->updated_at = now();

        $asignatura->save();

        return redirect('/asignatura/index');
    }


    public function eliminarAsignatura(string $idAsignatura)
    {
        $asignatura = User::findOrFail($idAsignatura);
        $asignatura->delete();
        return redirect()->back();
    }


    public function verPlaneacionAsignatura(string $idAsignatura, string $idDocente)
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

    public function agregarDatosBloque(string $numeroBloque)
    {
        if ($_POST['bloques'] >= $numeroBloque) {
            $numeroBloque = $numeroBloque + 1;
            return view('administrador/asignatura/agregar/datosBloque', compact('numeroBloque'));
        } else {
            $totalBloques = $_POST['bloques'];

            $datosBloques = [];

            for ($i = 1; $i <= $totalBloques; $i++) {
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
