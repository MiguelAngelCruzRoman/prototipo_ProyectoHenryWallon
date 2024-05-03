<div class="modal fade" id="formularioModal" tabindex="-1" role="dialog" aria-labelledby="formularioModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="formularioModalLabel">Agregar Grupo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('grupo.agregar.insert') }}" method="POST" id="formularioDatosGrupo">
                    @csrf
                    <center>
                        <h3>- DATOS DE LA ASIGNATURA -</h3>
                    </center>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="id_Asignatura" class="form-label">Asignatura:</label>
                            <select class="form-select" id="id_Asignatura" name="id_Asignatura" required>
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
                                @foreach ($periodos as $periodo)
                                    <option value="{{ $periodo->id }}">{{ $periodo->fechaInicio }} /
                                        {{ $periodo->fechaFin }}</option>
                                @endforeach
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
                            <button type="button" onclick="agregarAlumno()" class="btn btn-primary">Agregar
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
                    <!--mensaje si es exito el guardado de datos-->
                    <div id="successMessage" class="modal-body d-none">
                        <div class="alert alert-success" role="alert">
                            ¡Evaluación guardada con éxito!
                        </div>
                    </div>
                    <input type="hidden" id="listaAlumnos" name="listaAlumnos">
                    <div class="text-end">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<script>
    var alumnos = [];

    function agregarAlumno() {
        var idAlumno = document.getElementById("arregloAlumnos").value;
        var nombreAlumno = document.getElementById("arregloAlumnos").options[document.getElementById(
            "arregloAlumnos").selectedIndex].text;

        if (!alumnos.some(alumno => alumno.id === idAlumno)) {
            alumnos.push({
                id: idAlumno,
                nombre: nombreAlumno
            });
            alumnos.sort((a, b) => a.nombre.localeCompare(b.nombre));
            actualizarTabla();
            actualizarListaAlumnos(); 
        } else {
            alert("El alumno ya está en la lista.");
        }
    }

    function eliminarAlumno(index) {
        alumnos.splice(index, 1);
        actualizarTabla();
        actualizarListaAlumnos(); 
    }

    function actualizarTabla() {
        var cuerpoTabla = document.getElementById("cuerpoTabla");
        cuerpoTabla.innerHTML = "";
        for (var i = 0; i < alumnos.length; i++) {
            var fila = "<tr>";
            fila += "<td>" + (i + 1) + "</td>";
            fila += "<td colspan='8'>" + alumnos[i].nombre + "</td>";
            fila += "<td><button class='btn btn-danger' onclick='eliminarAlumno(" + i +
                ")'>X</button></td>";
            fila += "</tr>";
            cuerpoTabla.innerHTML += fila;
        }
    }

    function actualizarListaAlumnos() {
        var listaAlumnos = document.getElementById("listaAlumnos");
        listaAlumnos.value = JSON.stringify(alumnos);
    }

    function submitForm() {
        actualizarListaAlumnos(); 
        document.getElementById("formularioDatosGrupo").submit();
    }
</script>