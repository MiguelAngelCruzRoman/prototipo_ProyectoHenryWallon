<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\BloqueModel;
use App\Models\EvaluacionModel;
use App\Models\ProgresionModel;
use App\Models\Progresion_EvaluacionModel;
use Illuminate\Support\Facades\Password;

class Planeacion extends Controller
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
    
    public function agregarBloque(){
        return view('docente/asignatura/planeacion/agregarBloque');
    }

    public function insertarBloque(Request $request,string $idAsignatura)
    {
        $validatedData = $request->validate([
            'numero' => 'required|integer',
            'nombre' => 'required|string|max:255',
            'proposito' => 'required|string',
            'eje' => 'required|string|max:255',
            'componente' => 'required|string',
            'contenidoCentral' => 'required|string',
            'productoIntegrador' => 'required|string',
        ]);

        $bloque = new BloqueModel();
        $bloque->numero = $request->input('numero');
        $bloque->nombre = $request->input('nombre');
        $bloque->proposito = $request->input('proposito');
        $bloque->eje = $request->input('eje');
        $bloque->componente = $request->input('componente');
        $bloque->contenidoCentral = $request->input('contenidoCentral');
        $bloque->productoIntegrador = $request->input('productoIntegrador');
        $bloque->id_Asignatura = $idAsignatura; // Tiene que buscar el id de la materia a la que va insertar
        //Insertar en la tabla docente_bloque el id del bloque que se creo
        //Insertar en la tabla docente_bloque el id del codente que creo el bloque(obtenido del inicio de sesion)
        $bloque->save();

        return redirect()->back()->with('success', 'Bloque agregado correctamente');
    }

    public function bloques(String $idAsignatura){
        $bloques = BloqueModel::all();
        return view('/docente/asignatura/planeacion/agregarPlaneacion', compact('bloques','idAsignatura'));
    }

    public function guardarBloqueTemp(Request $request,string $idAsignatura)
    {
        $validatedData = $request->validate([
            'id_Asignatura' => $idAsignatura,
            'numero' => 'required|integer',
            'nombre' => 'required|string|max:255',
            'proposito' => 'required|string',
            'eje' => 'required|string|max:255',
            'componente' => 'required|string',
            'contenidoCentral' => 'required|string',
            'productoIntegrador' => 'required|string',
        ]);

        session()->put('bloque', $validatedData);

        return redirect()->route('docente.agregar.progresion');
    }

    public function guardarProgresionTemp(Request $request)
    {
        $validatedData = $request->validate([
            'id_periodo' => 'required|exists:periodo,id',
            'tema' => 'required|string|max:255',
            'aprendizajeEsperado' => 'required|string|max:255',
            'materiales' => 'required|string|max:255',
            'actividadAprendizaje' => 'required|string|max:255',
            'tipoEvaluacion' => 'required|in:Rúbrica,Lista de cotejo,Guía de observación',
        ]);

        session()->put('progresion', $validatedData);

        return redirect()->route('docente.finalizar');
    }

    public function finalizar()
    {
        $bloqueData = session()->get('bloque');
        $progresionData = session()->get('progresion');

        if ($bloqueData && $progresionData) {
            // Guardar bloque
            $bloque = BloqueModel::create($bloqueData);

            // Guardar progresión
            $progresion = ProgresionModel::create([
                'id_Periodo' => $progresionData['id_periodo'],
                'tema' => $progresionData['tema'],
                'aprendizajeEsperado' => $progresionData['aprendizajeEsperado'],
                'materiales' => $progresionData['materiales'],
            ]);

            // Guardar evaluación
            $evaluacion = EvaluacionModel::create([
                'id_Progresion' => $progresion->id,
                'actividadAprendizaje' => $progresionData['actividadAprendizaje'],
                'tipoEvaluacion' => $progresionData['tipoEvaluacion'],
            ]);

            // Guardar relación en Progresion_Evaluacion
            Progresion_EvaluacionModel::create([
                'id_Progresion' => $progresion->id,
                'id_Evaluacion' => $evaluacion->id,
            ]);

            // Limpiar sesión
            session()->forget(['bloque', 'progresion']);

            return redirect()->route('docente.bloques')->with('success', 'Planeación completada correctamente');
        } else {
            return redirect()->route('docente.agregar.bloque')->with('error', 'Debe completar todos los pasos.');
        }
    }

}
