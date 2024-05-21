<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use App\Models\PeriodoModel;
use App\Models\ProgresionModel;
use App\Models\EvaluacionModel;
use App\Models\Progresion_EvaluacionModel;

class Progresion extends Controller{

    public function insertarProgresion(Request $request)
    {   
        // Validar los datos del formulario
        $request->validate([
            'id_periodo' => 'required|exists:periodo,id',
            'tema' => 'required|string|max:255',
            'aprendizajeEsperado' => 'required|string|max:255',
            'materiales' => 'required|string|max:255',
            'actividadAprendizaje' => 'required|string|max:255',
            'tipoEvaluacion' => 'required|in:Rúbrica,Lista de cotejo,Guía de observación',
        ]);
        // Crear el registro en la tabla Progresion
        $progresion = ProgresionModel::create([
            'id_Periodo' => $request->id_periodo,
            'tema' => $request->tema,
            'aprendizajeEsperado' => $request->aprendizajeEsperado,
            'materiales' => $request->materiales,
        ]);
        // Crear el registro en la tabla Evaluacion
        $evaluacion = EvaluacionModel::create([
            'id_Progresion' => $progresion->id,
            'actividadAprendizaje' => $request->actividadAprendizaje,
            'tipoEvaluacion' => $request->tipoEvaluacion,
        ]);

        // Insertar los IDs en la tabla Progresion_Evaluacion
        Progresion_EvaluacionModel::create([
            'id_Progresion' => $progresion->id,
            'id_Evaluacion' => $evaluacion->id,
        ]);

        return redirect()->back()->with('success', 'Progresión y evaluación agregadas correctamente');
    }

}