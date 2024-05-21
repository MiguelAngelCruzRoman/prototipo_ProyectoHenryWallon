<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
 
use Illuminate\Http\Request;
use App\Models\AsignaturaModel;
use Illuminate\Support\Facades\Storage;

class Asignatura extends Controller
{

    public function index()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } else {
            $userData = session('user');
            $rol = $userData['rol'];

            if ($rol === 'Administrador') {
                $asignaturas = DB::table('asignatura')->paginate(10);
                return view('administrador/asignatura/index', compact('asignaturas'));
                
            } elseif ($rol === 'Docente') {
                $asignaturas = DB::table('asignatura_docente')
                ->select('asignatura.id as idAsignatura','asignatura.*', 'docente.*','users.*','asignatura.id as id_asignatura', 'docente.id as id_docente', 'asignatura_docente.id as id_AsignaturaDocente')
                    ->join('asignatura', 'asignatura_docente.id_asignatura', '=', 'asignatura.id')
                    ->join('docente', 'asignatura_docente.id_docente', '=', 'docente.id')
                    ->join('users', 'docente.id_Usuario', '=', 'users.id')
                    ->where('docente.id_Usuario',$userData['id'])
                    ->get();
                return view('docente/asignatura/index', compact('asignaturas'));

            } elseif ($rol === 'Alumno') {
                $asignaturas = DB::table('asignatura_docente')
                ->select('asignatura.*', 'docente.*','users.*','asignatura.id as id_asignatura', 'docente.id as id_docente')
                    ->join('asignatura', 'asignatura_docente.id_asignatura', '=', 'asignatura.id')
                    ->join('docente', 'asignatura_docente.id_docente', '=', 'docente.id')
                    ->join('users', 'docente.id_Usuario', '=', 'users.id')
                    ->where('users.id',8)
                    ->get();
                return view('alumno/asignatura/index', compact('asignaturas'));
            }else{
                return redirect('/');
            }
        }
    }


    public function busqueda(Request $request)
    {     
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $request->validate([
            'valorBusqueda' => 'required|string',
        ]);

        $asignaturas = DB::table('asignatura')
            ->where('nombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('componente', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('semestre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/asignatura/index', compact('asignaturas'));
    }



    public function agregarDatosAsignatura()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        return view('administrador/asignatura/agregar');
    }


    public function insertDatosAsignatura(Request $request)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $request->validate([
            'nombre' => 'required|string|min:3|max:255',
            'turno' => 'required|string|min:7|max:11',
            'semestre' => 'required|string|min:4|max:10',
            'objetivo' => 'required|string|min:3|max:50',
            'intencionDidactica' => 'required|string|min:3|max:50',
            'componente' => 'required|string|min:3|max:50',
            'calificacionAprobatoria' => 'required|integer',
            'horasDocente' => 'required|integer',
            'horasEstudioIndependiente' => 'required|integer',
            'creditos' => 'required|integer',
            'imagen' => 'required',
        ]);


        $asignatura = new AsignaturaModel();
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
        if ($request->hasFile('imagen')) {
            $asignatura->imagen = Storage::disk('public')->put('/asignatura/imagenes', $request->file('imagen'));
        }
        $asignatura->estatus = "Sin planeación";
        $asignatura->created_at = now();
        $asignatura->updated_at = now();

        $asignatura->save();

        return redirect('/asignatura/index');
    }



    public function verAsignatura(string $idAsignatura)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $asignatura = DB::table('asignatura')->where('id', $idAsignatura)->get();

        return view('administrador/asignatura/ver', compact('asignatura'));
    }

    public function editarDatosAsignatura(string $idAsignatura)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $asignatura = DB::table('asignatura')->where('id', $idAsignatura)->get();

        return view('administrador/asignatura/editar', compact('asignatura'));
    }


    public function updateDatosAsignatura(Request $request, string $idAsignatura)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $request->validate([
            'nombre' => 'required|string|min:3|max:255',
            'turno' => 'required|string|min:7|max:11',
            'semestre' => 'required|string|min:4|max:10',
            'objetivo' => 'required|string|min:3|max:50',
            'intencionDidactica' => 'required|string|min:3|max:50',
            'componente' => 'required|string|min:3|max:50',
            'calificacionAprobatoria' => 'required|integer',
            'horasDocente' => 'required|integer',
            'horasEstudioIndependiente' => 'required|integer',
            'creditos' => 'required|integer',
            'imagen' => 'required',
        ]);


        

        $asignatura = AsignaturaModel::findOrFail($idAsignatura);
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
        
        if ($request->hasFile('imagen')) {
            $asignatura->imagen = Storage::disk('public')->put('/asignatura/imagenes', $request->file('imagen'));
        }
        
        $asignatura->updated_at = now();
        $asignatura->save();
        return redirect('/asignatura/index');
    }


    public function eliminarAsignatura(string $idAsignatura)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $asignatura = AsignaturaModel::findOrFail($idAsignatura);
        $asignatura->delete();
        return redirect()->back();
    }


    public function verPlaneacionAsignatura(string $idAsignatura, string $idDocente)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $asignatura = DB::table('asignatura_docente')
            ->join('asignatura', 'asignatura_docente.id_asignatura', '=', 'asignatura.id')
            ->join('docente', 'asignatura_docente.id_docente', '=', 'docente.id')
            ->join('users', 'docente.id_Usuario', '=', 'users.id')
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
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

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
        if (!session()->has('user')) {
            return redirect()->route('login');
        }
        
        print_r($_POST);
    }
}
