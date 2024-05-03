<script>
document.addEventListener('DOMContentLoaded', function () {
    var form = document.getElementById('formularioDatosPeriodo');
    var successMessage = document.getElementById('successMessage');

    form.addEventListener('submit', function (event) {
        event.preventDefault();
        successMessage.classList.remove('d-none');
        setTimeout(function () {
            $('#formularioModal').modal('hide'); 
            successMessage.classList.add('d-none'); 
            form.submit(); 
        }, 2000);
    });
});
</script>
<script>
document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('[id^="formularioEdicionPeriodo"]').forEach(form => {
        form.addEventListener('submit', function (event) {
            event.preventDefault();
            const successMessage = document.getElementById(`successMessage${form.dataset.periodoId}`);
            successMessage.classList.remove('d-none');
            setTimeout(function () {
                $(`#editarModal${form.dataset.periodoId}`).modal('hide');
                successMessage.classList.add('d-none');
                form.submit();
            }, 2000);
        });
    });
});

</script>


<script>
    document.addEventListener('DOMContentLoaded', function () {
        document.querySelectorAll('.btn-ver').forEach(btn => {
            btn.addEventListener('click', function () {
                let modalId = btn.getAttribute('data-target');
                $(modalId).modal('show');
            });
        });
    });
</script>


</script>

<script>
document.addEventListener('DOMContentLoaded', function () {
    let urlToDelete = null;  // Variable para almacenar la URL de eliminación

    // Captura el evento de clic en los botones de eliminar
    document.querySelectorAll('.eliminar-btn').forEach(btn => {
        btn.addEventListener('click', function () {
            // Almacena la URL de eliminación en la variable
            urlToDelete = btn.dataset.url;
            // Muestra el modal de confirmación
            $('#confirmarEliminarModal').modal('show');
        });
    });

    // Configura el evento de clic para el botón de confirmación de eliminación una sola vez
    document.getElementById('confirmarEliminarBtn').addEventListener('click', function () {
        // Redirecciona a la URL de eliminación almacenada después de confirmar
        if (urlToDelete) {
            window.location = urlToDelete;
        }
    });
});
</script>

