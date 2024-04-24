<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Agregar Datos de Asignatura</title>
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
                <h1><strong>AGREGAR ASIGNATURA</strong></h1>
                <h3>- DATOS GENERALES -</h3>
            </center>
        </div>

        <div style="height: 50px;"></div>

        <div class="card card-style">
            <div class="card-body">
                <form id="formularioDatosAsignatura"
                    action="{{ route('asignatura.agregar.datosAsignatura.insert')}}" method="POST">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-7">
                            <label for="nombre" class="form-label">Nombre de asignatura:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre">
                        </div>
                        
                        <div class="col-md-2">
                            <label for="turno" class="form-label">Turno:</label>
                            <select class="form-select" id="turno" name="turno">
                                <option value="Matutino">Matutino</option>
                                <option value="Vespertino">Vespertino</option>
                            </select>
                        </div> 

                        <div class="col-md-3">
                            <label for="semestre" class="form-label">Semestre:</label>
                            <select class="form-select" id="semestre" name="semestre">
                                <option value="1">Primero</option>
                                <option value="2">Segundo</option>
                                <option value="3">Tercero</option>
                                <option value="4">Cuarto</option>
                                <option value="5">Quinto</option>
                                <option value="6">Sexto</option>
                            </select>
                        </div>
                    </div>


                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="objetivo" class="form-label">Objetivo:</label>
                            <input type="text" class="form-control" id="objetivo" name="objetivo">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="intencionDidactica" class="form-label">Intención Didáctica:</label>
                            <input type="text" class="form-control" id="intencionDidactica"
                                name="intencionDidactica">
                        </div>
                    </div>


                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="componente" class="form-label">Componente de formación:</label>
                            <select class="form-select" id="componente" name="componente">
                                <option value="Fundamental">Fundamental</option>
                                <option value="Fundamental Extendido">Fundamental extendido</option>
                                <option value="Fundamental Extendido Obligatorio">Fundamental extendido obligatorio</option>
                                <option value="Laboral Básico">Laboral básico</option>
                                <option value="Ampliada">Ampliada</option>
                            </select>
                        </div>  

                        <div class="col-md-3">
                            <label for="calificacionAprobatoria" class="form-label">Calificación aprobatoria:</label>
                            <input type="number" class="form-control" id="calificacionAprobatoria"
                                name="calificacionAprobatoria">
                        </div>

                        <div class="col-md-2">
                            <label for="horasDocente" class="form-label">Horas con docente:</label>
                            <input type="number" class="form-control" id="horasDocente" name="horasDocente">
                        </div>
                        <div class="col-md-3">
                            <label for="horasEstudioIndependiente" class="form-label">Horas autodidactas:</label>
                            <input type="number" class="form-control" id="horasEstudioIndependiente" name="horasEstudioIndependiente">
                        </div>
                    </div>
                    
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="imagen" class="form-label">Imagen alusiva a la asignatura:</label>
                            <input type="file" class="form-control" id="imagen" name="imagen">
                        </div>
                    </div>

                </form>
            </div>
        </div>

        <div style="height: 30px;"></div>

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
                        <strong> AGREGAR</strong>
                        <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="iconoAgregar"
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
        document.getElementById("formularioDatosAsignatura").submit();
    }
    function goBack() {
        window.history.back();
    }
</script>

</html>
