<title>Asignaturas</title>
@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <center>
                <h1><strong>ASIGNATURAS</strong></h1>
            </center>
        </div>

        <div class="row mb-3">
            <div class="col-md-6">
                <form action="{{ route('asignatura.busqueda') }}" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control"
                            placeholder="Buscar asignatura por nombre, componente o semestre" name="valorBusqueda">
                        <button class="btn" style="flex:0"
                            type="submit">Buscar</button>
                    </div>
                </form>
            </div>

            <div class="col-md-4">
            </div>

            <div class="col-md-2">
                <button onclick="window.location='{{ route('asignatura.agregar.datosAsignatura') }}'"
                    class="btn btn-success">
                    <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
                    Agregar
                </button>
            </div>

        </div>

        <div class="row">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>COMPONENTE</th>
                        <th>SEMESTRE Y TURNO</th>
                        <th>HORAS DE ESTUDIO</th>
                        <th colspan="2">OPERACIONES</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($asignaturas as $asignatura)
                        <tr>
                            <th scope="row">{{ $asignatura->id }}</th>
                            <td>{{ $asignatura->nombre }}</td>
                            <td>{{ $asignatura->componente }}</td>
                            <td>{{ $asignatura->semestre }} ({{ $asignatura->turno }})</td>
                            <td>
                                <ul>
                                    <li>Con docente: {{ $asignatura->horasDocente }}</li>
                                    <li>Independiente: {{ $asignatura->horasEstudioIndependiente }}</li>
                                </ul>
                            </td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <button
                                        onclick="window.location='{{ route('asignatura.ver', ['idAsignatura' => $asignatura->id]) }}'"
                                        class="btn btn-primary">
                                        <img src="https://cdn-icons-png.flaticon.com/128/2874/2874802.png"
                                            alt="" height="20px"> Ver
                                    </button>
                                    <button
                                        onclick="window.location='{{ route('asignatura.editar.datosAsignatura', ['idAsignatura' => $asignatura->id]) }}'"
                                        class="btn btn-warning">
                                        <img src="https://cdn-icons-png.flaticon.com/128/10337/10337163.png"
                                            alt="" height="20px"> Editar
                                    </button>
                                    <button
                                        onclick="window.location='{{ route('asignatura.eliminar', ['idAsignatura' => $asignatura->id]) }}'"
                                        class="btn btn-danger">
                                        <img src="https://cdn-icons-png.flaticon.com/128/1828/1828939.png"
                                            alt="" height="20px"> Eliminar
                                    </button>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

        </div>

        <div class="col-2">
            @if ($asignaturas->total() > 10)
                {{ $asignaturas->links() }}
            @endif
        </div>
    </div>
@endsection