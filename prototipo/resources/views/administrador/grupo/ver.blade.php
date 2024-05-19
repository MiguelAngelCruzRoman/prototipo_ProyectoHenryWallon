<title>Ver Grupo</title>
<style>
    table {
        border-collapse: separate;
        border-spacing: 0;
        border: 1px solid rgb(123, 117, 117);
        border-radius: 10px;
        overflow: hidden;
    }
    th, td {
        border: 1px solid rgb(123, 117, 117);
        padding: 8px;
    }
    thead{
        background-color: rgb(224, 223, 223);
    }
</style>
@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <button class="btn" onclick="goBack()" style="background-color: #21182F;color: white">
                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar" width="20px"
                        style="filter: invert(100%);">
                    Regresar
                </button>
            </div>
            <div class="col-md-1">
            </div>

            <div class="col-md-6">
                <center>
                    <h1 class="text-3xl font-bold my-8" style="color: black"><strong>VER GRUPO</strong></h1>
                </center>
            </div>

        </div>

        <div style="height: 50px;"></div>

        <div class="card card-style">
            <div class="card-body">
                <form id="verGrupo" action="" method="POST">
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
                        <div class="col-md-2">
                        </div>
        
                        <div class="col-md-8">
                            <table class="w-full border-collapse border border-gray-400" id="tablaAlumnos">
                                <thead>
                                    <tr>
                                        <th scope="col" class="px-6 py-3 text-center" style="color:black">#</th>
                                        <th scope="col" class="px-6 py-3 text-center" style="color:black" colspan="8">Nombre completo del estudiante</th>
                                    </tr>
                                </thead>
                                <tbody id="cuerpoTabla">
                                    <!-- Filas de alumnos se cargarán aquí -->
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
                    <button class="btn" onclick="goBack()" style="background-color: #21182F;color: white">
                        <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar" width="20px"
                            style="filter: invert(100%);">
                        Regresar
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

    document.addEventListener('DOMContentLoaded', function() {
        actualizarTablaEditar();
        actualizarListaAlumnosEditar();
    });

    function agregarAlumnoEditar() {
        var idAlumno = document.getElementById("arregloAlumnos").value;
        var nombreAlumno = document.getElementById("arregloAlumnos").options[document.getElementById("arregloAlumnos")
            .selectedIndex].text;

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
            var fila = "<tr class='odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700'>";
            fila += "<td scope='row' class='font-medium text-gray-900 whitespace-nowrap dark:text-white'>" + (i + 1) + "</td>";
            fila += "<td scope='row' class='font-medium text-gray-900 whitespace-nowrap dark:text-white' colspan='8'>" + alumnos[i].nombre + "</td>";
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