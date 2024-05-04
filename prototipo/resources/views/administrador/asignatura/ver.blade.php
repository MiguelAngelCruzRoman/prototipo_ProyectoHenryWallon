<title>Ver Datos de Asignatura</title>

@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="text-center">
            <!--ENCABEZADO DE LA PÁGINA-->
            <h1 class="text-3xl font-bold my-8">VER ASIGNATURA</h1>
        </div>


        <div style="height: 50px;"></div>

        <div class="card card-style">
            <div class="card-body">
                <form action="" method="POST">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <center>
                                <img src="{{ $asignatura[0]->imagen }}" alt="" height="200px" width="400px"
                                    style="border: 4px solid #000000">
                            </center>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-7">
                            <label for="nombre" class="form-label">Nombre de asignatura:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre"
                                value="{{ $asignatura[0]->nombre }}" readonly>
                        </div>

                        <div class="col-md-2">
                            <label for="turno" class="form-label">Turno:</label>
                            <input type="text" class="form-control" id="turno" name="turno"
                                value="{{ $asignatura[0]->turno }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="semestre" class="form-label">Semestre:</label>
                            <input type="text" class="form-control" id="semestre" name="semestre"
                                value="{{ $asignatura[0]->semestre }}" readonly>
                        </div>
                    </div>


                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="objetivo" class="form-label">Objetivo:</label>
                            <input type="text" class="form-control" id="objetivo" name="objetivo"
                                value="{{ $asignatura[0]->objetivo }}" readonly>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="intencionDidactica" class="form-label">Intención Didáctica:</label>
                            <input type="text" class="form-control" id="intencionDidactica" name="intencionDidactica"
                                value="{{ $asignatura[0]->intencionDidactica }}" readonly>
                        </div>
                    </div>


                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="componente" class="form-label">Componente de formación:</label>
                            <input type="text" class="form-control" id="componente" name="componente"
                                value="{{ $asignatura[0]->componente }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="calificacionAprobatoria" class="form-label">Calificación aprobatoria:</label>
                            <input type="number" class="form-control" id="calificacionAprobatoria"
                                name="calificacionAprobatoria" value="{{ $asignatura[0]->calificacionAprobatoria }}"
                                readonly>
                        </div>

                        <div class="col-md-2">
                            <label for="horasDocente" class="form-label">Horas con docente:</label>
                            <input type="number" class="form-control" id="horasDocente" name="horasDocente"
                                value="{{ $asignatura[0]->horasDocente }}" readonly>
                        </div>
                        <div class="col-md-3">
                            <label for="horasEstudioIndependiente" class="form-label">Horas autodidactas:</label>
                            <input type="number" class="form-control" id="horasEstudioIndependiente"
                                name="horasEstudioIndependiente" value="{{ $asignatura[0]->horasEstudioIndependiente }}"
                                readonly>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-3">
                        </div>

                        <div class="col-md-3">
                            <label for="creditos" class="form-label">Créditos:</label>
                            <input type="number" class="form-control" id="creditos" name="creditos"
                                value="{{ $asignatura[0]->creditos }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="estatus" class="form-label">Estado:</label>
                            <input type="text" class="form-control" id="estatus" name="estatus"
                                value="{{ $asignatura[0]->estatus }}" readonly>
                        </div>
                    </div>

                </form>
            </div>
        </div>

        <div style="height: 30px;"></div>

        <div class="row">
            <div class="col-12">
                <center>
                    <button class="btn btn-primary me-2" onclick="goBack()"
                        style="background-color: #21182F; border: 4px solid #000000;border-radius: 20px; color: white">
                        <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                            width="20px" style="filter: invert(100%);">
                        Regresar
                    </button>
                </center>
            </div>
        </div>
    </div>
@endsection
