<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Agregar Datos de Materia</title>
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
                <h3>- DATOS DE LA MATERIA -</h3>
            </center>
        </div>
    
        <div style="height: 50px;"></div>


        <div class="card card-style">
            <div class="card-body">
                <form id="formularioDatosMateria" action="{{ route('materia.agregar.datosUnidad', ['numeroUnidad' => 1]) }}" method="POST">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="materia" class="form-label">Materia:</label>
                            <input type="text" class="form-control" id="materia" name="materia">
                        </div>
                        <div class="col-md-6">
                            <label for="objetivo" class="form-label">Objetivo:</label>
                            <input type="text" class="form-control" id="objetivo" name="objetivo">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="intencionDidactica" class="form-label">Intención Didáctica:</label>
                            <input type="text" class="form-control" id="intencionDidactica" name="intencionDidactica">
                        </div>
                    </div>

                    
                    <div class="row mb-3">
                        <div class="col-md-1">
                        </div>
                
                        <div class="col-md-2">
                            <label for="unidades" class="form-label">Número de unidades:</label>
                            <input type="number" class="form-control" id="unidades" name="unidades">
                        </div>
                        <div class="col-md-2">
                            <label for="creditos" class="form-label">Créditos:</label>
                            <input type="number" class="form-control" id="creditos" name="creditos">
                        </div>
                        <div class="col-md-2">
                            <label for="horasPracticas" class="form-label">Horas prácticas:</label>
                            <input type="number" class="form-control" id="horasPracticas" name="horasPracticas">
                        </div>
                        <div class="col-md-2">
                            <label for="horasTeoricas" class="form-label">Horas teóricas:</label>
                            <input type="text" class="form-control" id="horasTeoricas" name="horasTeoricas">
                        </div>
                        <div class="col-md-2">
                            <label for="calificacionAprobatoria" class="form-label">Calificación aprobatoria:</label>
                            <input type="number" class="form-control" id="calificacionAprobatoria" name="calificacionAprobatoria">
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div style="height: 30px;"></div>

        <div class="row">
            <div class="col-6">
                <center>
                    <a href="#" class="btn btn-primary me-2">
                        <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar" width="40px">
                        REGRESAR
                    </a>
                </center>
            </div>
            <div class="col-6">
                <center>
                    <button type="button" class="btn btn-primary" onclick="submitForm()">
                        CONTINUAR
                        <img src="https://cdn-icons-png.flaticon.com/128/3031/3031716.png" alt="flechaContinuar"  width="40px">
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
        document.getElementById("formularioDatosMateria").submit();
    }
</script>
</html>
