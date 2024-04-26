<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Página de Inicio</title>
    @include('general.estilos')
</head>

<body>

    @include('general.navbar')

    <div class="container">
        <center>
            <div class="row">
                <center>
                    <h1><strong>PÁGINA DE INICIO</strong></h1>
                </center>
            </div>

            <div style="height: 30px;"></div>

            <div class="row">
                <div class="col-md-4">
                    <a href="{{ route('asignatura.index') }}" class="btn btn-primary">
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
                    <a href="" class="btn btn-primary">
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
                    <a href="" class="btn btn-primary">
                        <div class="card card-style">
                            <div class="card-body">
                                <center>
                                    <h5 class="card-title" style="color:black">PERIODOS</h5>
                                    <img src="https://cdn-icons-png.flaticon.com/128/2421/2421935.png" alt="">
                                </center>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="col-md-4">
                    <a href="{{ route('grupo.index') }}" class="btn btn-primary">
                        <div class="card card-style">
                            <div class="card-body">
                                <center>
                                    <h5 class="card-title" style="color:black">GRUPOS</h5>
                                    <img src="https://cdn-icons-png.flaticon.com/128/9997/9997596.png" alt="">
                                </center>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4">
                    <a href="" class="btn btn-primary">
                        <div class="card card-style">
                            <div class="card-body">
                                <center>
                                    <h5 class="card-title" style="color:black">USUARIOS</h5>
                                    <img src="https://cdn-icons-png.flaticon.com/128/33/33308.png" alt="">
                                </center>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </center>
    </div>

    <div style="height: 50px;"></div>

</body>

@include('general.footer')

</html>
