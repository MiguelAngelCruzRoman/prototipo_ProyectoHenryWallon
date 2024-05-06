<br>
<p>Nota: arque "A" para asistencias, "R" para los retardos, "J" para faltas justificadas y "F" pa las faltas</p>

<div class="mb-8">
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
                @php
                    $id = 1;
                @endphp
            @foreach ($asistencias as $asistencia)
                <tr>
                    <td class="border border-gray-400 px-4 py-2">{{ $id }}</td>
                    <td class="border border-gray-400 px-4 py-2">{{ $asistencia->primerNombre }}
                        {{ $asistencia->segundoNombre }} {{ $asistencia->apellidoPaterno }}
                    </td>

                    <td class="border border-gray-400 px-4 py-2">
                        <div class="flex flex-wrap">

                            <div class="flex items-center me-4">
                                <input id="red-radio" type="radio" value="" name="colored-radio"
                                    class="w-4 h-4 text-red-600 bg-gray-100 border-gray-300 focus:ring-red-500 dark:focus:ring-red-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                                <label for="red-radio"
                                    class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">A</label>

                                <input id="green-radio" type="radio" value="" name="colored-radio"
                                    class="w-4 h-4 text-green-600 bg-gray-100 border-gray-300 focus:ring-green-500 dark:focus:ring-green-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                                <label for="green-radio"
                                    class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">R</label>

                                <input checked id="purple-radio" type="radio" value="" name="colored-radio"
                                    class="w-4 h-4 text-purple-600 bg-gray-100 border-gray-300 focus:ring-purple-500 dark:focus:ring-purple-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                                <label for="purple-radio"
                                    class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">J</label>

                                <input id="teal-radio" type="radio" value="" name="colored-radio"
                                    class="w-4 h-4 text-teal-600 bg-gray-100 border-gray-300 focus:ring-teal-500 dark:focus:ring-teal-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                                <label for="teal-radio"
                                    class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">F</label>
                            </div>
                        </div>
                    </td>

                    <td class="border border-gray-400 px-4 py-2">
                        <textarea id="message" rows="1"
                            class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                            placeholder="Escribe un comentario (opcional)"></textarea>
                    </td>
                    <input name="idAlumno" type="hidden" value="{{ $asistencia->id }}">
                </tr>
                @php
                    $id ++;
                @endphp
            @endforeach
        </tbody>
    </table>

<br>
    <center>
        <button type="button" class="btn btn-warning">
            <strong> Guardar</strong>
            <img src="https://cdn-icons-png.flaticon.com/128/376/376218.png" alt="iconoGuardar" width="20px">
        </button>
    </center>
</div>
