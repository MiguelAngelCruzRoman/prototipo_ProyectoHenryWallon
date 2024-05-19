<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Asignatura;
use App\Http\Controllers\Asistencia;
use App\Http\Controllers\Grupo;
use App\Http\Controllers\Periodo;
use App\Http\Controllers\Evaluacion;
use App\Http\Controllers\Users;
use App\Http\Controllers\Horario;
use Illuminate\Support\Facades\Auth;


//-----------------------------------Rutas en común -------------------------------------//
Auth::routes();
Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');



//-----------------------------------Rutas de Administrador-------------------------------------//
Route::get('/administrador', [Users::class, 'perfil'])->name('administrador.perfil');


Route::get('/periodo/index', [Periodo::class, 'index'])->name('periodo.index');
Route::get('/periodo/busqueda',[Periodo::class, 'busqueda'])->name('periodo.busqueda');
Route::get('/periodo/agregar/datosPeriodo',[Periodo::class, 'agregar'])->name('periodo.agregar.datosPeriodo');
Route::post('/periodo/agregar/datosPeriodo/insert',[Periodo::class, 'insert'])->name('periodo.agregar.datosPeriodo.insert');
Route::get('/periodo/editar/datosPeriodo/{idPeriodo}',[Periodo::class, 'editar'])->name('periodo.editar.datosPeriodo');
Route::post('/periodo/editar/datosPeriodo/update/{idPeriodo}',[Periodo::class, 'update'])->name('periodo.editar.datosPeriodo.update');
Route::get('/periodo/eliminar/{idPeriodo}',[Periodo::class, 'eliminar'])->name('periodo.eliminar');



Route::get('/asignatura/index',[Asignatura::class, 'index'])->name('asignatura.index');
Route::get('/asignatura/busqueda',[Asignatura::class, 'busqueda'])->name('asignatura.busqueda');
Route::get('/asignatura/agregar/datosAsignatura',[Asignatura::class, 'agregarDatosAsignatura'])->name('asignatura.agregar.datosAsignatura');
Route::post('/asignatura/agregar/datosAsignatura/insert',[Asignatura::class, 'insertDatosAsignatura'])->name('asignatura.agregar.datosAsignatura.insert');
Route::get('/asignatura/editar/datosAsignatura/{idAsignatura}',[Asignatura::class, 'editarDatosAsignatura'])->name('asignatura.editar.datosAsignatura');
Route::post('/asignatura/editar/datosAsignatura/update/{idAsignatura}',[Asignatura::class, 'updateDatosAsignatura'])->name('asignatura.editar.datosAsignatura.update');
Route::get('/asignatura/eliminar/{idAsignatura}',[Asignatura::class, 'eliminarAsignatura'])->name('asignatura.eliminar');
Route::get('/asignatura/ver/{idAsignatura}',[Asignatura::class, 'verAsignatura'])->name('asignatura.ver');



Route::get('/grupo/index',[Grupo::class, 'index'])->name('grupo.index');
Route::get('/grupo/busqueda',[Grupo::class, 'busqueda'])->name('grupo.busqueda');
Route::get('/grupo/agregar',[Grupo::class, 'agregar'])->name('grupo.agregar');
Route::post('/grupo/agregar/insert',[Grupo::class, 'insert'])->name('grupo.agregar.insert');
Route::get('/grupo/editar/{idGrupo}',[Grupo::class, 'editar'])->name('grupo.editar');
Route::post('/grupo/editar/update/{idGrupo}',[Grupo::class, 'update'])->name('grupo.editar.update');
Route::get('/grupo/ver/{idGrupo}',[Grupo::class, 'ver'])->name('grupo.ver');
Route::get('/grupo/eliminar/{idGrupo}',[Grupo::class, 'eliminar'])->name('grupo.eliminar');



