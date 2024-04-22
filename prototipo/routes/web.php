<?php

use App\Http\Controllers\Asignatura;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('login');
});

Route::get('/asignatura/index',[Asignatura::class, 'index'])->name('asignatura.index');

Route::get('/asignatura/planeacion/ver/{idAsignatura}/{idDocente}', [Asignatura::class, 'planeacion_ver'])->name('asignatura.planeacion.ver');

Route::get('/asignatura/agregar/datosAsignatura',[Asignatura::class, 'agregarDatosAsignatura'])->name('asignatura.agregar.datosAsignatura');
Route::post('/asignatura/agregar/datosBloque/{numeroBloque}',[Asignatura::class, 'agregarDatosBloque'])->name('asignatura.agregar.datosBloque');
Route::post('/asignatura/agregar/insert',[Asignatura::class, 'insertDatos'])->name('asignatura.agregar.insert');
