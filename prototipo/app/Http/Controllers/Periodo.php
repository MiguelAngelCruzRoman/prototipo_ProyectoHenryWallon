<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use App\Models\PeriodoModel;
use Illuminate\Http\RedirectResponse;
use Illuminate\Validation\ValidationException; 
class Periodo extends Controller
{
    //

    public function index()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $periodos = DB::table('periodo')->paginate(10);

        return view('administrador/periodo/index', compact('periodos'));
    }

    public function busqueda(request $request)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $request->validate([
            'valorBusqueda' => 'required|string'
        ]);

        $periodos = DB::table('periodo')
            ->where('tipo', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/periodo/index', compact('periodos'));
    }


    public function editar(string $idPeriodo)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $periodo = DB::table('periodo')->where('id', $idPeriodo)->get();

        return view('administrador/periodo/editar', compact('periodo'));
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

        $request->validate([
            'fechaInicio' => 'required|date',
            'fechaFin' => 'required|date|after:fechaInicio',
            'tipo' => 'required|string',
        ]);

        $periodo = new PeriodoModel();
        $periodo->fechaInicio = date(strtolower($request->fechaInicio));
        $periodo->fechaFin = date(strtolower($request->fechaFin));
        $periodo->tipo = ucwords(strtolower($request->tipo));

        $periodo->save();

        return redirect('/periodo/index');
    }
    
    public function update(Request $request, string $idPeriodo)
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 

        $request->validate([
            'fechaInicio' => 'required|date',
            'fechaFin' => 'required|date|after:fechaInicio',
            'tipo' => 'required|string',
        ]);

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
        if (!session()->has('user')) {
            return redirect()->route('login');
        } 
        
        $periodo = PeriodoModel::findOrFail($idPeriodo);
        $periodo->delete();
        return redirect()->back();
    }

}


