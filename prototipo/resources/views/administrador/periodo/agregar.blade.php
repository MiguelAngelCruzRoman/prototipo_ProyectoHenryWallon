<title>Agregar Periodo</title>


@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <center>
                <h1><strong>REGISTRAR PERIODO</strong></h1>
                <h3>- DATOS DEL PERIODO -</h3>
            </center>
        </div>

        <div style="height: 50px;"></div>


        <div class="card card-style">
            <div class="card-body">
                <form id="formularioDatosPeriodo" action="{{ route('periodo.agregar.datosPeriodo.insert') }}" method="POST">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="fechaInicio" class="form-label">Fecha de Inicio:</label>
                            <input type="date" class="form-control" id="fechaInicio" name="fechaInicio">
                        </div>
                        <div class="col-md-6">
                            <label for="fechaFin" class="form-label">Fecha de Fin:</label>
                            <input type="date" class="form-control" id="fechaFin" name="fechaFin">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="tipo" class="form-label">Tipo:</label>
                            <select class="form-select" id="tipo" name="tipo">
                                <option value="CicloEscolar">Ciclo Escolar</option>
                                <option value="Semanal">Semanal</option>
                            </select>
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
                        <strong> CONTINUAR</strong>
                        <img src="https://cdn-icons-png.flaticon.com/128/3031/3031716.png" alt="flechaContinuar"
                            width="40px">
                    </button>
                </center>
            </div>
        </div>
    </div>

</body>

<div style="height: 50px;"></div>

@endsection

<script>
    function submitForm() {
        document.getElementById("formularioDatosPeriodo").submit();
    }
</script>
