<link rel="icon" type="image/png" href="{{ asset('logoHenryWallon.jpg') }}">
<title>Horario</title>
@extends('layouts.app')
@section('content')

<h1>Bienvenido: {{ $docente->primerNombre }} {{ $docente->segundoNombre }} {{ $docente->apellidoPaterno }} {{ $docente->apellidoMaterno }} </h1>

<table class="table table-striped">
    <thead>
        <tr>
        <th scope="col">Materia</th>
        <th scope="col">Lunes</th>
        <th scope="col">Martes</th>
        <th scope="col">Miercoles</th>
        <th scope="col">Jueves</th>
        <th scope="col">Viernes</th>
        </tr>
    </thead>
    <tbody>
    @foreach ($materias as $key => $m)
    @if ($key == 0 || $m->horaInicio != $materias[$key - 1]->horaInicio || $m->horaFin != $materias[$key - 1]->horaFin)
    <tr>
        <td>{{ $m->nombre }}</td>
        <td>{{ $m->dia === 'Lunes' ? $m->horaInicio . ' / ' . $m->horaFin : '' }}</td>
        <td>{{ $m->dia === 'Martes' ? $m->horaInicio . ' / ' . $m->horaFin : '' }}</td>
        <td>{{ $m->dia === 'Miércoles' ? $m->horaInicio . ' / ' . $m->horaFin : '' }}</td>
        <td>{{ $m->dia === 'Jueves' ? $m->horaInicio . ' / ' . $m->horaFin : '' }}</td>
        <td>{{ $m->dia === 'Viernes' ? $m->horaInicio . ' / ' . $m->horaFin : '' }}</td>
    </tr>
    @endif
@endforeach
    </tbody>
</table>

@endsection