<title>Asignaturas</title>

@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <center>
                    <h1 style="margin-bottom: 20px;"><strong>ASIGNATURAS</strong></h1>
                </center>
            </div>

           
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



                            <h3 class="card-title" style="margin-top: 50px;">{{ $asignatura->nombre }}</h3>
                            <p class="card-text">Docente: {{ $asignatura->primerNombre }} @if ($asignatura->segundoNombre)
                                    {{ $asignatura->segundoNombre }}
                                @endif {{ $asignatura->apellidoPaterno }}
                                {{ $asignatura->apellidoMaterno }}</p>
                            <div class="btn-group">
                                <a href="{{ route('docente.agregar.planeacion', ['idAsignatura' => $asignatura->idAsignatura, 'idDocente' => $asignatura->id_docente]) }}"
                                    class="btn" style="background-color: #21182F;color: white">
                                    Planeación
                                </a>

                                <a href="{{ route('docente.asignatura.asistencia', ['idAsignatura' => $asignatura->id_asignatura, 'idDocente' => $asignatura->id_docente, 'nombreAsignatura' => $asignatura->nombre]) }}"
                                    class="btn" style="background-color: #21182F;color: white">
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
