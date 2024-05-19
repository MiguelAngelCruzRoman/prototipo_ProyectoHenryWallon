<style>
    table {
        border-collapse: separate;
        border-spacing: 0;
        border: 1px solid rgb(123, 117, 117);
        border-radius: 10px;
        overflow: hidden;
    }

    th,
    td {
        border: 1px solid rgb(123, 117, 117);
        padding: 8px;
    }

    thead {
        background-color: rgb(224, 223, 223);
    }
</style>

<div class="row">
    <div class="col-md-12 relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right rounded-2xl">
            <thead class="text-sm  uppercase">
                <tr>
                    <th scope="col" class="px-6 py-3 text-center" style="color:black">Actividad de Aprendizaje</th>
                    <th scope="col" class="px-6 py-3 text-center" style="color:black">Tipo de Evaluación</th>
                    <th scope="col" class="px-6 py-3 text-center" style="color:black">Archivo de Ejemplo</th>
                    <th scope="col" class="px-6 py-3 text-center" style="color:black">Acciones</th>
            </thead>
            <tbody>
                @foreach ($evaluaciones as $evaluacion)
                    <tr
                        class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
                            {{ $evaluacion->actividadAprendizaje }}</td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
                            {{ $evaluacion->tipoEvaluacion }}</td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white"
                            align="center">
                            <a href="{{ Storage::url($evaluacion->archivoEjemplo) }}">
                                <button class="btn btn-primary mr-2">
                                    <i class="fas fa-eye" style="color:black"></i>
                                    <span style="color:black">Ver Archivo</span>
                                </button>
                            </a>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
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
                    <h5 class="modal.title" id="editarModal{{ $evaluacion->id }}Label">Editar Evaluación</h5>
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
                                <input type="text" id="actividad" name="actividadAprendizaje" class="form-control flex-1 mr-2"
                                    value="{{ $evaluacion->actividadAprendizaje }}">
                            </div>

                            <div class="col-md-6">
                                <label for="nombre" class="form-label">Tipo de Evaluacion:</label>
                                <select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-3 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline" id="archivo" name="tipoEvaluacion"
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
                                <input type="file" id="tipo" name="archivoEjemplo" class="form-control flex-1 mr-2"
                                    value="{{ $evaluacion->archivoEjemplo }}">
                            </div>
                        </div>

                        <div class="flex justify-end">
                            <button class="btn" data-dismiss="modal"
                                style="background-color: #21182F;color: white">
                                <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                                    width="20px" style="filter: invert(100%);">
                                Regresar
                            </button>
                            <button type="submit" class="btn btn-warning" style="color:black"> <img
                                    src="https://cdn-icons-png.flaticon.com/128/376/376218.png" alt=""
                                    width="20px">Guardar</button>
                        </div>
                    </form>
                    <!-- Mensaje de éxito -->
                    <div id="successMessage{{ $evaluacion->id }}" class="alert alert-success d-none" role="alert">
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
