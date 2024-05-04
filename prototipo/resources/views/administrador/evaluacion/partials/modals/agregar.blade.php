<div class="modal fade" id="formularioModal" tabindex="-1" role="dialog" aria-labelledby="formularioModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header">
                <h5 class="modal.title" id="formularioModalLabel">Agregar Evaluación</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>



            <div class="modal-body">
                <form action="{{ route('evaluacion.agregar.insert') }}" method="POST" id="formularioDatosEvaluacion">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label">Actividad de Aprendizaje:</label>
                        <input type="text" class="form-control" name="actividadAprendizaje" required>
                        <div class="invalid-feedback">
                            Por favor ingresa la actividad de aprendizaje.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Tipo de Evaluación:</label>
                        <select class="form-control" name="tipoEvaluacion" required>
                            <option value="">Selecciona un tipo</option>
                            <option value="Rúbrica">Rúbrica</option>
                            <option value="Guía de observación">Guía de observación</option>
                            <option value="Lista de Cotejo">Lista de Cotejo</option>
                        </select>
                        <div class="invalid-feedback">
                            Por favor selecciona un tipo de evaluación.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Archivo de Ejemplo:</label>
                        <input type="text" class="form-control" name="archivoEjemplo" required>
                        <div class="invalid-feedback">
                            Por favor ingresa el archivo de ejemplo.
                        </div>
                    </div>
                    <div class="flex justify-end">

                        <button class="btn btn-primary" data-dismiss="modal"
                            style="background-color: #21182F;color: white">
                            <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                                width="20px" style="filter: invert(100%);">
                            Regresar
                        </button>
                        <button type="submit" class="btn btn-success">
                            <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt=""
                                height="20px">
                            Agregar
                    </div>
                </form>
            </div>
            <!--mensaje si es exito el guardado de datos-->
            <div id="successMessage" class="modal-body d-none">
                <div class="alert alert-success" role="alert">
                    ¡Evaluación guardada con éxito!
                </div>
            </div>
        </div>
    </div>
</div>
