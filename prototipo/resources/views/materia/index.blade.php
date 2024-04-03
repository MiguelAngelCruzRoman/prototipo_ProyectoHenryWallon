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
            object-fit: cover; 
        }

        .card {
            height: 500px;
        }

        .btn-group {
            position: absolute;
            bottom: 5px;
            left: 50%;
            transform: translateX(-50%);
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            @foreach ($materias as $materia)
                <div class="col-xl-4 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm text-center position-relative h-100">
                        <img src="{{ $materia->imagen }}" alt="" class="img-fluid card-img-rectangular">
                        <div class="p-4">
                            <h2><a class="text-dark">{{ $materia->nombre }}</a></h2>

                            <img src="{{ $materia->foto }}" class="circular-img" alt="...">
                            <div class="card-body">
                                <h6 class="card-title">
                                    Docente: {{ $materia->primerNombre }}
                                    @if ($materia->segundoNombre)
                                        {{ $materia->segundoNombre }}
                                    @endif
                                    {{ $materia->apellidoPaterno }} {{ $materia->apellidoMaterno }}
                                </h6>
                            </div>

                            <div class="btn-group btn-group-toggle mt-3" data-toggle="buttons">
                                <a href="{{ route('materia.instrumentacion.ver', ['idMateria' => $materia->identificador_Materia, 'idDocente' => $materia->identificador_Docente]) }}" class="btn btn-primary active">
                                    Instrumentación
                                </a>
                                <a href="{{ route('materia.index') }}" class="btn btn-primary active">
                                    Calificaciones
                                </a>
                                <a href="{{ route('materia.index') }}" class="btn btn-primary active">
                                    Asistencias
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                @if ($loop->iteration % 3 == 0)
        </div>
        <div class="row">
            @endif
            @endforeach
        </div>
    </div>
</body>

</html>
