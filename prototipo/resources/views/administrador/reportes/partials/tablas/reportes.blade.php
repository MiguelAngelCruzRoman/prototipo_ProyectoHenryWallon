<style>
    table {
        border-collapse: separate;
        border-spacing: 0;
        border: 1px solid rgb(123, 117, 117);
        border-radius: 10px;
        overflow: hidden;
    }
    th, td {
        border: 1px solid rgb(123, 117, 117);
        padding: 8px;
    }
    thead{
        background-color: rgb(224, 223, 223);
    }
</style>



<div class="col-md-12 relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left rtl:text-right rounded-2xl">
            <thead class="text-sm  uppercase">

            <tr>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Fecha de Inicio</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Fecha de Fin</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Tipo de Periodo</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Acciones</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($periodos as $periodo)
            <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $periodo->fechaInicio}}</td>
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $periodo->fechaFin}}</td>
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $periodo->tipo}}</td>
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
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
                                                <select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-5 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline" id="tipo" name="tipo">
                                                    <option value="{{ $periodo->tipo }}">{{ $periodo->tipo }}</option>
                                                    <option value="CicloEscolar">Ciclo Escolar</option>
                                                    <option value="Semanal">Semanal</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="flex justify-end">
                                            <button class="btn " data-dismiss="modal"
                                                style="background-color: #21182F;color: white">
                                                <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png"
                                                    alt="flechaRegresar" width="20px" style="filter: invert(100%);">
                                                Regresar
                                            </button>
                                            <button type="submit" class="btn btn-warning" style="color:black"> <img
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
