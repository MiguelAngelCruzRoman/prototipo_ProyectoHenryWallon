<title>Periodos</title>

@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center"><strong>PERIODOS</strong></h1>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-6">
                <form action="{{ route('periodo.busqueda') }}" method="GET">
                    <div class="input-group">
                        <label for="valorBusqueda" class="form-label">Buscar por tipo: </label>
                        <div class="col-md-1">
                        </div>
                            <select class="form-select form-control" name="valorBusqueda" style="flex: 1;">
                            <option value="CicloEscolar">Ciclo Escolar</option>
                            <option value="Semanal">Semanal</option>
                            <option value="">Ver todo</option>
                        </select>
                        <button class="btn" type="submit">Buscar</button>
                    </div>
                </form>
            </div>
                
            <div class="col-md-4"></div>
            <div class="col-md-2">
                <button onclick="window.location='{{ route('periodo.agregar.datosPeriodo') }}'" class="btn btn-success">
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
                        <th>FECHA DE INICIO</th>
                        <th>FECHA DE FIN</th>
                        <th>TIPO</th>
                        <th colspan="2">OPERACIONES</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($periodos as $periodo)
                        <tr>
                            <th scope="row">{{ $periodo->id }}</th>
                            <td>{{ $periodo->fechaInicio }}</td>
                            <td>{{ $periodo->fechaFin }}</td>
                            <td>{{ $periodo->tipo }}</td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <button
                                        onclick="window.location='{{ route('periodo.editar.datosPeriodo', ['idPeriodo' => $periodo->id]) }}'"
                                        class="btn btn-warning">
                                        <img src="https://cdn-icons-png.flaticon.com/128/10337/10337163.png" alt=""
                                            height="20px"> Editar
                                    </button>
                                    <button
                                        onclick="window.location='{{ route('periodo.eliminar', ['idPeriodo' => $periodo->id]) }}'"
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

        <div class="row justify-content-center">
            <div class="col-md-2">
                @if ($periodos->total() > 10)
                    {{ $periodos->links() }}
                @endif
            </div>
        </div>
    </div>
@endsection
