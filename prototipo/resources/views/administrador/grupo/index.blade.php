<title>Grupos</title>
<style>
    .fixed-width-select {
        width: 300px;
    }
</style>
@extends('layouts.app')

@section('content')
    <div class="container mx-auto">
        <div class="text-center">
            <h1 class="text-3xl font-bold my-8" style="color:black"><strong>GRUPOS</strong></h1>
        </div>

        <div class="row mb-3">
            <div class="col-md-2">
                <button class="btn" onclick="goBack()" style="background-color: #21182F;color: white">
                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar" width="20px"
                        style="filter: invert(100%);">
                    Regresar
                </button>
            </div><br>

            <div class="col-md-1"></div>
            <div class="col-md-6">
                <form action="{{ route('grupo.busqueda') }}" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control flex-1 mr-2"
                            placeholder="Buscar grupo por asignatura, docente o semestre" name="valorBusqueda">
                        <button class="btn btn-primary" type="submit">Buscar</button>
                    </div>
                </form>
            </div>

            <div class="col-md-1"></div>

            <div class="col-md-2">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#formularioModal">
                    <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
                    Registrar
                </button>
            </div>
        </div><br>

        <!--se incluye el modal con formulario-->
        <div class="modal fade " id="formularioModal"  tabindex="-1" role="dialog" aria-labelledby="formularioModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document" >
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="formularioModalLabel">Registrar Grupo</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('grupo.agregar.insert') }}" method="POST" id="formularioDatosGrupo">
                            @csrf
                            <center>
                                <h4>- DATOS DE LA ASIGNATURA -</h4><br>
                            </center>
                            <div class="row mb-4">
                                <div class="col-md-3">
                                    <label for="id_Asignatura" class="form-label">Asignatura*:</label>
                                </div>

                                <div class="col-md-6">
                                    <select
                                        class="block appearance-none bg-white border border-gray-400 hover:border-gray-500 px-5 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline fixed-width-select"
                                        id="id_Asignatura" name="id_Asignatura" required>
                                        @foreach ($asignaturas as $asignatura)
                                            <option value="{{ $asignatura->id }}">{{ $asignatura->nombre }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>


                            <div class="row mb-4">
                                <div class="col-md-3">
                                    <label for="id_Docente" class="form-label">Docente*:</label>
                                </div>

                                <div class="col-md-6">
                                    <select
                                        class="block appearance-none bg-white border border-gray-400 hover:border-gray-500 px-5 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline fixed-width-select"
                                        id="id_Docente" name="id_Docente" required>
                                        @foreach ($docentes as $docente)
                                            <option value="{{ $docente->id }}">{{ $docente->primerNombre }}
                                                {{ $docente->segundoNombre }} {{ $docente->apellidoPaterno }}
                                                {{ $docente->apellidoMaterno }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="row mb-4">
                                <div class="col-md-3">
                                    <label for="id_Periodo" class="form-label">Periodo*:</label>
                                </div>

                                <div class="col-md-6">
                                    <select
                                        class="block appearance-none bg-white border border-gray-400 hover:border-gray-500 px-5 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline fixed-width-select"
                                        id="id_Periodo" name="id_Periodo" required>
                                        @foreach ($periodos as $periodo)
                                            <option value="{{ $periodo->id }}">{{ $periodo->fechaInicio }} /
                                                {{ $periodo->fechaFin }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>


                            <div class="row mb-4">
                                <div class="col-md-3">
                                    <label for="semestre" class="form-label">Semestre*:</label>
                                </div>

                                <div class="col-md-6">
                                    <select
                                        class="block appearance-none bg-white border border-gray-400 hover:border-gray-500 px-5 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline fixed-width-select"
                                        id="semestre" name="semestre" required>
                                        <option value="Primero">Primero</option>
                                        <option value="Segundo">Segundo</option>
                                        <option value="Tercero">Tercero</option>
                                        <option value="Cuarto">Cuarto</option>
                                        <option value="Quinto">Quinto</option>
                                        <option value="Sexto">Sexto</option>
                                    </select>
                                </div>

                            </div><br><br><br>

                            <center>
                                <h4>- LISTA DE ALUMNOS -</h4>
                            </center>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <label class="form-label">Seleccionar Alumnos:</label>
                                    <div class="form-group">
                                        @foreach ($alumnos as $alumno)
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox"
                                                    value="{{ $alumno->id }}" id="alumno{{ $alumno->id }}"
                                                    name="alumnos[]">
                                                <label class="form-check-label" for="alumno{{ $alumno->id }}">
                                                    {{ $alumno->primerNombre }} {{ $alumno->segundoNombre }}
                                                    {{ $alumno->apellidoPaterno }} {{ $alumno->apellidoMaterno }}
                                                </label>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>

                            <div class="flex justify-end">

                                <button class="btn" data-dismiss="modal"
                                    style="background-color: #21182F;color: white">
                                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                                        width="20px" style="filter: invert(100%);">
                                    Regresar
                                </button>
                                <button type="submit" class="btn btn-success">
                                    <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt=""
                                        height="20px">
                                    Registrar
                            </div>
                        </form>
                    </div>
                    <!--mensaje si es exito el guardado de datos-->
                    <div id="successMessage" class="modal-body d-none">
                        <div class="alert alert-success" role="alert">
                            ¡Evaluación guardada con éxito!
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div style="display: inline-block">
            {{ $grupos->links() }}
        </div>

        <!--sección para mostrar los datos-->
        @if (count($grupos) == 0)
            <div class="col-xl-8 text-center">
                <div
                    class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                    <a href="#">
                        <img class="rounded-t-lg" src="https://grupoleiros.com/static/product-not-found.png"
                            alt="" />
                    </a>
                </div>
            </div>
        @else
            @include('administrador.grupo.partials.tablas.grupo')
        @endif
        <br>
        <div style="display: inline-block">
            {{ $grupos->links() }}
        </div>
    </div>
    <!--se incluye modal para confirmación de eliminar-->
    @include('administrador.grupo.partials.modals.eliminar')
@endsection

<!--scripts para modales-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/js/bootstrap.min.js"></script>

<!--script para alerta y envio de datos-->
@include('administrador.grupo.partials.script.grupo')
