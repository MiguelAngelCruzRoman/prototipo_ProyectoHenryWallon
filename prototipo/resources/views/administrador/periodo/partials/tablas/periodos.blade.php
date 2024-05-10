<div class="mb-8">
    <table class="w-full border-collapse border border-gray-400">
        <thead>
            <tr>
                <th class="border border-gray-400 px-4 py-2">ID</th>
                <th class="border border-gray-400 px-4 py-2">FECHA DE INICIO</th>
                <th class="border border-gray-400 px-4 py-2">FECHA DE FIN</th>
                <th class="border border-gray-400 px-4 py-2">TIPO</th>
                <th class="border border-gray-400 px-4 py-2" colspan="2">OPERACIONES</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($periodos as $periodo)
                <tr>
                    <td class="border border-gray-400 px-4 py-2">{{ $periodo->id }}</td>
                    <td class="border border-gray-400 px-4 py-2">{{ $periodo->fechaInicio }}</td>
                    <td class="border border-gray-400 px-4 py-2">{{ $periodo->fechaFin }}</td>
                    <td class="border border-gray-400 px-4 py-2">{{ $periodo->tipo }}</td>
                    <td class="border border-gray-400 px-4 py-2">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <!-- Añade un data-toggle y data-target para abrir el modal -->
                            <button type="button" class="btn btn-warning mr-2" data-toggle="modal"
                                data-target="#editarModal{{ $periodo->id }}">
                                <i class=" fas fa-pencil-alt" style="color:black"></i>
                            </button>
                            <button class="btn btn-danger eliminar-btn"
                                data-url="{{ route('periodo.eliminar', ['idPeriodo' => $periodo->id]) }}">
                                <i class=" fas fa-trash" style="color:black"></i>
                            </button>

                        </div>
                    </td>

                    <!-- Modal para la edición -->
                    <div class="modal fade" id="editarModal{{ $periodo->id }}" tabindex="-1" role="dialog"
                        aria-labelledby="editarModal{{ $periodo->id }}Label" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal.title" id="editarModal{{ $periodo->id }}Label">Editar Periodo</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <!-- Formulario de edición -->
                                    <form id="formularioEdicionPeriodo{{ $periodo->id }}"
                                        action="{{ route('periodo.editar.datosPeriodo.update', ['idPeriodo' => $periodo->id]) }}"
                                        method="POST" data-periodo-id="{{ $periodo->id }}">
                                        @csrf
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <label for="fechaInicio" class="form-label">Fecha de Inicio:</label>
                                                <input type="date" class="form-control" id="fechaInicio"
                                                    name="fechaInicio" value="{{ $periodo->fechaInicio }}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="fechaFin" class="form-label">Fecha de Fin:</label>
                                                <input type="date" class="form-control" id="fechaFin"
                                                    name="fechaFin" value="{{ $periodo->fechaFin }}">
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-12">
                                                <label for="tipo" class="form-label">Tipo:</label>
                                                <select class="form-select" id="tipo" name="tipo">
                                                    <option value="{{ $periodo->tipo }}">{{ $periodo->tipo }}</option>
                                                    <option value="CicloEscolar">Ciclo Escolar</option>
                                                    <option value="Semanal">Semanal</option>
                                                </select>
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
                                    <div id="successMessage{{ $periodo->id }}" class="alert alert-success d-none"
                                        role="alert">
                                        ¡Periodo editado con éxito!
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            @endforeach
        </tbody>
    </table>
</div>
