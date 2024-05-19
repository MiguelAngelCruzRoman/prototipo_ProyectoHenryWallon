<title>Página de Inicio</title>

@extends('layouts.app')
@section('content')
    <div class="container">
        <center>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <center>
                        <h1 style="color:black"><strong>PÁGINA DE INICIO</strong></h1>
                        <h3 style="color:black"><strong>- ALUMNO -</strong></h3>
                    </center>
                </div>


            </div>

            <div style="height: 30px;"></div>
            <div class="row">

                <div class="col-md-4">
                    <a href="">
                        <div class="card card-style" style="background-color: #21182F">
                            <div class="card-body">
                                <center>
                                    <h5 class="card-title" style="color:white">HORARIOS</h5>
                                    <i class=" fas fa-calendar fa-6x" style="color: white"></i>
                                </center>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4">
                </div>


                <div class="col-md-4">
                    <a href="{{ route('asignatura.index') }}">
                        <div class="card card-style" style="background-color: #21182F">
                            <div class="card-body">
                                <center>
                                    <h5 class="card-title" style="color:white">ASIGNATURAS</h5>
                                    <i class=" fas fa-book fa-6x" style="color: white"></i>
                                </center>
                            </div>
                        </div>
                    </a>
                </div>


            </div>


        </center>
    </div>
@endsection
