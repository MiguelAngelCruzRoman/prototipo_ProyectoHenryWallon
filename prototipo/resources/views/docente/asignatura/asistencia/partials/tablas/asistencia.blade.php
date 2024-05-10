<div class="mb-8">
    <form action="/docente/asignatura/asistencia/insert" method="POST">
        @csrf
        <table class="w-full border-collapse border border-gray-400">
            <thead>
                <tr>
                    <th class="border border-gray-400 px-4 py-2"># LISTA</th>
                    <th class="border border-gray-400 px-4 py-2">NOMBRE DE ESTUDIANTE</th>
                    <th class="border border-gray-400 px-4 py-2">ASISTENCIA</th>
                    <th class="border border-gray-400 px-4 py-2">COMENTARIOS</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($asistencias as $asistencia)
                <tr>
                    <td class="border border-gray-400 px-4 py-2">{{ $asistencia->id }}</td>
                    <td class="border border-gray-400 px-4 py-2">{{ $asistencia->primerNombre }}
                        {{ $asistencia->segundoNombre }} {{ $asistencia->apellidoPaterno }}</td>
                    <td class="border border-gray-400 px-4 py-2">
                        <div class="flex flex-wrap">
                            <input type="radio" id="asistencia_A_{{ $asistencia->id }}" name="asistencias_{{ $asistencia->id }}" value="Asistencia">
                            <label for="asistencia_A_{{ $asistencia->id }}">A</label>

                            <input type="radio" id="asistencia_R_{{ $asistencia->id }}" name="asistencias_{{ $asistencia->id }}" value="Retraso">
                            <label for="asistencia_R_{{ $asistencia->id }}">R</label>

                            <input type="radio" id="asistencia_J_{{ $asistencia->id }}" name="asistencias_{{ $asistencia->id }}" value="Justificante">
                            <label for="asistencia_J_{{ $asistencia->id }}">J</label>

                            <input type="radio" id="asistencia_F_{{ $asistencia->id }}" name="asistencias_{{ $asistencia->id }}" value="Falta">
                            <label for="asistencia_F_{{ $asistencia->id }}">F</label>
                        </div>
                    </td>
                    <td class="border border-gray-400 px-4 py-2">
                        <textarea name="comentarios[]" id="comentario_{{ $asistencia->id }}" rows="1"
                            class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                            placeholder="Escribe un comentario (opcional)"></textarea>
                        <input name="idAlumnos[]" type="hidden" value="{{ $asistencia->id }}">
                        <input name="grupo_alumno[]" type="hidden" value="{{ $asistencia->id_GrupoAlumno }}">
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <center>
            <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#confirmModal">
                <strong> Guardar</strong>
                <img src="https://cdn-icons-png.flaticon.com/128/376/376218.png" alt="iconoGuardar" width="20px">
            </button>
        </center>

        <!-- Modal -->
        <div class="modal fade" id="confirmModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Guardar Asistencias</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ¿Estás seguro de que deseas guardar las asistencias?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
