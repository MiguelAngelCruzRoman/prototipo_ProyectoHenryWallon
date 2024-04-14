<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Materia;

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
    return view('welcome');
});

Route::get('/materia/index',[Materia::class, 'index'])->name('materia.index');

Route::get('/materia/instrumentacion/ver/{idMateria}/{idDocente}', [Materia::class, 'instrumentacion_ver'])->name('materia.instrumentacion.ver');

Route::get('/materia/agregar/datosMateria',[Materia::class, 'agregarDatosMateria'])->name('materia.agregar.datosMateria');
Route::post('/materia/agregar/datosUnidad/{numeroUnidad}',[Materia::class, 'agregarDatosUnidad'])->name('materia.agregar.datosUnidad');