@extends('layouts.app')
@section('content')
<title>Horario</title>

<h1> Bienvenido: {{ $alumno->primerNombre }} {{ $alumno->segundoNombre }} {{ $alumno->apellidoPaterno }} {{ $alumno->apellidoMaterno }}</h1>

<table class="table table-striped">
    <thead>
        <tr>
            <th scope="col">Grupo</th>
            <th scope="col">Materia</th>
            <th scope="col">Docente</th>
            <th scope="col">Lunes</th>
            <th scope="col">Martes</th>
            <th scope="col">Miercoles</th>
            <th scope="col">Jueves</th>
            <th scope="col">Viernes</th>
        </tr>
    </thead>
    <tbody>
@foreach ($horario as $key => $h)
    @if ($key == 0 || $h->horaInicio != $horario[$key - 1]->horaInicio || $h->horaFin != $horario[$key - 1]->horaFin)
    <tr>
        <td>{{ $h->id }}</td>
        <td>{{ $h->nombre }}</td>
        <td>
            @foreach($datos_maestros as $dm)
                @foreach($dm as $maestro)
                    {{ $maestro->primerNombre }} {{ $maestro->apellidoPaterno }} {{ $maestro->apellidoMaterno }}
                @endforeach
            @endforeach
        </td>
        
        <td>{{ $h->dia === 'Lunes' ? $h->horaInicio . ' / ' . $h->horaFin : '' }}</td>
        <td>{{ $h->dia === 'Martes' ? $h->horaInicio . ' / ' . $h->horaFin : '' }}</td>
        <td>{{ $h->dia === 'Miércoles' ? $h->horaInicio . ' / ' . $h->horaFin : '' }}</td>
        <td>{{ $h->dia === 'Jueves' ? $h->horaInicio . ' / ' . $h->horaFin : '' }}</td>
        <td>{{ $h->dia === 'Viernes' ? $h->horaInicio . ' / ' . $h->horaFin : '' }}</td>
    </tr>
    @endif
@endforeach


</tbody>
</table>
@endsection