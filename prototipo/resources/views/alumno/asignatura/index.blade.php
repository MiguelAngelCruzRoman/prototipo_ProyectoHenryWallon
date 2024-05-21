<title>Asignaturas</title>

@extends('layouts.app')
@section('content')

<div class="container">
    <div class="row">
        <center>
            <h1 style="margin-bottom: 20px;"><strong>ASIGNATURAS</strong></h1>
        </center>
    </div>

    <div class="row">
        @foreach ($asignaturas as $asignatura)
        <div class="col-md-4">
            <div class="card card-style">
                <div class="card-body position-relative">
                    <img src="{{ Storage::url($asignatura->imagen) }}" class="card-img-top" alt="imagen asignatura">

                    <style>
                        .docente-img {
                            position: absolute;
                            top: 50%;
                            left: 50%;
                            transform: translate(-50%, -50%);
                            border-radius: 50%;
                            border: 4px solid #fff;
                            width: 150px;
                            height: 150px;
                            object-fit: cover;
                        }
                    </style>

                    <img src="{{ Storage::url($asignatura->foto) }}" class="docente-img" alt="foto docente">
                    
                    

                    <h3 class="card-title" style="margin-top: 50px;">{{ $asignatura->nombre }}</h3>
                    <p class="card-text">Docente: {{ $asignatura->primerNombre }} @if ($asignatura->segundoNombre){{ $asignatura->segundoNombre }}@endif {{ $asignatura->apellidoPaterno }} {{ $asignatura->apellidoMaterno }}</p>
                    <div class="btn-group">
                        <a href="{{ route('asignatura.planeacion.ver', ['idAsignatura' => $asignatura->id_asignatura, 'idDocente' => $asignatura->id_docente]) }}"
                            class="btn btn-primary">
                            Planeación
                        </a>
                        <a href="{{ route('asignatura.index') }}" class="btn btn-primary">
                            Calificaciones
                        </a>
                        <a href="{{ route('asignatura.index') }}" class="btn btn-primary">
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
