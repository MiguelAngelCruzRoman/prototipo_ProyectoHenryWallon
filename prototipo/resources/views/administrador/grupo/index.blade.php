<title>Grupos</title>

@extends('layouts.app')

@section('content')
    <div class="container mx-auto">
        <div class="text-center">
            <h1 class="text-3xl font-bold my-8">GRUPOS</h1>
        </div>

        <div class="row mb-3">
            <div class="col-md-1"></div>
            <div class="col-md-5">
                <form action="{{ route('grupo.busqueda') }}" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control flex-1 mr-2"
                            placeholder="Buscar grupo por asignatura, docente o semestre" name="valorBusqueda">
                        <button class="btn btn-primary" type="submit">Buscar</button>
                    </div>
                </form>
            </div>

            <div class="col-md-3">
            </div>

            <div class="col-md-2">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#formularioModal">
                    <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
                    Agregar
                </button>
            </div>
        </div>

        <!--se incluye el modal con formulario-->
        <div class="modal fade" id="formularioModal" tabindex="-1" role="dialog" aria-labelledby="formularioModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="formularioModalLabel">Agregar Grupo</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('evaluacion.agregar.insert') }}" method="POST" id="formularioDatosGrupo">
                            @csrf
                            <center>
                                <h3>- DATOS DE LA ASIGNATURA -</h3>
                            </center>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <label for="id_Asignatura" class="form-label">Asignatura:</label>
                                    <select class="form-select" id="id_Asignatura" name="id_Asignatura" required>
                                        @foreach ($asignaturas as $asignatura)
                                            <option value="{{ $asignatura->id }}">{{ $asignatura->nombre }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="id_Docente" class="form-label">Docente:</label>
                                    <select class="form-select" id="id_Docente" name="id_Docente" required>
                                        @foreach ($docentes as $docente)
                                            <option value="{{ $docente->id }}">{{ $docente->primerNombre }}
                                                {{ $docente->segundoNombre }} {{ $docente->apellidoPaterno }}
                                                {{ $docente->apellidoMaterno }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="col-md-3">
                                    <label for="id_Periodo" class="form-label">Periodo:</label>
                                    <select class="form-select" id="id_Periodo" name="id_Periodo" required>
                                        @foreach ($periodos as $periodo)
                                            <option value="{{ $periodo->id }}">{{ $periodo->fechaInicio }} /
                                                {{ $periodo->fechaFin }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="col-md-3">
                                    <label for="semestre" class="form-label">Semestre:</label>
                                    <select class="form-select" id="semestre" name="semestre" required>
                                        <option value="Primero">Primero</option>
                                        <option value="Segundo">Segundo</option>
                                        <option value="Tercero">Tercero</option>
                                        <option value="Cuarto">Cuarto</option>
                                        <option value="Quinto">Quinto</option>
                                        <option value="Sexto">Sexto</option>
                                    </select>
                                </div>

                            </div>


                            <div style="height: 100px;"></div>
                            <center>
                                <h3>- LISTA DE ALUMNOS -</h3>
                            </center>
                            <div class="row mb-3">
                                <div class="col-md-10">
                                    <label for="arregloAlumnos" class="form-label">Alumno:</label>
                                    <select class="form-select" id="arregloAlumnos" name="arregloAlumnos" required>
                                        @foreach ($alumnos as $alumno)
                                            <option value="{{ $alumno->id }}">{{ $alumno->primerNombre }}
                                                {{ $alumno->segundoNombre }} {{ $alumno->apellidoPaterno }}
                                                {{ $alumno->apellidoMaterno }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="col-md-2">
                                    <button type="button" onclick="agregarAlumno()" class="btn btn-primary">Agregar
                                        a lista</button>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <table class="table" id="tablaAlumnos">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th colspan="8">Nombre</th>
                                                <th>Eliminar</th>
                                            </tr>
                                        </thead>
                                        <tbody id="cuerpoTabla">

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <input type="hidden" id="listaAlumnos" name="listaAlumnos">
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

        <!--sección para mostrar los datos-->
        @include('administrador.grupo.partials.tablas.grupo')

        {{ $grupos->links() }}

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
