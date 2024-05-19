<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#verAsignaturaModal" style="background-color: #B3C9FF; border: 4px solid #000000; border-radius: 20px; color: black">
    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="Ver Asignatura" width="40px">
    <strong>VER ASIGNATURA asdasd</strong>
</button>

<!-- Modal -->
<div class="modal fade" id="verAsignaturaModal" tabindex="-1" aria-labelledby="verAsignaturaModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="verAsignaturaModalLabel">Ver Asignatura - Datos Generales</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <!-- Image display -->
                    <div class="row">
                        <div class="col-md-12">
                            <center>
                                <img src="{{ $asignatura->imagen }}" alt="Imagen de Asignatura" height="200px" width="400px" style="border: 4px solid #000000">
                            </center>
                        </div>
                    </div>

                    <!-- Name, Shift, and Semester -->
                    <div class="row mb-3">
                        <div class="col-md-7">
                            <label for="nombre" class="form-label">Nombre de asignatura:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value="{{ $asignatura->nombre }}" readonly>
                        </div>
                        <div class="col-md-2">
                            <label for="turno" class="form-label">Turno:</label>
                            <input type="text" class="form-control" id="turno" name="turno" value="{{ $asignatura->turno }}" readonly>
                        </div>
                        <div class="col-md-3">
                            <label for="semestre" class="form-label">Semestre:</label>
                            <input type="text" class="form-control" id="semestre" name="semestre" value="{{ $asignatura->semestre }}" readonly>
                        </div>
                    </div>

                    <!-- Objective and Didactic Intention -->
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="objetivo" class="form-label">Objetivo:</label>
                            <input type="text" class="form-control" id="objetivo" name="objetivo" value="{{ $asignatura->objetivo }}" readonly>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="intencionDidactica" class="form-label">Intención Didáctica:</label>
                            <input type="text" class="form-control" id="intencionDidactica" name="intencionDidactica" value="{{ $asignatura->intencionDidactica }}" readonly>
                        </div>
                    </div>

                    <!-- Component, Approving Grade, Teaching Hours, and Self-study Hours -->
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="componente" class="form-label">Componente de formación:</label>
                            <input type="text" class="form-control" id="componente" name="componente" value="{{ $asignatura->componente }}" readonly>
                        </div>
                        <div class="col-md-3">
                            <label for="calificacionAprobatoria" class="form-label">Calificación aprobatoria:</label>
                            <input type="number" class="form-control" id="calificacionAprobatoria" name="calificacionAprobatoria" value="{{ $asignatura->calificacionAprobatoria }}" readonly>
                        </div>
                        <div class="col-md-2">
                            <label for="horasDocente" class="form-label">Horas con docente:</label>
                            <input type="number" class="form-control" id="horasDocente" name="horasDocente" value="{{ $asignatura->horasDocente }}" readonly>
                        </div>
                        <div class="col-md-3">
                            <label for="horasEstudioIndependiente" class="form-label">Horas autodidactas:</label>
                            <input type="number" class="form-control" id="horasEstudioIndependiente" name="horasEstudioIndependiente" value="{{ $asignatura->horasEstudioIndependiente }}" readonly>
                        </div>
                    </div>

                    <!-- Credits and Status -->
                    <div class="row mb-3">
                        <div class="col-md-3"></div>
                        <div class="col-md-3">
                            <label for="creditos" class="form-label">Créditos:</label>
                            <input type="number" class="form-control" id="creditos" name="creditos" value="{{ $asignatura->creditos }}" readonly>
                        </div>
                        <div class="col-md-3">
                            <label for="estatus" class="form-label">Estado:</label>
                            <input type="text" class="form-control" id="estatus" name="estatus" value="{{ $asignatura->estatus }}" readonly>
                        </div>
                        <div class="col-md-3"></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
