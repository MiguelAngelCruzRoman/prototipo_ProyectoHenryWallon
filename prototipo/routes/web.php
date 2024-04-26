<?php

use App\Http\Controllers\Asignatura;
use App\Http\Controllers\Grupo;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Periodo;
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

Route::get('/inicio',[Asignatura::class, 'inicio'])->name('inicio');


Route::get('/asignatura/index',[Asignatura::class, 'index'])->name('asignatura.index');
Route::get('/asignatura/busqueda',[Asignatura::class, 'busqueda'])->name('asignatura.busqueda');

Route::get('/asignatura/agregar/datosAsignatura',[Asignatura::class, 'agregarDatosAsignatura'])->name('asignatura.agregar.datosAsignatura');
Route::post('/asignatura/agregar/datosAsignatura/insert',[Asignatura::class, 'insertDatosAsignatura'])->name('asignatura.agregar.datosAsignatura.insert');

Route::get('/asignatura/editar/datosAsignatura/{idAsignatura}',[Asignatura::class, 'editarDatosAsignatura'])->name('asignatura.editar.datosAsignatura');
Route::post('/asignatura/editar/datosAsignatura/update/{idAsignatura}',[Asignatura::class, 'updateDatosAsignatura'])->name('asignatura.editar.datosAsignatura.update');

Route::get('/asignatura/eliminar/{idAsignatura}',[Asignatura::class, 'eliminarAsignatura'])->name('asignatura.eliminar');

Route::get('/asignatura/ver/{idAsignatura}',[Asignatura::class, 'verAsignatura'])->name('asignatura.ver');




Route::get('/asignatura/planeacion/ver/{idAsignatura}/{idDocente}', [Asignatura::class, 'verPlaneacionAsignatura'])->name('asignatura.planeacion.ver');
Route::post('/asignatura/agregar/datosBloque/{numeroBloque}',[Asignatura::class, 'agregarDatosBloque'])->name('asignatura.agregar.datosBloque');
Route::post('/asignatura/agregar/insert',[Asignatura::class, 'insertDatos'])->name('asignatura.agregar.insert');




Route::get('/grupo/index',[Grupo::class, 'index'])->name('grupo.index');
Route::get('/grupo/busqueda',[Grupo::class, 'busqueda'])->name('grupo.busqueda');
Route::get('/grupo/agregar',[Grupo::class, 'agregar'])->name('grupo.agregar');
Route::post('/grupo/agregar/insert',[Grupo::class, 'insert'])->name('grupo.agregar.insert');
Route::get('/grupo/editar/{idGrupo}',[Grupo::class, 'editar'])->name('grupo.editar');
Route::post('/grupo/editar/update/{idGrupo}',[Grupo::class, 'update'])->name('grupo.editar.update');
Route::get('/grupo/ver/{idGrupo}',[Grupo::class, 'ver'])->name('grupo.ver');
Route::get('/grupo/eliminar/{idGrupo}',[Grupo::class, 'eliminar'])->name('grupo.eliminar');





//Rutas de Periodos
Route::get('/periodos/index',[Periodo::class, 'index'])->name('alumno.periodo.index');
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
