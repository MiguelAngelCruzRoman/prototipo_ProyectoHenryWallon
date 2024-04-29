<title>Asignaturas</title>
@extends('layouts.app')
@section('content')

    <div class="container">
        <div class="row">
            <center>
                <h1><strong>ASIGNATURAS</strong></h1>
            </center>
        </div>

        <div class="row">
            @foreach ($asignaturas as $asignatura)
                <div class="col-xl-4 col-lg-4 col-md-4 mb-4">
                    <div class="text-center position-relative card-style">
                        <img src="{{ $asignatura->imagen }}" alt="" class="img-fluid card-img-rectangular">
                        <div class="p-4">

                            <div class="card-body">
                                <img src="{{ $asignatura->foto }}" class="circular-img" alt="...">

                            <h3><strong>{{ $asignatura->nombre }} </strong></h3>


                                <h6 class="card-title">
                                    Docente: {{ $asignatura->primerNombre }}
                                    @if ($asignatura->segundoNombre)
                                        {{ $asignatura->segundoNombre }}
                                    @endif
                                    {{ $asignatura->apellidoPaterno }} {{ $asignatura->apellidoMaterno }}
                                </h6>
                            </div>

                            <div class="btn-group">
                                <a href="{{ route('asignatura.planeacion.ver', ['idAsignatura' => $asignatura->id_asignatura, 'idDocente' => $asignatura->id_docente]) }}"
                                    class="btn active">
                                    Planeación
                                </a>
                                <a href="{{ route('asignatura.index') }}" class="btn active">
                                    Calificaciones
                                </a>
                                <a href="{{ route('asignatura.index') }}" class="btn active">
                                    Asistencias
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
