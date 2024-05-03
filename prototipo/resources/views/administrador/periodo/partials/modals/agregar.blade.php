<!--modal paara agregar datos-->
<div class="modal fade" id="formularioModal" tabindex="-1" role="dialog" aria-labelledby="formularioModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal.title" id="formularioModalLabel">Agregar Periodo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!--formulario para los datos-->
            <div class="modal-body">
                <form action="{{ route('periodo.agregar.datosPeriodo.insert') }}" id="formularioDatosPeriodo"
                    method="POST">
                    @csrf
                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="fechaInicio">
                            Fecha de Inicio <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="fechaInicio" type="date" name="fechaInicio">
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="fechaFin">
                            Fecha de Fin <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="fechaFin" type="date" name="fechaFin">
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="tipo">
                            Tipo <span class="text-red-500">*</span>:
                        </label>
                        <select required
                            class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline"
                            id="tipo" name="tipo">
                            <option value="">Selecciona un tipo</option>
                            <option value="CicloEscolar">Ciclo Escolar</option>
                            <option value="Semanal">Semanal</option>
                        </select>
                    </div>
                    <div class="flex justify-end">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary ml-2">Guardar</button>
                    </div>
                </form>
            </div>
            <!--mensaje si es exito el guardado de datos-->
            <div id="successMessage" class="modal-body d-none">
                <div class="alert alert-success" role="alert">
                    ¡Periodo guardado con éxito!
                </div>
            </div>

        </div>
    </div>
</div>
