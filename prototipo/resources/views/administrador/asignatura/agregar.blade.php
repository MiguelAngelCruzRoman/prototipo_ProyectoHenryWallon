<title>Agregar Datos de Asignatura</title>

@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <center>
                <h1><strong>AGREGAR ASIGNATURA</strong></h1>
                <h3>- DATOS GENERALES -</h3>
            </center>
        </div>

        <div style="height: 50px;"></div>

        <div class="card card-style ">
            <div class="card-body">
                <form id="formularioDatosAsignatura" action="{{ route('asignatura.agregar.datosAsignatura.insert') }}"
                    method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-7">
                            <label for="nombre" class="form-label">Nombre de asignatura:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+">
                        </div>

                        <div class="col-md-2">
                            <label for="turno" class="form-label">Turno:</label>
                            <select class="form-select" id="turno" name="turno" required >
                                <option value="Matutino">Matutino</option>
                                <option value="Vespertino">Vespertino</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label for="semestre" class="form-label">Semestre:</label>
                            <select class="form-select" id="semestre" name="semestre" required>
                                <option value="Primero">Primero</option>
                                <option value="Segundo">Segundo</option>
                                <option value="Tercero">Tercero</option>
                                <option value="Cuarto">Cuarto</option>
                                <option value="Quinto">Quinto</option>
                                <option value="Sexto">Sexto</option>
                            </select>
                        </div>
                    </div>


                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="objetivo" class="form-label">Objetivo:</label>
                            <input type="text" class="form-control" id="objetivo" name="objetivo" required pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="intencionDidactica" class="form-label">Intención Didáctica:</label>
                            <input type="text" class="form-control" id="intencionDidactica" name="intencionDidactica" required pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+">
                        </div>
                    </div>


                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="componente" class="form-label">Componente de formación:</label>
                            <select class="form-select" id="componente" name="componente" required>
                                <option value="Fundamental">Fundamental</option>
                                <option value="Fundamental Extendido">Fundamental extendido</option>
                                <option value="Fundamental Extendido Obligatorio">Fundamental extendido obligatorio
                                </option>
                                <option value="Laboral Básico">Laboral básico</option>
                                <option value="Ampliada">Ampliada</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label for="calificacionAprobatoria" class="form-label">Calificación aprobatoria:</label>
                            <input type="number" class="form-control" id="calificacionAprobatoria"
                                name="calificacionAprobatoria" required>
                        </div>

                        <div class="col-md-2">
                            <label for="horasDocente" class="form-label">Horas con docente:</label>
                            <input type="number" class="form-control" id="horasDocente" name="horasDocente" required>
                        </div>
                        <div class="col-md-3">
                            <label for="horasEstudioIndependiente" class="form-label">Horas autodidactas:</label>
                            <input type="number" class="form-control" id="horasEstudioIndependiente"
                                name="horasEstudioIndependiente" required>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-3">
                            <label for="creditos" class="form-label">Créditos:</label>
                            <input type="number" class="form-control" id="creditos" name="creditos" required>
                        </div>

                        <div class="col-md-9">
                            <label for="imagen" class="form-label">Imagen alusiva a la asignatura:</label>
                            <input type="file" class="form-control" id="imagen" name="imagen" required>
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

            <div style="height: 50px;"></div>

        </div>
    </div>

</body>

@endsection

<script>
    function submitForm() {
        document.getElementById("formularioDatosAsignatura").submit();
    }
</script>
