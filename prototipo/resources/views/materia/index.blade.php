<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Materias</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        .circular-img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            border: 5px solid black;
            position: absolute;
            top: 45%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1;
        }

        .card-img-rectangular {
            width: 100%;
            height: 300px;
            border-radius: 15px;
            border-bottom: 4px solid #000000;
            border-top: 1px solid #000000;
            object-fit: cover;
        }

        .card-style {
            border: 4px solid #000000;
            background-color: #CDC6C6;
            border-radius: 20px;
            height: 550px;
        }

        .btn-group {
            position: absolute;
            bottom: 15px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            justify-content: space-between;
            width: 100%;
        }

        .btn {
            flex: 1;
            background-color: #CA5A5A;
            border: 4px solid #A60303;
            border-radius: 10px;
            color: white;
            padding: 3px;
            margin: 0 5px;
        }
    </style>
</head>

<body>

    @include('general.navbar')


    <div class="container">
        <div class="row">
            <center>
                <h1><strong>MATERIAS</strong></h1>
                <h3>- IDENTIFICADOR -</h3>
            </center>
        </div>

        <div class="row">
            @foreach ($materias as $materia)
                <div class="col-xl-4 col-lg-4 col-md-4 mb-4">
                    <div class="text-center position-relative card-style">
                        <img src="{{ $materia->imagen }}" alt="" class="img-fluid card-img-rectangular">
                        <div class="p-4">

                            <div class="card-body">
                                <img src="{{ $materia->foto }}" class="circular-img" alt="...">
                            </div>

                            <h3><strong>{{ $materia->nombre }} </strong></h3>


                            <div class="card-body">
                                <h6 class="card-title">
                                    Docente: {{ $materia->primerNombre }}
                                    @if ($materia->segundoNombre)
                                        {{ $materia->segundoNombre }}
                                    @endif
                                    {{ $materia->apellidoPaterno }} {{ $materia->apellidoMaterno }}
                                </h6>
                            </div>

                            <div class="btn-group">
                                <a href="{{ route('materia.instrumentacion.ver', ['idMateria' => $materia->identificador_Materia, 'idDocente' => $materia->identificador_Docente]) }}"
                                    class="btn active">
                                    Instrumentación
                                </a>
                                <a href="{{ route('materia.index') }}" class="btn active">
                                    Calificaciones
                                </a>
                                <a href="{{ route('materia.index') }}" class="btn active">
                                    Asistencias
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</body>

@include('general.footer')

</html>
