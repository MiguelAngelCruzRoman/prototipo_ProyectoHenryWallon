<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  @extends('layouts.app')

@section('content')
<div class="container mt-5">
    <div class="col-md-6">
        <h1 style="color:black"><strong>PLANEACIÓN</strong></h1>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>Nombre</th>
                    <th>Propósito</th>
                    <th>Eje</th>
                    <th>Componente</th>
                    <th>Contenido Central</th>
                    <th>Producto Integrador</th>
                    <th>Progresión</th>
                    <th>Evaluación</th>
                </tr>
            </thead>
            <tbody>
                @foreach($resultados as $resultado)
                <tr>
                    <td>{{ $resultado->nombre }}</td>
                    <td>{{ $resultado->proposito }}</td>
                    <td>{{ $resultado->eje }}</td>
                    <td>{{ $resultado->componente }}</td>
                    <td>{{ $resultado->contenidoCentral }}</td>
                    <td>{{ $resultado->productoIntegrador }}</td>
                    <td> <!-- Puedes agregar la información de progresión aquí --> </td>
                    <td>
                        @if($resultado->actividadAprendizaje)
                        <strong>Actividad de Aprendizaje:</strong> {{ $resultado->actividadAprendizaje }}<br>
                        <strong>Tipo de Evaluación:</strong> {{ $resultado->tipoEvaluacion }}
                        @else
                        No hay evaluación registrada.
                        @endif
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>


<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
@endsection