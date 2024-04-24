<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Previsualizar instrumentación</title>
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
</style>

</head>

<body>

    @include('general.navbar')
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <center>
                    <h1 class="mb-4">{{ $datosMateria['materia'] }}</h1>
                    <h3>- INSTRUMENTACIÓN DIDACTICA -</h3>
                </center>
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-5 card-style">
                <h6><strong>OBJETIVO</strong></h6>
                <p>{{ $datosMateria['objetivo'] }}</p>
            </div>

            <div class="col-md-2 ">
            </div>

            <div class="col-md-5 card-style">
                <h6><strong>INTENCIÓN DIDÁCTICA</strong></h6>
                <p>{{ $datosMateria['intencionDidactica'] }}</p>
            </div>
        </div>



        <div class="row mt-5">
            <div class="col-md-4">
                <div class="card text-center card-style" style="height: 350px">
                    <div class="p-4">
                        <h4><strong>DOCENTE QUE IMPARTE</strong></h4>

                        <img src="" height="200px" width="200px"
                            style="border-radius: 80%; border: 5px solid black;">
                        <div class="card-body">
                            <h5 class="card-title">
                                * Aquí se manda a traer el nombre del docente cuando se agreguen roles *
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
                            @foreach ($datosUnidades as $unidadIndex => $unidad)
                                <div class="accordion-item" style="border-radius: 20px; border: 1px solid black;">
                                    <h2 class="accordion-header" id="heading{{ $unidadIndex }}">
                                        <button class="accordion-button custom-button" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapse{{ $unidadIndex }}"
                                            aria-expanded="true" aria-controls="collapse{{ $unidadIndex }}"
                                            style="border-radius: 20px; border: 1px solid black; background-color:#B3C9FF">
                                            Unidad {{ $unidadIndex }} ({{ $unidad['porcentajeCalificacionFinal'] }}%)
                                        </button>
                                    </h2>
                                    <div id="collapse{{ $unidadIndex }}" class="accordion-collapse collapse"
                                        aria-labelledby="heading{{ $unidadIndex }}" data-bs-parent="#accordionExample">
                                        <div class="accordion-body custom-body"
                                            style="border-radius: 20px; border: 1px solid black;">
                                            <ul>
                                                <li><strong>Competencia: </strong>{{ $unidad['competencia'] }}</li>
                                                <li><strong>Calificación máxima:
                                                    </strong>{{ $unidad['calificacionMaxima'] }} puntos</li>
                                                <li><strong>Calificación mínima:
                                                    </strong>{{ $unidad['calificacionMinima'] }} puntos</li>
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
                        <li class="list-group-item"><strong>Créditos: </strong>{{ $datosMateria['creditos'] }}</li>
                        <li class="list-group-item"><strong>Horas prácticas:
                            </strong>{{ $datosMateria['horasPracticas'] }}
                        </li>
                        <li class="list-group-item"><strong>Horas teóricas:
                            </strong>{{ $datosMateria['horasTeoricas'] }}
                        </li>
                        <li class="list-group-item"><strong>Calificación aprobatoria:
                            </strong>{{ $datosMateria['calificacionAprobatoria'] }}</li>
                    </ul>
                </div>
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
                                    $contadorUnidad = 1;
                                    $contadorTema = 1;
                                    $contadorSubtema = 1;
                                @endphp

                                @foreach ($datosUnidades as $unidadIndex => $unidad)
                                    @foreach ($unidad as $temaIndex => $tema)
                                        @if (strpos($temaIndex, 'Tema_') === 0)
                                            @php
                                                $temaRowSpan = count($tema) - 1;
                                                $controlPrimeraImpresion = 0;
                                            @endphp
                                            @foreach ($tema as $subtemaIndex => $subtema)
                                                @if (strpos($subtemaIndex, 'Subtema_') === 0)
                                                    <tr>
                                                        @if ($controlPrimeraImpresion == 0)
                                                            <td rowspan="{{ $temaRowSpan }}"
                                                                style="text-align: center; vertical-align: middle; background-color: #B3C9FF;">
                                                                {{ $contadorUnidad }}.
                                                                {{ $unidad['nombre'] }}
                                                            </td>
                                                            <td rowspan="{{ $temaRowSpan }}"
                                                                style="text-align: center; vertical-align: middle; background-color: #B3C9FF;">
                                                                {{ $contadorUnidad }}.{{ $contadorTema }}.
                                                                {{ $tema['nombre'] }}
                                                            </td>
                                                            @php
                                                                $controlPrimeraImpresion = 1;
                                                                $contadorTema = 1;
                                                                $contadorTema++;
                                                            @endphp
                                                        @endif
                                                        <td
                                                            style="text-align: center; vertical-align: middle; background-color: #B3C9FF;">
                                                            {{ $contadorUnidad }}.{{ $contadorTema }}.{{ $contadorSubtema }}.
                                                            {{ $subtema['nombre'] }}</td>
                                                        @php
                                                            $contadorSubtema++;
                                                        @endphp
                                                        <td
                                                            style="text-align: center; vertical-align: middle; background-color: #B3C9FF;">
                                                            {{ $subtema['duracion'] }} hora(s)</td>
                                                    </tr>
                                                @endif
                                            @endforeach
                                            @php
                                                $contadorSubtema = 1;
                                            @endphp
                                        @endif
                                    @endforeach
                                    @php
                                        $contadorTema = 1;
                                    @endphp
                                    @php
                                        $contadorUnidad++;
                                    @endphp
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div style="height: 50px;"></div>

    <div class="row">
        <div class="col-6">
            <center>
                <button class="btn btn-primary me-2" onclick="goBack()"
                    style="background-color: #B3C9FF; border: 4px solid #000000;border-radius: 20px; color: black">
                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                        width="40px">
                    <strong>REGRESAR</strong>
                </button>
            </center>
        </div>
        <div class="col-6">
            <center>
                <button type="button" class="btn " onclick="submitForm()"
                    style="background-color: #B3C9FF; border: 4px solid #000000;border-radius: 20px; color: black">
                    <strong>GUARDAR</strong>
                    <img src="https://cdn-icons-png.flaticon.com/128/376/376218.png" alt="flechaContinuar"
                        width="40px">
                </button>
            </center>
        </div>
    </div>

    <div style="height: 50px;"></div>

</body>

@include('general.footer')


<form id="formularioDatosPrevisualizar" action="{{ route('materia.agregar.insert') }}" method="POST">
    @csrf
    <input type="hidden" name="datosUnidades" value='<?php echo json_encode($datosUnidades); ?>'>
    <input type="hidden" name="datosMateria" value='<?php echo json_encode($datosMateria); ?>'>

</form>
<script>
    function submitForm() {
        document.getElementById("formularioDatosPrevisualizar").submit();
    }

    function goBack() {
        window.history.back();
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</html>
