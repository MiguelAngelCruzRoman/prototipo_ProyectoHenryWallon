<div class="row">
    <div class="col-md-12">
        <table class="w-full border-collapse border border-gray-400">
            <thead>
                <tr>
                    <th class="border border-gray-400 px-4 py-2">ID</th>
                    <th class="border border-gray-400 px-4 py-2">ACTIVIDAD DE APRENDIZAJE</th>
                    <th class="border border-gray-400 px-4 py-2">TIPO DE EVALUACION</th>
                    <th class="border border-gray-400 px-4 py-2">ARCHIVO DE EJEMPLO</th>
                    <th class="border border-gray-400 px-4 py-2">OPERACIONES</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($evaluaciones as $evaluacion)
                    <tr>
                        <td class="border border-gray-400 px-4 py-2">{{ $evaluacion->id }}</td>
                        <td class="border border-gray-400 px-4 py-2">{{ $evaluacion->actividadAprendizaje }}</td>
                        <td class="border border-gray-400 px-4 py-2">{{ $evaluacion->tipoEvaluacion }}</td>
                        <td class="border border-gray-400 px-4 py-2"><a href="{{ $evaluacion->archivoEjemplo }}">Ver
                                archivo</a></td>
                        <td class="border border-gray-400 px-4 py-2">
                            <div class="btn-group" role="group" aria-label="Basic example">
                                <button type="button" class="btn btn-warning mr-2" data-toggle="modal"
                                    data-target="#editarModal{{ $evaluacion->id }}">
                                    <img src="https://cdn-icons-png.flaticon.com/128/10337/10337163.png" alt=""
                                        height="20px"> Editar
                                </button>
                                <button class="btn btn-danger eliminar-btn"
                                    data-url="{{ route('evaluacion.eliminar', ['idEvaluacion' => $evaluacion->id]) }}">
                                    <img src="https://cdn-icons-png.flaticon.com/128/1828/1828939.png" alt=""
                                        height="20px"> Eliminar
                                </button>
                            </div>
                        </td>
                    </tr>

                    <!-- Modal para la edición -->
                    <div class="modal fade" id="editarModal{{ $evaluacion->id }}" tabindex="-1" role="dialog"
                        aria-labelledby="editarModal{{ $evaluacion->id }}Label" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal.title" id="editarModal{{ $evaluacion->id }}Label">Editar Evaluacion</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <!-- Formulario de edición -->
                                    <form id="formularioEdicionEvaluacion{{ $evaluacion->id }}"
                                        action="{{ route('evaluacion.editar.update', ['idEvaluacion' => $evaluacion->id]) }}"
                                        method="POST" data-evaluacion-id="{{ $evaluacion->id }}">
                                        @csrf
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="nombre" class="form-label">Actividad de
                                                    Aprendizaje:</label>
                                                <input type="text" id="actividad" name="actividadAprendizaje"
                                                    class="styled-input"
                                                    value="{{ $evaluacion->actividadAprendizaje }}">
                                            </div>

                                            <div class="col-md-6">
                                                <label for="nombre" class="form-label">Tipo de Evaluacion:</label>
                                                <select class="form-select" id="archivo" name="tipoEvaluacion"
                                                    value="{{ $evaluacion->tipoEvaluacion }}">
                                                    <option value="Rúbrica">Rúbrica</option>
                                                    <option value="Guía de observación">Guía de observación</option>
                                                    <option value="Lista de Cotejo">Lista de Cotejo</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mb-3">

                                            <div class="col-md-12">
                                                <label for="tipo" class="form-label">Subir Ejemplo:</label>
                                                <input type="text" id="tipo" name="archivoEjemplo"
                                                    class="styled-input" value="{{ $evaluacion->archivoEjemplo }}">
                                            </div>
                                        </div>

                                        <div class="flex justify-end">
                                            <button class="btn btn-primary me-2" onclick="goBack()"
                                                style="background-color: #21182F;color: white">
                                                <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png"
                                                    alt="flechaRegresar" width="20px" style="filter: invert(100%);">
                                                Regresar
                                            </button>
                                            <button type="submit" class="btn btn-warning"> <img
                                                    src="https://cdn-icons-png.flaticon.com/128/376/376218.png"
                                                    alt="" width="20px">Guardar</button>
                                        </div>
                                    </form>
                                    <!-- Mensaje de éxito -->
                                    <div id="successMessage{{ $evaluacion->id }}" class="alert alert-success d-none"
                                        role="alert">
                                        ¡Evaluación editada con éxito!
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
