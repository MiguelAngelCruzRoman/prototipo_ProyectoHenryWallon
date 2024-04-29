<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\EvaluacionModel;
use Illuminate\Support\Facades\DB;

class Evaluacion extends Controller
{

    public function index()
    {
        $evaluaciones = EvaluacionModel::paginate(10);
        return view('administrador/evaluacion/index', compact('evaluaciones'));
    }


    public function busqueda()
    {
        $evaluaciones = DB::table('evaluacion')
            ->where('actividadAprendizaje', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('tipoEvaluacion', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/evaluacion/index', compact('evaluaciones'));
    }


    public function agregar()
    {
        return view('administrador/evaluacion/agregar');
    }


    public function insert(Request $request)
    {
        $evaluacions = new EvaluacionModel;
        $evaluacions->actividadAprendizaje = $request->input('actividadAprendizaje');
        $evaluacions->tipoEvaluacion = $request->input('tipoEvaluacion');
        $evaluacions->archivoEjemplo = $request->input('archivoEjemplo');
        $evaluacions->save();

        return redirect()->route('grupo.index');
    }


    public function ver(string $id)
    {

        $evaluaciones = DB::table('evaluacion')
            ->where('actividadAprendizaje', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('tipoEvaluacion', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/evaluacion/ver', compact('evaluaciones'));
    }


    public function editar(string $id)
    {
        $evaluacion = EvaluacionModel::find($id);
        return view('administrador/evaluacion/editar', compact('evaluacion'));
    }


    public function update(Request $request, $id)
    {
        $evaluacions = EvaluacionModel::find($id);
        $evaluacions->actividadAprendizaje = $request->input('actividadAprendizaje');
        $evaluacions->tipoEvaluacion = $request->input('tipoEvaluacion');
        $evaluacions->archivoEjemplo = $request->input('archivoEjemplo');
        $evaluacions->save();

        return redirect()->route('grupo.index');
    }


    public function eliminar(string $id)
    {
        $evaluacion = EvaluacionModel::find($id);
        $evaluacion->delete();

        return redirect()->route('grupo.index');
    }
}
