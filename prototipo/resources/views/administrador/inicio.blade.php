    <title>Página de Inicio</title>

    @extends('layouts.app')
    @section('content')
        <div class="container">
            <center>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6"><center>
                        <h1 style="color:black"><strong>PÁGINA DE INICIO</strong></h1>
                        <h3 style="color:black"><strong>- ADMINISTRADOR -</strong></h3>
                    </center></div>

                    
                </div>

                <div style="height: 30px;"></div>

                <div class="row">
                    <div class="col-md-4">
                        <a href="{{ route('user.inicio') }}">
                            <div class="card card-style" style="background-color: #21182F">
                                <div class="card-body">
                                    <center>
                                        <h5 class="card-title" style="color:white">USUARIOS</h5>
                                        <i class=" fas fa-users fa-6x" style="color: white"></i>

                                    </center>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-md-4">
                        <a href="{{ route('periodo.index') }}">
                            <div class="card card-style" style="background-color: #21182F">
                                <div class="card-body">
                                    <center>
                                        <h5 class="card-title" style="color:white">PERIODOS</h5>
                                        <i class=" fas fa-clock fa-6x" style="color: white"></i>
                                    </center>
                                </div>
                            </div>
                        </a>
                    </div>

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
                </div>


                <div style="height: 30px;"></div>


                <div class="row">
                    <div class="col-md-4">
                        <a href="{{ route('evaluacion.index') }}">
                            <div class="card card-style" style="background-color: #21182F">
                                <div class="card-body">
                                    <center>
                                        <h5 class="card-title" style="color:white">EVALUACIONES</h5>
                                        <i class=" fas fa-check fa-6x" style="color: white"></i>

                                    </center>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col-md-4">
                        <a href="{{ route('asignatura.index') }}">
                            <div class="card card-style" style="background-color:#21182F">
                                <div class="card-body">
                                    <center>
                                        <h5 class="card-title" style="color:white">ASIGNATURAS</h5>
                                        <i class=" fas fa-book fa-6x" style="color: white"></i>

                                    </center>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col-md-4">
                        <a href="{{ route('grupo.index') }}">
                            <div class="card card-style" style="background-color: #21182F">
                                <div class="card-body">
                                    <center>
                                        <h5 class="card-title" style="color:white">GRUPOS</h5>
                                        <i class=" fas fa-chalkboard-teacher fa-6x" style="color: white"></i>

                                    </center>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                <div style="height: 30px;"></div>

                <div class="row">

                    <div class="col-md-4">
                    </div>

                    <div class="col-md-4 ">
                        <a href="{{ route('evaluacion.index') }}">
                            <div class="card card-style" style="background-color: #21182F">
                                <div class="card-body">
                                    <center>
                                        <h5 class="card-title" style="color:white">REPORTES</h5>
                                        <i class=" fas fa-chart-bar fa-6x" style="color: white"></i>
                                    </center>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

            </center>
        </div>
    @endsection
