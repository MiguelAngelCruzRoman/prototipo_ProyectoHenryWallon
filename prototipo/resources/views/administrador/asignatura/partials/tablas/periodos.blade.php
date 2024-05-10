<div class="mb-8">
    <table class="w-full border-collapse border border-gray-400">
        <thead>
            <tr>
                <th class="border border-gray-400 px-4 py-2">ID</th>
                <th class="border border-gray-400 px-4 py-2">NOMBRE</th>
                <th class="border border-gray-400 px-4 py-2">COMPONENTE</th>
                <th class="border border-gray-400 px-4 py-2">SEMESTRE</th>
                <th class="border border-gray-400 px-4 py-2" colspan="2">OPERACIONES</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($asignaturas as $asignatura)
                <tr>
                    <td class="border border-gray-400 px-4 py-2">{{ $asignatura->id }}</td>
                    <td class="border border-gray-400 px-4 py-2">{{ $asignatura->nombre }}</td>
                    <td class="border border-gray-400 px-4 py-2">{{ $asignatura->componente }}</td>
                    <td class="border border-gray-400 px-4 py-2">{{ $asignatura->semestre }} ({{ $asignatura->turno }})
                    </td>
                    <td class="border border-gray-400 px-4 py-2">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <!-- Añade un data-toggle y data-target para abrir el modal -->
                            <button onclick="window.location='{{ route('asignatura.ver', ['idAsignatura' => $asignatura->id]) }}'" class="btn btn-primary mr-2">
                            <i class=" fas fa-eye" style="color:black"></i>
                            </button>
                            <button type="button" class="btn btn-warning mr-2" data-toggle="modal"
                                data-target="#editarModal{{ $asignatura->id }}">
                                <i class=" fas fa-pencil-alt" style="color:black"></i>
                            </button>
                            <button class="btn btn-danger eliminar-btn"
                                data-url="{{ route('asignatura.eliminar', ['idAsignatura' => $asignatura->id]) }}">
                                <i class=" fas fa-trash" style="color:black"></i>   
                            </button>
                        </div>
                    </td>
                </tr>
                
                <!-- Modal para la edición -->
                <div class="modal fade" id="editarModal{{ $asignatura->id }}" tabindex="-1" role="dialog"
                    aria-labelledby="editarModal{{ $asignatura->id }}Label" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal.title" id="editarModal{{ $asignatura->id }}Label">Editar
                                    Asignatura
                                </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <!-- Formulario de edición -->
                                <form id="formularioEdicionAsignatura{{ $asignatura->id }}"
                                    action="{{ route('asignatura.editar.datosAsignatura.update', ['idAsignatura' => $asignatura->id]) }}"
                                    method="POST" data-asignatura-id="{{ $asignatura->id }}">
                                    @csrf
                                    <div class="row mb-3">
                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="nombre">
                                                Nombre de asignatura <span class="text-red-500">*</span>:
                                            </label>
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="nombre" type="text" name="nombre"
                                                value="{{ $asignatura->nombre }}">
                                        </div>

                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="turno">
                                                Turno <span class="text-red-500">*</span>:
                                            </label>
                                            <select required
                                                class="hadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="turno" name="turno">
                                                <option value="{{ $asignatura->turno }}">{{ $asignatura->turno }}
                                                </option>
                                                <option value="Matutino">Matutino</option>
                                                <option value="Vespertino">Vespertino</option>
                                            </select>
                                        </div>

                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="semestre">
                                                Semestre <span class="text-red-500">*</span>:
                                            </label>
                                            <select required
                                                class="hadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="semestre" name="semestre">
                                                <option value="{{ $asignatura->semestre }}">
                                                    {{ $asignatura->semestre }}</option>
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
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="objetivo" type="text" name="objetivo"
                                                value="{{ $asignatura->objetivo }}">
                                        </div>

                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="intencionDidactica">
                                                Intención Didáctica <span class="text-red-500">*</span>:
                                            </label>
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="intencionDidactica" type="text" name="intencionDidactica"
                                                value="{{ $asignatura->intencionDidactica }}">
                                        </div>

                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="componente">
                                                Componente de formación <span class="text-red-500">*</span>:
                                            </label>
                                            <select required
                                                class="hadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="componente" name="componente">
                                                <option value="{{ $asignatura->componente }}">
                                                    {{ $asignatura->componente }}</option>
                                                <option value="Fundamental">Fundamental</option>
                                                <option value="Fundamental Extendido">Fundamental extendido
                                                </option>
                                                <option value="Fundamental Extendido Obligatorio">Fundamental
                                                    extendido obligatorio</option>
                                                <option value="Laboral Básico">Laboral básico</option>
                                                <option value="Ampliada">Ampliada</option>
                                            </select>
                                        </div>


                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="calificacionAprobatoria">
                                                Calificación aprobatoria <span class="text-red-500">*</span>:
                                            </label>
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="calificacionAprobatoria" type="number"
                                                name="calificacionAprobatoria"
                                                value="{{ $asignatura->calificacionAprobatoria }}">
                                        </div>

                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="horasDocente">
                                                Horas con docente <span class="text-red-500">*</span>:
                                            </label>
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="horasDocente" type="number" name="horasDocente"
                                                value="{{ $asignatura->horasDocente }}">
                                        </div>

                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="horasEstudioIndependiente">
                                                Horas autodidáctas <span class="text-red-500">*</span>:
                                            </label>
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="horasEstudioIndependiente" type="number"
                                                name="horasEstudioIndependiente"
                                                value="{{ $asignatura->horasEstudioIndependiente }}">
                                        </div>

                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="creditos">
                                                Créditos <span class="text-red-500">*</span>:
                                            </label>
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="creditos" type="number" name="creditos"
                                                value="{{ $asignatura->creditos }}">
                                        </div>

                                        <div class="mb-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="imagen">
                                                Imagen alusiva a la asignatura <span class="text-red-500">*</span>:
                                            </label>
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="imagen" type="file" name="imagen"
                                                value="{{ $asignatura->imagen }}">
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
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </tbody>
    </table>
</div>
