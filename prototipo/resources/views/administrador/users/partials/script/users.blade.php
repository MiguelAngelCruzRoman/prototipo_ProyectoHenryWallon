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
    // Captura el evento de clic en el botón de eliminar
    document.querySelectorAll('.eliminar-btn').forEach(btn => {
        btn.addEventListener('click', function () {
            // Al hacer clic en el botón, muestra el modal de confirmación
            $('#confirmarEliminarModal').modal('show');

            // Configura el evento de clic para el botón de confirmación de eliminación
            document.getElementById('confirmarEliminarBtn').addEventListener('click', function () {
                // Redirecciona a la URL de eliminación después de confirmar
                window.location = btn.dataset.url;
            });
        });
    });
});
</script>
