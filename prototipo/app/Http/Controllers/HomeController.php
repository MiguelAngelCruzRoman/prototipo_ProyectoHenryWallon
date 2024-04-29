<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if (!session()->has('user')) {
            return redirect()->route('login');
        }else{
            $userData = session('user');
            $rol = $userData['rol'];
    
            if ($rol === 'Administrador') {
                return view('administrador/inicio');
            } elseif ($rol === 'Docente') {
                return view('docente/inicio');
            } else {
                return view('alumno/inicio');
            }
        } 
    }
}
