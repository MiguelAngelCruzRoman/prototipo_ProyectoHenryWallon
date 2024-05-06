<title>Página de Inicio</title>

@extends('layouts.app')
@section('content')
    <div class="container">
        <center>
            <div class="row">
                <center>
                    <h1><strong>PÁGINA DE INICIO</strong></h1>
                    <h3><strong>- DOCENTE -</strong></h3>
                </center>
            </div>

            <div style="height: 30px;"></div>

            <div class="row">
               
                <div class="col-md-4">
                    <a href="">
                        <div class="card card-style">
                            <div class="card-body">
                                <center>
                                    <h5 class="card-title" style="color:black">HORARIOS</h5>
                                    <img src="https://cdn-icons-png.flaticon.com/128/6102/6102319.png" alt="">
                                </center>
                            </div>
                        </div>
                    </a>
                </div>
 
                <div class="col-md-4">
                    <a href="{{ route('asignatura.index') }}" >
                        <div class="card card-style">
                            <div class="card-body">
                                <center>
                                    <h5 class="card-title" style="color:black">ASIGNATURAS</h5>
                                    <img src="https://cdn-icons-png.flaticon.com/128/29/29302.png" alt="">
                                </center>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4">
                    <a href="{{ route('evaluacion.index') }}" >
                        <div class="card card-style">
                            <div class="card-body">
                                <center>
                                    <h5 class="card-title" style="color:black">REPORTES</h5>
                                    <img src="https://cdn-icons-png.flaticon.com/128/5956/5956873.png" alt="">
                                </center>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </center>
    </div>
@endsection
