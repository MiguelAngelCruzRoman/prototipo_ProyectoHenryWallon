<title>Asignaturas</title>

@extends('layouts.app')

@section('content')
    <div class="container mx-auto">
        <div class="text-center">
            <h1 class="text-3xl font-bold my-8">ASIGNATURAS</h1>
        </div>

        <div class="row mb-3">
            <div class="col-md-1">
            </div>
            <div class="col-md-5">
                <form action="{{ route('asignatura.busqueda') }}" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control flex-1 mr-2"
                            placeholder="Buscar asignatura por nombre, componente o semestre" name="valorBusqueda">
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
        @include('administrador.asignatura.partials.modals.agregar')
        <!--sección para mostrar los datos-->
        @include('administrador.asignatura.partials.tablas.periodos')
        <!--paginación-->
        {{ $asignaturas->links() }}
    </div>
    <!--se incluye modal para confirmación de eliminar-->
    @include('administrador.asignatura.partials.modals.eliminar')
@endsection
<!--scripts para modales-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/css/bootstrap.min.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/js/bootstrap.min.js"></script>
<!--script para alerta y envio de datos-->
@include('administrador.asignatura.partials.script.periodo')
