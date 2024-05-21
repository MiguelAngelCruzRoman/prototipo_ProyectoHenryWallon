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
<div class="mb-8">
    <table class="w-full text-sm text-left rtl:text-right rounded-2xl">
        <thead class="text-sm  uppercase">
            <tr>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">ID</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Nombre</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Componente</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Semestre</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black" colspan="2">Operaciones</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($asignaturas as $asignatura)
                <tr>
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        {{ $asignatura->id }}</td>
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        {{ $asignatura->nombre }}</td>
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        {{ $asignatura->componente }}</td>
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        {{ $asignatura->semestre }} ({{ $asignatura->turno }})
                    </td>
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <!-- Añade un data-toggle y data-target para abrir el modal -->
                            <button
                                onclick="window.location='{{ route('asignatura.ver', ['idAsignatura' => $asignatura->id]) }}'"
                                class="btn btn-primary mr-2">
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
                                    method="POST" data-asignatura-id="{{ $asignatura->id }}" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="nombre">
                                                Nombre de asignatura <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="nombre" type="text" name="nombre"
                                                value="{{ $asignatura->nombre }}">
                                        </div>
                                    </div>


                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="turno">
                                                Turno <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
                                            <select required
                                                class="hadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="turno" name="turno">
                                                <option value="{{ $asignatura->turno }}">{{ $asignatura->turno }}
                                                </option>
                                                <option value="Matutino">Matutino</option>
                                                <option value="Vespertino">Vespertino</option>
                                            </select>
                                        </div>
                                    </div>



                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="semestre">
                                                Semestre <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
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
                                    </div>

                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="objetivo">
                                                Objetivo <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="objetivo" type="text" name="objetivo"
                                                value="{{ $asignatura->objetivo }}">
                                        </div>
                                    </div>


                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="intencionDidactica">
                                                Intención Didáctica <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="intencionDidactica" type="text" name="intencionDidactica"
                                                value="{{ $asignatura->intencionDidactica }}">
                                        </div>
                                    </div>



                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="componente">
                                                Componente de formación <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
                                            <select required
                                                class="hadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="componente" name="componente">
                                                <option value="{{ $asignatura->componente }}">
                                                    {{ $asignatura->componente }}</option>
                                                <option value="Fundamental">Fundamental</option>
                                                <option value="Fundamental Extendido">Fundamental extendido
                                                </option>
                                                <option value="Fundamental Extendido Obligatorio">Fundamental
                                                    ext obligatorio</option>
                                                <option value="Laboral Básico">Laboral básico</option>
                                                <option value="Ampliada">Ampliada</option>
                                            </select>
                                        </div>
                                    </div>



                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="calificacionAprobatoria">
                                                Calificación aprobatoria <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="calificacionAprobatoria" type="number"
                                                name="calificacionAprobatoria"
                                                value="{{ $asignatura->calificacionAprobatoria }}">
                                        </div>
                                    </div>



                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="horasDocente">
                                                Horas con docente <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="horasDocente" type="number" name="horasDocente"
                                                value="{{ $asignatura->horasDocente }}">
                                        </div>
                                    </div>


                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2"
                                                for="horasEstudioIndependiente">
                                                Horas autodidáctas <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="horasEstudioIndependiente" type="number"
                                                name="horasEstudioIndependiente"
                                                value="{{ $asignatura->horasEstudioIndependiente }}">
                                        </div>
                                    </div>


                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="creditos">
                                                Créditos <span class="text-red-500">*</span>:
                                            </label>
                                        </div>

                                        <div class="col-md-8">
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="creditos" type="number" name="creditos"
                                                value="{{ $asignatura->creditos }}">
                                        </div>
                                    </div>


                                    <div class="row mb-4">
                                        <div class="col-md-12">
                                            <label class="block text-gray-700 text-sm font-bold mb-2" for="imagen">
                                                Imagen alusiva a la asignatura <span class="text-red-500">*</span>:
                                            </label>
                                            <input required
                                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                                id="imagen" type="file" name="imagen"
                                                value="{{ $asignatura->imagen }}">
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
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </tbody>
    </table>
</div>
