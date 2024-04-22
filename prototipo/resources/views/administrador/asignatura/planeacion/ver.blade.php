<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Planeación académica: {{ $asignatura[0]->nombre }}</title>
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


    .custom-body {
        background-color: #cce5ff;
    }

    .fixed-button {
        position: absolute;
        top: 30%;
        left: 10%;
        transform: translateY(-50%);
        z-index: 9999;
        padding: 10px;
        background-color: #ffffff;
        color: #00000;
        border-radius: 10px;
        border: 4px solid #000000;
        cursor: pointer;
    }

</style>

</head>

<body>

    @include('general.navbar')
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <center>
                    <h1 class="mb-4">{{ $asignatura[0]->nombre }}</h1>
                    <h3>- PLANEACIÓN ACADÉMICA -</h3>
                </center>
            </div>
        </div>
    </div>

    
    <div class="container mt-5">

        <div class="fixed-button" onclick="window.history.back()">
        <img src="https://cdn-icons-png.flaticon.com/128/3594/3594012.png" alt="" height="20px">
            Regresar
        </div>


        <div class="row">
            <div class="col-md-5 card-style">
                <h6><strong>OBJETIVO</strong></h6>
                <p>{{ $asignatura[0]->objetivo }}</p>
            </div>

            <div class="col-md-2 ">
            </div>

            <div class="col-md-5 card-style">
                <h6><strong>INTENCIÓN DIDÁCTICA</strong></h6>
                <p>{{ $asignatura[0]->intencionDidactica }}</p>
            </div>
        </div>



        <div class="row mt-5">
            <div class="col-md-4">
                <div class="card text-center card-style" style="height: 350px">
                    <div class="p-4">
                        <h4><strong>DOCENTE QUE IMPARTE</strong></h4>

                        <img src="{{ $asignatura[0]->foto }}" height="200px" width="200px"
                            style="border-radius: 80%; border: 5px solid black;">
                        <div class="card-body">
                            <h5 class="card-title">
                                {{ $asignatura[0]->primerNombre }}
                                @if ($asignatura[0]->segundoNombre)
                                    {{ $asignatura[0]->segundoNombre }}
                                @endif
                                {{ $asignatura[0]->apellidoPaterno }} {{ $asignatura[0]->apellidoMaterno }}
                            </h5>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card card-style">
                    <div class="card-body">
                        <h5 class="card-title"><strong>BLOQUES</strong></h5>
                        <div class="accordion" id="accordionExample">
                            @foreach ($bloques as $index => $bloque)
                                <div class="accordion-item" style="border-radius: 20px; border: 1px solid black;">
                                    <h2 class="accordion-header" id="heading{{ $index }}">
                                        <button class="accordion-button custom-button" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapse{{ $index }}"
                                            aria-expanded="true" aria-controls="collapse{{ $index }}"
                                            style="border-radius: 20px; border: 1px solid black; background-color:#B3C9FF">
                                            Bloque {{ $bloque->numero }} ({{ $bloque->porcentajeCalificacionFinal }}%)
                                        </button>
                                    </h2>
                                    <div id="collapse{{ $index }}" class="accordion-collapse collapse"
                                        aria-labelledby="heading{{ $index }}"
                                        data-bs-parent="#accordionExample">
                                        <div class="accordion-body custom-body"
                                            style="border-radius: 20px; border: 1px solid black;">
                                            <ul>
                                                <li><strong>Porpósito: </strong>{{ $bloque->proposito }}</li>
                                                <li><strong>Calificación máxima:
                                                    </strong>{{ $bloque->calificacionMaxima }} puntos</li>
                                                <li><strong>Calificación mínima:
                                                    </strong>{{ $bloque->calificacionMinima }} puntos</li>
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
                        <li class="list-group-item"><strong>Créditos: </strong>{{ $asignatura[0]->creditos }}</li>
                        <li class="list-group-item"><strong>Horas con docente:
                            </strong>{{ $asignatura[0]->horasDocente }}
                        </li>
                        <li class="list-group-item"><strong>Horas de estudio independiente:
                            </strong>{{ $asignatura[0]->horasEstudioIndependiente }}
                        </li>
                        <li class="list-group-item"><strong>Calificación aprobatoria:
                            </strong>{{ $asignatura[0]->calificacionAprobatoria }}</li>
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
                                        <th>BLOQUE</th>
                                        <th>PROGRESIÓN</th>
                                        <th>APRENDIZAJE ESPERADO</th>
                                        <th>MATERIALES</th>
                                        <th>ACTIVIDADES DE APRENDIZAJE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php

                                        $ultimoBloque = 1;

                                        foreach ($progresiones as $progresion) {
                                            if ($ultimoBloque < $progresion->numero) {
                                                $ultimoBloque = $progresion->numero;
                                            }
                                        }

                                        $arreglobloquesProgresiones = array_fill(0, $ultimoBloque, 0);

                                        foreach ($progresiones as $progresion) {
                                            for ($i = 0; $i < $ultimoBloque; $i++) {
                                                if ($i + 1 == $progresion->numero) {
                                                    $arreglobloquesProgesiones[$i] =
                                                        $arreglobloquesProgresiones[$i] + 1;
                                                }
                                            }
                                        }

                                        $contadorBloque = 0;

                                        $conteoPorProgresion = [];

                                        foreach ($progresiones as $bloque) {
                                            $idProgresion = $bloque->id_Progresion;
                                            if (isset($conteoPorProgresion[$idProgresion])) {
                                                $conteoPorProgresion[$idProgresion]++;
                                            } else {
                                                $conteoPorProgresion[$idProgresion] = 1;
                                            }
                                        }

                                        $indice = 0;
                                        $claves = array_keys($conteoPorProgresion);

                                    @endphp


                                    @foreach ($progresiones as $progresion)
                                        <tr>
                                            @if ($contadorBloque == $progresion->numero - 1)
                                                <td rowspan="{{ $arreglobloquesProgresiones[$progresion->numero - 1] }}"
                                                    style="text-align: center; vertical-align: middle; background-color: #B3C9FF;">
                                                    {{ $contadorBloque + 1 }}. {{ $progresion->nombreBloque }} </td>

                                                @php
                                                    $contadorBloque++;
                                                    $contadorProgresion = 1;
                                                @endphp
                                            @endif

                                            @if ($claves[$indice] == $progresion->id_Progresion)
                                                <td rowspan="{{ $conteoPorProgresion[$claves[$indice]] }}"
                                                    style="background-color: #B3C9FF;">
                                                    {{ $contadorBloque }}.{{ $contadorProgresion }}.
                                                    {{ $progresion->tema }}</td>

                                                <td style="background-color: #B3C9FF;">
                                                    {{ $progresion->aprendizajeEsperado }}</td>
                                                <td style="background-color: #B3C9FF;">{{ $progresion->materiales }}
                                                    hora(s) </td>
                                                <td style="background-color: #B3C9FF;">
                                                    <ul>
                                                        @foreach ($progresiones as $progresion)
                                                            @if ($claves[$indice] == $progresion->id_Progresion)
                                                                <li> {{ $progresion->actividadAprendizaje }}</li>
                                                            @endif
                                                        @endforeach

                                                    </ul>
                                                </td>

                                                @php
                                                    $indice++;
                                                    $contadorProgresion++;
                                                @endphp
                                            @endif
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
