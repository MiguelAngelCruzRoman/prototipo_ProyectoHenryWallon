<title>Ver Grupo</title>

@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <center>
                <h1><strong>VER GRUPO</strong></h1>
            </center>
        </div>

        <div style="height: 50px;"></div>

        <div class="card card-style">
            <div class="card-body">
                <form id="formularioDatosGrupo" action="" method="POST">
                    @csrf

                    <center>
                        <h3>- DATOS DE LA ASIGNATURA -</h3>
                    </center>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="id_Asignatura" class="form-label">Asignatura:</label>
                            <input type="text" class="form-control" id="id_Asignatura" name="id_Asignatura"
                                value="{{ $grupo[0]->nombreAsignatura }}" readonly>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="id_Docente" class="form-label">Docente:</label>
                            <input type="text" class="form-control" id="id_Docente" name="id_Docente"
                                value="{{ $grupo[0]->nombreDocente }} {{ $grupo[0]->segundoNombreDocente }} {{ $grupo[0]->apellidoPaternoDocente }} {{ $grupo[0]->apellidoMaternoDocente }}"
                                readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="id_Periodo" class="form-label">Periodo:</label>
                            <input type="text" class="form-control" id="id_Periodo" name="id_Periodo"
                                value="{{ $grupo[0]->fechaInicioPeriodo }}/{{ $grupo[0]->fechaFinPeriodo }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="semestre" class="form-label">Semestre:</label>
                            <input type="text" class="form-control" id="semestre" name="semestre"
                                value="{{ $grupo[0]->semestre }}" readonly>
                        </div>

                    </div>


                    <div style="height: 100px;"></div>
                    <center>
                        <h3>- LISTA DE ALUMNOS -</h3>
                    </center>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <table class="table" id="tablaAlumnos">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th colspan="8">Nombre</th>
                                    </tr>
                                </thead>
                                <tbody id="cuerpoTabla">

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <input type="hidden" id="listaAlumnos" name="listaAlumnos">

                </form>
            </div>
        </div>

        <div style="height: 30px;"></div>

        <div class="row">
            <div class="col-12">
                <center>
                    <button class="btn btn-primary me-2" onclick="goBack()"
                        style="background-color: #B3C9FF; border: 4px solid #000000;border-radius: 20px; color: black">
                        <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                            width="40px">
                        <strong>REGRESAR</strong>
                    </button>
                </center>
            </div>
            <div style="height: 50px;"></div>

        </div>
    </div>
@endsection

<script>
    var alumnos = [];

    @foreach ($grupo as $alumno)
        alumnos.push({
            id: "{{ $alumno->idAlumno }}",
            nombre: "{{ $alumno->nombreAlumno }} {{ $alumno->segundoNombreAlumno }} {{ $alumno->apellidoPaternoAlumno }} {{ $alumno->apellidoMaternoAlumno }}"
        });
    @endforeach
    actualizarTabla();



    function actualizarTabla() {
        var cuerpoTabla = document.getElementById("cuerpoTabla");
        cuerpoTabla.innerHTML = "";
        for (var i = 0; i < alumnos.length; i++) {
            var fila = "<tr>";
            fila += "<td>" + (i + 1) + "</td>";
            fila += "<td colspan='8'>" + alumnos[i].nombre + "</td>";
            fila += "</tr>";
            cuerpoTabla.innerHTML += fila;
        }
    }

    function actualizarListaAlumnos() {
        var listaAlumnos = document.getElementById("listaAlumnos");
        listaAlumnos.value = JSON.stringify(alumnos);
    }
</script>
