<div class="row">
    <div class="col-md-12">
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">   
    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                    <th scope="col" class="px-6 py-3">ID</th>
                    <th scope="col" class="px-6 py-3">ACTIVIDAD DE APRENDIZAJE</th>
                    <th scope="col" class="px-6 py-3">TIPO DE EVALUACION</th>
                    <th scope="col" class="px-6 py-3">ARCHIVO DE EJEMPLO</th>
                    <th scope="col" class="px-6 py-3">OPERACIONES</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($evaluaciones as $evaluacion)
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                        <td class="px-6 py-4">{{ $evaluacion->id }}</td>
                        <td class="px-6 py-4">{{ $evaluacion->actividadAprendizaje }}</td>
                        <td class="px-6 py-4">{{ $evaluacion->tipoEvaluacion }}</td>
                        <td class="px-6 py-4" align="center">
                            <a href="{{ Storage::url($evaluacion->archivoEjemplo) }}">
                            <button  class="btn btn-primary mr-2">
                                <i class="fas fa-eye" style="color:black"></i> 
                                <span style="color:black">Ver Archivo</span>
                            </button>
                        </a>
                        <td class="px-6 py-4">
                        <div class="btn-group" role="group" aria-label="Basic example">
                                <button type="button" class="btn btn-warning mr-2" data-toggle="modal"
                                    data-target="#editarModal{{ $evaluacion->id }}">
                                    <i class=" fas fa-pencil-alt" style="color:black"></i>
                                </button>
                                <button class="btn btn-danger eliminar-btn"
                                    data-url="{{ route('evaluacion.eliminar', ['idEvaluacion' => $evaluacion->id]) }}">
                                    <i class=" fas fa-trash" style="color:black"></i> 
                                </button>
                            </div>
                        </td>
                    </tr>
</div>
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
                                        method="POST" data-evaluacion-id="{{ $evaluacion->id }}" enctype="multipart/form-data">
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
                                                <input type="file" id="tipo" name="archivoEjemplo"
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
