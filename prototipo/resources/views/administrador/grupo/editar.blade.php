<title>Editar Grupo</title>

@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <center>
                <h1><strong>EDITAR GRUPO</strong></h1>
            </center>
        </div>

        <div style="height: 50px;"></div>

        <div class="card card-style">
            <div class="card-body">
                <form id="formularioDatosGrupoEditar" action="{{ route('grupo.editar.update', ['idGrupo' => $grupo[0]->id]) }}"
                    method="POST">
                    @csrf
                    <input type="hidden" id="id_asignatura_docente_anterior" name="id_asignatura_docente_anterior"
                        value="{{ $grupo[0]->idAsignaturaDocente }}">


                    <center>
                        <h3>- DATOS DE LA ASIGNATURA -</h3>
                    </center>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="id_Asignatura" class="form-label">Asignatura:</label>
                            <select class="form-select" id="id_Asignatura" name="id_Asignatura" required>
                                <option value="{{ $grupo[0]->idAsignatura }}">{{ $grupo[0]->nombreAsignatura }}</option>
                                @foreach ($asignaturas as $asignatura)
                                    <option value="{{ $asignatura->id }}">{{ $asignatura->nombre }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="id_Docente" class="form-label">Docente:</label>
                            <select class="form-select" id="id_Docente" name="id_Docente" required>
                                <option value="{{ $grupo[0]->idDocente }}">{{ $grupo[0]->nombreDocente }}
                                    {{ $grupo[0]->segundoNombreDocente }} {{ $grupo[0]->apellidoPaternoDocente }}
                                    {{ $grupo[0]->apellidoMaternoDocente }}</option>
                                @foreach ($docentes as $docente)
                                    <option value="{{ $docente->id }}">{{ $docente->primerNombre }}
                                        {{ $docente->segundoNombre }} {{ $docente->apellidoPaterno }}
                                        {{ $docente->apellidoMaterno }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label for="id_Periodo" class="form-label">Periodo:</label>
                            <select class="form-select" id="id_Periodo" name="id_Periodo" required>
                                <option value="{{ $grupo[0]->idPeriodo }}">
                                    {{ $grupo[0]->fechaInicioPeriodo }}/{{ $grupo[0]->fechaFinPeriodo }}</option>
                                @foreach ($periodos as $periodo)
                                    <option value="{{ $periodo->id }}">{{ $periodo->fechaInicio }} /
                                        {{ $periodo->fechaFin }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label for="semestre" class="form-label">Semestre:</label>
                            <select class="form-select" id="semestre" name="semestre" required>
                                <option value="{{ $grupo[0]->semestre }}">{{ $grupo[0]->semestre }}</option>
                                <option value="Primero">Primero</option>
                                <option value="Segundo">Segundo</option>
                                <option value="Tercero">Tercero</option>
                                <option value="Cuarto">Cuarto</option>
                                <option value="Quinto">Quinto</option>
                                <option value="Sexto">Sexto</option>
                            </select>
                        </div>

                    </div>


                    <div style="height: 100px;"></div>
                    <center>
                        <h3>- LISTA DE ALUMNOS -</h3>
                    </center>
                    <div class="row mb-3">
                        <div class="col-md-10">
                            <label for="arregloAlumnos" class="form-label">Alumno:</label>
                            <select class="form-select" id="arregloAlumnos" name="arregloAlumnos" required>
                                @foreach ($alumnos as $alumno)
                                    <option value="{{ $alumno->id }}">{{ $alumno->primerNombre }}
                                        {{ $alumno->segundoNombre }} {{ $alumno->apellidoPaterno }}
                                        {{ $alumno->apellidoMaterno }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-2">
                            <button type="button" onclick="agregarAlumnoEditar()" class="btn btn-primary">Agregar
                                a lista</button>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">
                            <table class="table" id="tablaAlumnos">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th colspan="8">Nombre</th>
                                        <th>Eliminar</th>
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
                    <button type="button" class="btn btn-primary" onclick="submitFormEditar()"
                        style="background-color: #B3C9FF; border: 4px solid #000000;border-radius: 20px; color: black">
                        <strong> GUARDAR</strong>
                        <img src="https://cdn-icons-png.flaticon.com/128/376/376218.png" alt="iconoGuardar" width="40px">
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
    actualizarTablaEditar();


    function agregarAlumnoEditar() {
        var idAlumno = document.getElementById("arregloAlumnos").value;
        var nombreAlumno = document.getElementById("arregloAlumnos").options[document.getElementById(
            "arregloAlumnos").selectedIndex].text;

        if (!alumnos.some(alumno => alumno.id === idAlumno)) {
            alumnos.push({
                id: idAlumno,
                nombre: nombreAlumno
            });
            alumnos.sort((a, b) => a.nombre.localeCompare(b.nombre));
            actualizarTablaEditar();
            actualizarListaAlumnosEditar();
        } else {
            alert("El alumno ya está en la lista.");
        }
    }

    function eliminarAlumnoEditar(index) {
        alumnos.splice(index, 1);
        actualizarTablaEditar();
        actualizarListaAlumnosEditar();
    }

    function actualizarTablaEditar() {
        var cuerpoTabla = document.getElementById("cuerpoTabla");
        cuerpoTabla.innerHTML = "";
        for (var i = 0; i < alumnos.length; i++) {
            var fila = "<tr>";
            fila += "<td>" + (i + 1) + "</td>";
            fila += "<td colspan='8'>" + alumnos[i].nombre + "</td>";
            fila += "<td><button class='btn btn-danger' onclick='eliminarAlumnoEditar(" + i +
                ")'>X</button></td>";
            fila += "</tr>";
            cuerpoTabla.innerHTML += fila;
        }
    }

    function actualizarListaAlumnosEditar() {
        var listaAlumnos = document.getElementById("listaAlumnos");
        listaAlumnos.value = JSON.stringify(alumnos);
    }

    function submitFormEditar() {
        actualizarListaAlumnosEditar();
        document.getElementById("formularioDatosGrupoEditar").submit();
    }
</script>
