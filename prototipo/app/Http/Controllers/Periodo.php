<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use App\Models\PeriodoModel;

class Periodo extends Controller
{
    //

    public function index()
    {
        $periodos = DB::table('periodo')->paginate(10);

        return view('administrador/periodo/index', compact('periodos'));
    }

    public function busqueda()
    {
        $periodos = DB::table('periodo')
            ->where('tipo', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/periodo/index', compact('periodos'));
    }


    public function editar(string $idPeriodo)
    {
        $periodo = DB::table('periodo')->where('id', $idPeriodo)->get();
        
    

        return view('administrador/periodo/editar', compact('periodo'));
    }

    public function agregar()
    {
        return view('administrador/periodo/agregar');
    }

    public function insert(Request $request)
    {
        $periodo = new PeriodoModel();
        $periodo->fechaInicio = date(strtolower($request->fechaInicio));
        $periodo->fechaFin = date(strtolower($request->fechaFin));
        $periodo->tipo = ucwords(strtolower($request->tipo));

        $periodo->save();

        return redirect('/periodo/index');
    }
    
    public function update(Request $request, string $idPeriodo)
    {
        $periodo = PeriodoModel::findOrFail($idPeriodo);

        $periodo->fechaInicio = date(strtolower($request->fechaInicio));
        $periodo->fechaFin = date(strtolower($request->fechaFin));
        $periodo->tipo = ucwords(strtolower($request->tipo));

        $periodo->updated_at = now();

        $periodo->save();

        return redirect('/periodo/index');
    }

    
    public function eliminar(string $idPeriodo)
    {
        $periodo = PeriodoModel::findOrFail($idPeriodo);
        $periodo->delete();
        return redirect()->back();
    }

}


