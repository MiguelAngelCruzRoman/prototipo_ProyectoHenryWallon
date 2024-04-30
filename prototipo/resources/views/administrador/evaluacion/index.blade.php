<title>Evaluaciones</title>

@extends('layouts.app')


@section('content')
<div class="container">
        <div class="row">
            <center>
                <h1><strong>EVALUACIONES</strong></h1>
            </center>
        </div>

        <div class="row mb-3">
            <div class="col-md-6">
                <form action="{{ route('evaluacion.busqueda') }}" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control"
                            placeholder="Buscar evaluación por actividad o tipo de evaluación" name="valorBusqueda">
                        <button class="btn-sm" style="background-color:#336A7B; color:white" type="submit">Buscar</button>
                    </div>
                </form>
            </div>

            <div class="col-md-4">
            </div>

            <div class="col-md-2">
                <button onclick="window.location='{{ route('evaluacion.agregar') }}'" class="btn btn-success">
                    <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
                    Agregar
                </button>
            </div>

     </div>
    

<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered">
            <thead>
                    <tr>
                        <th>ID</th>
                        <th>ACTIVIDAD DE APRENDIZAJE</th>
                        <th>TIPO DE EVALUACION</th>
                        <th>ARCHIVO DE EJEMPLO</th>
                        <th colspan="2">OPERACIONES</th>
                    </tr>
            </thead>
            <tbody>
                    @foreach ($evaluaciones as $evaluacion)
                        <tr>
                            <th scope="row">{{ $evaluacion->id }}</th>
                            <td>{{ $evaluacion->actividadAprendizaje }}</td>
                            <td>{{ $evaluacion->tipoEvaluacion }}</td>
                            <td>{{ $evaluacion->archivoEjemplo }}</td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <button onclick="window.location='{{ route('evaluacion.editar', $evaluacion->id) }}'"
                                        class="btn btn-warning">
                                        <img src="https://cdn-icons-png.flaticon.com/128/10337/10337163.png" alt=""
                                            height="20px"> Editar
                                    </button>
                                    <button onclick="window.location='{{route('evaluacion.eliminar', ['idEvaluacion' => $evaluacion->id]) }}'"
                                        class="btn btn-danger">
                                        <img src="https://cdn-icons-png.flaticon.com/128/1828/1828939.png" alt=""
                                            height="20px"> Eliminar
                                    </button>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
        </table>
    </div>

                {{ $evaluaciones->links() }}

</div>
@endsection