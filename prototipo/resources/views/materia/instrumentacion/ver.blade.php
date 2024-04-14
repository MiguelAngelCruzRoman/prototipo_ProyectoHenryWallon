<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instrumentación: {{ $materia[0]->nombre }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        rel="stylesheet"integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
        crossorigin="anonymous">
</head>

<style>
    .card-style {
        border: 4px solid #000000;
        background-color: #CDC6C6;
        border-radius: 20px;
    }

    .list-group-item {
        background-color: #CDC6C6;
        border: 4px solid #000000;
    }

    .custom-button {
        background-color: #0056b3;
        color: black;
    }

    .custom-button:hover {
        background-color: #007bff;
    }

    .custom-body {
        background-color: #cce5ff;
    }
</style>

</head>

<body>

    @include('general.navbar')
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <center>
                    <h1 class="mb-4">{{ $materia[0]->nombre }}</h1>
                    <h3>- INSTRUMENTACIÓN DIDACTICA -</h3>
                </center>
            </div>
        </div>
    </div>
    <div class="container mt-5">

        <div class="row">
            <div class="col-md-5 card-style">
                <h6><strong>OBJETIVO</strong></h6>
                <p>{{ $materia[0]->objetivo }}</p>
            </div>

            <div class="col-md-2 ">
            </div>

            <div class="col-md-5 card-style">
                <h6><strong>INTENCIÓN DIDÁCTICA</strong></h6>
                <p>{{ $materia[0]->intencionDidactica }}</p>
            </div>
        </div>



        <div class="row mt-5">
            <div class="col-md-4">
                <div class="card text-center card-style" style="height: 350px">
                    <div class="p-4">
                        <h4><strong>DOCENTE QUE IMPARTE</strong></h4>

                        <img src="{{ $materia[0]->foto }}" height="200px" width="200px"
                            style="border-radius: 80%; border: 5px solid black;">
                        <div class="card-body">
                            <h5 class="card-title">
                                {{ $materia[0]->primerNombre }}
                                @if ($materia[0]->segundoNombre)
                                    {{ $materia[0]->segundoNombre }}
                                @endif
                                {{ $materia[0]->apellidoPaterno }} {{ $materia[0]->apellidoMaterno }}
                            </h5>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card card-style">
                    <div class="card-body">
                        <h5 class="card-title"><strong>UNIDADES</strong></h5>
                        <div class="accordion" id="accordionExample">
                            @foreach ($unidades as $index => $unidad)
                                <div class="accordion-item" style="border-radius: 20px; border: 1px solid black;">
                                    <h2 class="accordion-header" id="heading{{ $index }}">
                                        <button class="accordion-button custom-button" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapse{{ $index }}"
                                            aria-expanded="true" aria-controls="collapse{{ $index }}"
                                            style="border-radius: 20px; border: 1px solid black;">
                                            Unidad {{ $unidad->numero }} ({{ $unidad->porcentajeCalificacionFinal }}%)
                                        </button>
                                    </h2>
                                    <div id="collapse{{ $index }}" class="accordion-collapse collapse"
                                        aria-labelledby="heading{{ $index }}"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body custom-body"
                                            style="border-radius: 20px; border: 1px solid black;">
                                            <ul>
                                                <li><strong>Competencia: </strong>{{ $unidad->competencia }}</li>
                                                <li><strong>Calificación máxima:
                                                    </strong>{{ $unidad->calificacionMaxima }} puntos</li>
                                                <li><strong>Calificación mínima:
                                                    </strong>{{ $unidad->calificacionMinima }} puntos</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>




            <div class="col-md-4">
                <div class="card card-style">
                    <div class="card-header text-center">
                        <h5><strong>OBJETIVOS DE APRENDIZAJE</strong></h5>
                    </div>
                    <ul class="list-group list-group-flush"
                        style="border-top: 1px solid #000000; border-bottom-left-radius: 20px; border-bottom-right-radius: 20px;">
                        <li class="list-group-item"><strong>Créditos: </strong>{{ $materia[0]->creditos }}</li>
                        <li class="list-group-item"><strong>Horas prácticas: </strong>{{ $materia[0]->horasPracticas }}
                        </li>
                        <li class="list-group-item"><strong>Horas teóricas: </strong>{{ $materia[0]->horasTeoricas }}
                        </li>
                        <li class="list-group-item"><strong>Calificación aprobatoria:
                            </strong>{{ $materia[0]->calificacionAprobatoria }}</li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="row mt-5">
            <div class="col-md-12">
                <div class="card card-style">
                    <div class="card-body">
                        <h3 align="center" class="card-title"><strong>TEMARIO</strong></h3>
                        <div class="container mt-5">
                            <table class="table table-bordered" style="border-color: #000000; ">
                                <thead style="background-color: #94B1F9;">
                                    <tr align="center">
                                        <th>Unidad</th>
                                        <th>Tema</th>
                                        <th>Subtema</th>
                                        <th>Duración</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php

                                        $ultimaUnidad = 1;

                                        foreach ($temas as $tema) {
                                            if ($ultimaUnidad < $tema->numero) {
                                                $ultimaUnidad = $tema->numero;
                                            }
                                        }

                                        $arregloUnidadesTemas = array_fill(0, $ultimaUnidad, 0);

                                        foreach ($temas as $tema) {
                                            for ($i = 0; $i < $ultimaUnidad; $i++) {
                                                if ($i + 1 == $tema->numero) {
                                                    $arregloUnidadesTemas[$i] = $arregloUnidadesTemas[$i] + 1;
                                                }
                                            }
                                        }

                                        $contadorUnidad = 0;
                                        $contadorTemas = $arregloUnidadesTemas[0];
                                    @endphp


                                    @foreach ($temas as $tema)
                                        <tr>
                                            @if ($contadorUnidad == $tema->numero - 1)
                                                <td rowspan="{{ $arregloUnidadesTemas[$tema->numero - 1] }}"
                                                    style="text-align: center; vertical-align: middle; background-color: #B3C9FF;">
                                                    {{ $contadorUnidad + 1 }}</td>

                                                @php
                                                    $contadorUnidad++;
                                                @endphp
                                            @endif

                                            <td style="background-color: #B3C9FF;">{{ $tema->titulo }}</td>
                                            <td style="background-color: #B3C9FF;">{{ $tema->subtitulo }}</td>
                                            <td style="background-color: #B3C9FF;">{{ $tema->horasDuracion }} hora(s)
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="height: 50px;"></div>
</body>

@include('general.footer')
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</html>
