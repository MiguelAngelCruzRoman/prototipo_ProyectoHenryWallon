<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\EvaluacionModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\RedirectResponse;
use Illuminate\Validation\ValidationException; 

class Evaluacion extends Controller
{

    public function index()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $evaluaciones = EvaluacionModel::paginate(10);
        return view('administrador/evaluacion/index', compact('evaluaciones'));
    }


    public function busqueda(Request $request)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $request->validate([
            'valorBusqueda' => 'required|string',
        ]);

        $evaluaciones = DB::table('evaluacion')
            ->where('actividadAprendizaje', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('tipoEvaluacion', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/evaluacion/index', compact('evaluaciones'));
    }


    public function agregar()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        return view('administrador/evaluacion/agregar');
    }


    public function insert(Request $request)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }

        $request->validate([
            'actividadAprendizaje' => 'required|string',
            'tipoEvaluacion' => 'required|string',
            'archivoEjemplo'=> 'required',
        ]);

        $archivo = null;
        if ($request->hasFile('archivoEjemplo')) {
            $archivo = Storage::disk('public')->put('/ejemplos', $request->file('archivoEjemplo'));
        }

        $evaluaciones = new EvaluacionModel;
        $evaluaciones->actividadAprendizaje = $request->input('actividadAprendizaje');
        $evaluaciones->tipoEvaluacion = $request->input('tipoEvaluacion');
        $evaluaciones->archivoEjemplo = $archivo;
        $evaluaciones->save();

        return redirect()->route('evaluacion.index');
    }


    //se probará con el servidor activo
    public function ver(string $id)
    {

        if (!session()->has('user')) {
            return redirect()->route('login');
        }
        

        $evaluaciones = DB::table('evaluacion')
            ->where('actividadAprendizaje', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('tipoEvaluacion', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/evaluacion/ver', compact('evaluaciones'));
    }


    public function editar(string $id)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $evaluacion = EvaluacionModel::find($id);
        return view('administrador/evaluacion/editar', compact('evaluacion'));
    }


    public function update(Request $request, $id)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $request->validate([
            'actividadAprendizaje' => 'required|string',
            'tipoEvaluacion' => 'required|string',
            'archivoEjemplo'=> 'required',
        ]);

        $archivo = null;
        if ($request->hasFile('archivoEjemplo')) {
            $archivo = Storage::disk('public')->put('/evaluaciones', $request->file('archivoEjemplo'));
        }

        $evaluaciones = EvaluacionModel::find($id);
        $evaluaciones->actividadAprendizaje = $request->input('actividadAprendizaje');
        $evaluaciones->tipoEvaluacion = $request->input('tipoEvaluacion');
        $evaluaciones->archivoEjemplo = $archivo;
        $evaluaciones->save();

        return redirect()->route('evaluacion.index');
    }


    public function eliminar(string $id)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 
        
        $evaluacion = EvaluacionModel::find($id);
        $evaluacion->delete();

        return redirect()->route('evaluacion.index');
    }
}
