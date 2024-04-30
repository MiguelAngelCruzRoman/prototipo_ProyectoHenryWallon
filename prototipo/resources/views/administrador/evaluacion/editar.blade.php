<title>Editar Evaluación</title>
<body>
@extends('layouts.app')
    @section('content')
    <div class="container">
        <div class="row">
            <center>
                <h1><strong>ACTUALIZAR EVALUACION</strong></h1>
                <h3>- DATOS GENERALES -</h3>
            </center>
        </div>

        <div style="height: 50px;"></div>

        <div class="card card-style">
            <div class="card-body">
                <form id="formularioActualizarEvaluacion" action="{{ route('evaluacion.editar.update', $evaluacion->id) }}" method="POST">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <label for="nombre" class="form-label">Actividad de Aprendizaje:</label>
                            <input type="text" id="actividad" name="actividadAprendizaje" class="styled-input" value="{{$evaluacion->actividadAprendizaje}}">
                        </div>

                        <div class="col-md-3">
                            <label for="nombre" class="form-label">Tipo de Evaluacion:</label>
                            <select class="form-select" id="archivo" name="tipoEvaluacion" value="{{$evaluacion->tipoEvaluacion}}">
                                <option value="Rúbrica">Rúbrica</option>
                                <option value="Guía de observación">Guía de observación</option>
                                <option value="Lista de Cotejo">Lista de Cotejo</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label for="tipo" class="form-label">Subir Ejemplo:</label>
                            <input type="text" id="tipo" name="archivoEjemplo" class="styled-input" value="{{$evaluacion->archivoEjemplo}}">
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
@endsection
</body>

<div style="height: 50px;"></div>

<script>
    function submitForm() {
        document.getElementById("formularioActualizarEvaluacion").submit();
    }
    function goBack() {
        window.history.back();
    }
</script>