Route::get('/evaluacion/index',[Evaluacion::class, 'index'])->name('evaluacion.index');
Route::get('/evaluacion/busqueda',[Evaluacion::class, 'busqueda'])->name('evaluacion.busqueda');
Route::get('/evaluacion/agregar',[Evaluacion::class, 'agregar'])->name('evaluacion.agregar');
Route::post('/evaluacion/agregar/insert',[Evaluacion::class, 'insert'])->name('evaluacion.agregar.insert');
Route::get('/evaluacion/editar/{idEvaluacion}',[Evaluacion::class, 'editar'])->name('evaluacion.editar');
Route::post('/evaluacion/editar/update/{idEvaluacion}',[Evaluacion::class, 'update'])->name('evaluacion.editar.update');
Route::get('/evaluacion/ver/{idEvaluacion}',[Evaluacion::class, 'ver'])->name('.ver');
Route::get('/evaluacion/eliminar/{idEvaluacion}',[Evaluacion::class, 'eliminar'])->name('evaluacion.eliminar');

Route::get('/usuario/index',[Users::class, 'inicio'])->name('user.inicio');
Route::get('/usuario/busqueda',[Users::class, 'busqueda'])->name('user.busqueda');
Route::get('/usuario/ver/{idUser}',[Users::class, 'verUsuario'])->name('user.ver');
Route::get('/usuario/eliminar/{idUser}',[Users::class, 'eliminarUsuario'])->name('user.eliminar');
Route::get('/usuario/editar/{idUser}', [Users::class, 'editarUsuario'])->name('user.editar');
Route::put('/usuario/editar/update{idUser}', [Users::class, 'updateUsuario'])->name('user.actualizar');




//Rutas pendientes para realizar las planeaciones
Route::get('/asignatura/planeacion/ver/{idAsignatura}/{idDocente}', [Asignatura::class, 'verPlaneacionAsignatura'])->name('asignatura.planeacion.ver');
Route::post('/asignatura/agregar/datosBloque/{numeroBloque}',[Asignatura::class, 'agregarDatosBloque'])->name('asignatura.agregar.datosBloque');
Route::post('/asignatura/agregar/insert',[Asignatura::class, 'insertDatos'])->name('asignatura.agregar.insert');










//-----------------------------------Rutas de Docente-------------------------------------//
Route::get('/docente', [Users::class, 'perfil'])->name('docente.perfil');
Route::get('/docente/asignatura/index',[Asignatura::class, 'index'])->name('docente.asignatura.index');
Route::get('/docente/asignatura/asistencia/{idAsignatura}/{idDocente}/{nombreAsignatura}',[Asistencia::class, 'index'])->name('docente.asignatura.asistencia');
Route::post('/docente/asignatura/asistencia/insert',[Asistencia::class, 'insert'])->name('docente.asignatura.asistencia.insert');
Route::get('/docente/asignatura/asistencia/historial/{idAsignatura}/{idDocente}/{nombreAsignatura}',[Asistencia::class, 'historial'])->name('docente.asignatura.asistencia.historial');
Route::get('/docente/horario/{idDocente}',[Horario::class,'horario_docente'])->name('docente.horario');





//-----------------------------------Rutas de Alumno-------------------------------------//
Route::get('/alumno', [App\Http\Controllers\HomeController::class, 'index'])->name('homeE');
Route::get('/alumno/asignatura/index',[Asignatura::class, 'index'])->name('alumno.asignatura.index');
Route::get('/alumno/horario/{idAlumno}',[Horario::class,'horario_alumno'])->name('alumno.horario');

//Rutas pendientes para darle funcionaldiad
Route::get('/alumno/asignatura/planeacion/ver/{idAsignatura}/{idDocente}', [Asignatura::class, 'verPlaneacionAsignatura'])->name('alumno.asignatura.planeacion.ver');
Route::get('/horario/alumnos/ver/{id_alumno}', [App\Http\Controllers\Horario::class, 'horario_alumno'])->name('horario');
