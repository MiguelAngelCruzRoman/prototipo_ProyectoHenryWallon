<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Agregar Datos Unidad</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        .card-style {
            border: 4px solid #000000;
            background-color: #CDC6C6;
            border-radius: 20px;
        }

        .btn {
            flex: 1;
            background-color: #B3C9FF;
            border: 4px solid #000000;
            border-radius: 10px;
            color: black;
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
                <h1><strong>REGISTRAR INSTRUMENTACIÓN</strong></h1>
                <h3>- DATOS DE LA UNIDAD -</h3>
            </center>
        </div>

        <div style="height: 50px;"></div>


        <div class="card card-style">
            <div class="card-body">
                <form id="formularioDatosUnidad"
                    action="{{ route('asignatura.agregar.datosBloque', ['numeroUnidad' => $numeroUnidad]) }}"
                    method="POST">
                    @csrf

                    <?php foreach ($_POST as $campo => $valor): ?>
                    <input type="hidden" name="<?php echo $campo; ?>" value="<?php echo $valor; ?>">
                    <?php endforeach; ?>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="Unidad_<?php echo $numeroUnidad - 1; ?>_nombre" class="form-label">Nombre de la
                                unidad:</label>
                            <input type="text" class="form-control" id="Unidad_<?php echo $numeroUnidad - 1; ?>_nombre"
                                name="Unidad_<?php echo $numeroUnidad - 1; ?>_nombre">
                        </div>
                        <div class="col-md-6">
                            <label for="Unidad_<?php echo $numeroUnidad - 1; ?>_competencia" class="form-label">Competencia:</label>
                            <input type="text" class="form-control" id="Unidad_<?php echo $numeroUnidad - 1; ?>_competencia"
                                name="Unidad_<?php echo $numeroUnidad - 1; ?>_competencia">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">
                        </div>

                        <div class="col-md-4">
                            <label for="Unidad_<?php echo $numeroUnidad - 1; ?>_porcentajeCalificacionFinal"
                                class="form-label">Porcentaje de calificación
                                final:</label>
                            <input type="number" class="form-control"
                                id="Unidad_<?php echo $numeroUnidad - 1; ?>_porcentajeCalificacionFinal"
                                name="Unidad_<?php echo $numeroUnidad - 1; ?>_porcentajeCalificacionFinal">
                        </div>
                        <div class="col-md-2">
                            <label for="Unidad_<?php echo $numeroUnidad - 1; ?>_calificacionMaxima" class="form-label">Calificación
                                máxima:</label>
                            <input type="number" class="form-control"
                                id="Unidad_<?php echo $numeroUnidad - 1; ?>_calificacionMaxima"
                                name="Unidad_<?php echo $numeroUnidad - 1; ?>_calificacionMaxima">
                        </div>
                        <div class="col-md-2">
                            <label for="Unidad_<?php echo $numeroUnidad - 1; ?>_calificacionMinima" class="form-label">Calificación
                                mínima:</label>
                            <input type="number" class="form-control"
                                id="Unidad_<?php echo $numeroUnidad - 1; ?>_calificacionMinima"
                                name="Unidad_<?php echo $numeroUnidad - 1; ?>_calificacionMinima">
                        </div>

                    </div>
            </div>
        </div>

        <div style="height: 100px;"></div>





        <div class="row">
            <center>
                <h4>- DATOS DE LOS TEMAS -</h4>
            </center>
        </div>
        <div style="height: 30px;"></div>




        <div class="accordion" id="outerAccordion">
            <?php for ($i = 1; $i <= 5; $i++): ?>
            <div class="accordion-item" style="border-radius: 20px; border: 1px solid black;">
                <h2 class="accordion-header" id="heading<?php echo $i; ?>">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapse<?php echo $i; ?>" aria-expanded="false"
                        aria-controls="collapse<?php echo $i; ?>"
                        style="border-radius: 20px; border: 1px solid black; background-color: #B3C9FF">
                        Tema <?php echo $i; ?>
                    </button>
                </h2>
                <div id="collapse<?php echo $i; ?>" class="accordion-collapse collapse"
                    aria-labelledby="heading<?php echo $i; ?>" data-bs-parent="#outerAccordion">
                    <div class="accordion-body" style="background-color: #D9D9D9; border-radius: 20px;">
                        <div class="row mb-3">
                            <div class="col-md-1">
                            </div>
                            <div class="col-md-10">
                                <label for="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_nombre"
                                    class="form-label">Nombre del tema:</label>
                                <input type="text" class="form-control"
                                    id="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_nombre"
                                    name="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_nombre">
                            </div>
                        </div>

                        <center>
                            <h6>- DATOS DE LOS SUBTEMAS -</h6>
                        </center>

                        <div class="accordion" id="innerAccordion<?php echo $i; ?>">
                            <?php for ($j = 1; $j <= 5; $j++): ?>
                            <div class="accordion-item" style="border-radius: 20px; border: 1px solid black;">
                                <h2 class="accordion-header" id="heading<?php echo $i; ?>Inner<?php echo $j; ?>"
                                    style="border-radius: 20px;">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapse<?php echo $i; ?>Inner<?php echo $j; ?>"
                                        aria-expanded="false"
                                        aria-controls="collapse<?php echo $i; ?>Inner<?php echo $j; ?>"
                                        style="border-radius: 20px; border: 1px solid black; background-color: #B3C9FF">
                                        Subtema <?php echo $j; ?>
                                    </button>
                                </h2>
                                <div id="collapse<?php echo $i; ?>Inner<?php echo $j; ?>"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="heading<?php echo $i; ?>Inner<?php echo $j; ?>"
                                    data-bs-parent="#innerAccordion<?php echo $i; ?>">
                                    <div class="accordion-body"
                                        style="background-color: #A3E1CA; border-radius: 20px;">
                                        <div class="row mb-3">
                                            <div class="col-md-1">
                                            </div>
                                            <div class="col-md-8">
                                                <label
                                                    for="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_subtema_<?php echo $j; ?>_nombre"
                                                    class="form-label">Nombre del subtema:</label>
                                                <input type="text" class="form-control"
                                                    id="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_subtema_<?php echo $j; ?>_nombre"
                                                    name="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_subtema_<?php echo $j; ?>_nombre">
                                            </div>
                                            <div class="col-md-2">
                                                <label
                                                    for="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_subtema_<?php echo $j; ?>_duracion"
                                                    class="form-label">Duración: (en horas)</label>
                                                <input type="number" class="form-control"
                                                    id="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_subtema_<?php echo $j; ?>_duracion"
                                                    name="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_subtema_<?php echo $j; ?>_duracion">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-md-1">
                                            </div>
                                            <div class="col-md-10">
                                                <label
                                                    for="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_subtema_<?php echo $j; ?>_actividad"
                                                    class="form-label">Actividad:</label>
                                                <input type="text" class="form-control"
                                                    id="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_subtema_<?php echo $j; ?>_actividad"
                                                    name="Unidad_<?php echo $numeroUnidad - 1; ?>_tema_<?php echo $i; ?>_subtema_<?php echo $j; ?>_actividad">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php endfor; ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php endfor; ?>
        </div>

        </form>



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
                    <button type="button" class="btn btn-primary" onclick="submitForm()"
                        style="background-color: #B3C9FF; border: 4px solid #000000;border-radius: 20px; color: black">
                        <strong>CONTINUAR</strong>
                        <img src="https://cdn-icons-png.flaticon.com/128/3031/3031716.png" alt="flechaContinuar"
                            width="40px">
                    </button>
                </center>
            </div>
        </div>
    </div>

</body>

<div style="height: 50px;"></div>

@include('general.footer')

<script>
    function submitForm() {
        document.getElementById("formularioDatosUnidad").submit();
    }

    function goBack() {
        window.history.back();
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</html>
