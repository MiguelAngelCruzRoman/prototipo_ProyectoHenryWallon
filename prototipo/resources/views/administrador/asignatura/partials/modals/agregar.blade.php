
<!--modal paara agregar datos-->
<div class="modal fade" id="formularioModal" tabindex="-1" role="dialog" aria-labelledby="formularioModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal.title" id="formularioModalLabel">Agregar Asignatura</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!--formulario para los datos-->
            <div class="modal-body">
                <form action="{{ route('asignatura.agregar.datosAsignatura.insert') }}" id="formularioDatosAsignatura"
                    method="POST">
                    @csrf

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="nombre">
                            Nombre de asignatura <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="nombre" type="text" name="nombre">
                    </div>

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="turno">
                            Turno <span class="text-red-500">*</span>:
                        </label>
                        <select required
                            class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline"
                            id="turno" name="turno">
                            <option value="">Selecciona un turno</option>
                            <option value="Matutino">Matutino</option>
                            <option value="Vespertino">Vespertino</option>
                        </select>
                    </div>

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="semestre">
                            Semestre <span class="text-red-500">*</span>:
                        </label>
                        <select required
                            class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline"
                            id="semestre" name="semestre">
                            <option value="">Selecciona un semestre</option>
                            <option value="Primero">Primero</option>
                            <option value="Segundo">Segundo</option>
                            <option value="Tercero">Tercero</option>
                            <option value="Cuarto">Cuarto</option>
                            <option value="Quinto">Quinto</option>
                            <option value="Sexto">Sexto</option>
                        </select>
                    </div>

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="objetivo">
                            Objetivo <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-4 pr-8 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="objetivo" type="text" name="objetivo">
                    </div>

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="intencionDidactica">
                            Intención Didáctica <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-4 pr-8 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="intencionDidactica" type="text" name="intencionDidactica">
                    </div>

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="componente">
                            Componente de formación <span class="text-red-500">*</span>:
                        </label>
                        <select required
                            class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline"
                            id="componente" name="componente">
                            <option value="">Selecciona un componente</option>
                            <option value="Fundamental">Fundamental</option>
                            <option value="Fundamental Extendido">Fundamental extendido</option>
                            <option value="Fundamental Extendido Obligatorio">Fundamental extendido obligatorio</option>
                            <option value="Laboral Básico">Laboral básico</option>
                            <option value="Ampliada">Ampliada</option>
                        </select>
                    </div>


                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="calificacionAprobatoria">
                            Calificación aprobatoria <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-4 pr-8 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="calificacionAprobatoria" type="number" name="calificacionAprobatoria">
                    </div>

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="horasDocente">
                            Horas con docente <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-4 pr-8 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="horasDocente" type="number" name="horasDocente">
                    </div>

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="horasEstudioIndependiente">
                            Horas autodidáctas <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-4 pr-8 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="horasEstudioIndependiente" type="number" name="horasEstudioIndependiente">
                    </div>

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="creditos">
                            Créditos <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-4 pr-8 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="creditos" type="number" name="creditos">
                    </div>

                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="imagen">
                            Imagen alusiva a la asignatura <span class="text-red-500">*</span>:
                        </label>
                        <input required
                            class="shadow appearance-none border rounded w-full py-2 px-4 pr-8 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="imagen" type="file" name="imagen">
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
                    ¡Asignatura guardada con éxito!
                </div>
            </div>

        </div>
    </div>
</div>
