<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instrumentación: {{ $materia[0]->nombre }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <center>
                    <h1 class="mb-4">{{ $materia[0]->nombre }}</h1>
                    <h3>- Instrumentación didáctica-</h3>
                </center>
            </div>
        </div>
    </div>
    <div class="container mt-5">

        <div class="row">
            <div class="col-md-6">
                <p><strong>Objetivo:</strong> {{ $materia[0]->objetivo }}</p>
            </div>
            <div class="col-md-6">
                <p><strong>Intención didáctica:</strong> {{ $materia[0]->intencionDidactica }}</p>
            </div>
        </div>



        <div class="row mt-5">
            <div class="col-md-4">
                <div class="card text-center" style="height: 350px">
                    <div class="p-4">
                        <h4>Docente que imparte</h4>

                        <img src="{{ $materia[0]->foto }}" height="150px" width="150px" style="border-radius: 80%">
                        <div class="card-body">
                            <h5 class="card-title">
                                {{ $materia[0]->primerNombre }}
                                @if ($materia[0]->segundoNombre)
                                    {{ $materia[0]->segundoNombre }}
                                @endif
                                {{ $materia[0]->apellidoPaterno }} {{ $materia[0]->apellidoMaterno }}
                            </h5>
                        </div>

                        <div class="card-body">
                            <a href="#" class="btn btn-primary">Saber más</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Unidades</h5>
                        <div class="accordion" id="accordionExample">
                            @foreach ($unidades as $index => $unidad)
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="heading{{ $index }}">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapse{{ $index }}" aria-expanded="true"
                                            aria-controls="collapse{{ $index }}">
                                            Unidad {{ $unidad->numero }} ({{ $unidad->porcentajeCalificacionFinal }}%)
                                        </button>
                                    </h2>
                                    <div id="collapse{{ $index }}" class="accordion-collapse collapse"
                                        aria-labelledby="heading{{ $index }}"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
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
                <div class="card">
                    <div class="card-header text-center">
                        <h5>Objetivos de Aprendizaje</h5>
                    </div>
                    <ul class="list-group list-group-flush">
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
                <div class="card">
                    <div class="card-body">
                        <h3 align="center" class="card-title">Temario</h3>
                        <div class="container mt-5">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
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
                                                    style="text-align: center; vertical-align: middle;">
                                                    {{ $contadorUnidad + 1 }}</td>

                                                @php
                                                    $contadorUnidad++;
                                                @endphp
                                            @endif

                                            <td>{{ $tema->titulo }}</td>
                                            <td>{{ $tema->subtitulo }}</td>
                                            <td>{{ $tema->horasDuracion }} hora(s)</td>
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




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
