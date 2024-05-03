<script>
    document.addEventListener('DOMContentLoaded', function() {
        var form = document.getElementById('formularioDatosEvaluacion');
        var successMessage = document.getElementById('successMessage');

        form.addEventListener('submit', function(event) {
            event.preventDefault();
            successMessage.classList.remove('d-none');
            setTimeout(function() {
                $('#formularioModal').modal('hide');
                successMessage.classList.add('d-none');
                form.submit();
            }, 2000);
        });
    });
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('[id^="formularioEdicionEvaluacion"]').forEach(form => {
            form.addEventListener('submit', function(event) {
                event.preventDefault();
                const successMessage = document.getElementById(
                    `successMessage${form.dataset.evaluacionId}`);
                successMessage.classList.remove('d-none');
                setTimeout(function() {
                    $(`#editarModal${form.dataset.evaluacionId}`).modal('hide');
                    successMessage.classList.add('d-none');
                    form.submit();
                }, 2000);
            });
        });
    });
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Captura el evento de clic en el botón de eliminar
        document.querySelectorAll('.eliminar-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                // Al hacer clic en el botón, muestra el modal de confirmación
                $('#confirmarEliminarModal').modal('show');

                // Configura el evento de clic para el botón de confirmación de eliminación
                document.getElementById('confirmarEliminarBtn').addEventListener('click',
                    function() {
                        // Redirecciona a la URL de eliminación después de confirmar
                        window.location = btn.dataset.url;
                    });
            });
        });
    });
</script>


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
