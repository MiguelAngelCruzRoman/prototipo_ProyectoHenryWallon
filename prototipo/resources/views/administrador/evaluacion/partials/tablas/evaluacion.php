<div class="row">
                <div class="col-md-12">
                    <table class="w-full border-collapse border border-gray-400">
                        <thead>
                            <tr>
                                <th class="border border-gray-400 px-4 py-2">ID</th>
                                <th class="border border-gray-400 px-4 py-2">ACTIVIDAD DE APRENDIZAJE</th>
                                <th class="border border-gray-400 px-4 py-2">TIPO DE EVALUACION</th>
                                <th class="border border-gray-400 px-4 py-2">ARCHIVO DE EJEMPLO</th>
                                <th class="border border-gray-400 px-4 py-2">OPERACIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($evaluaciones as $evaluacion)
                                <tr>
                                    <td class="border border-gray-400 px-4 py-2">{{ $evaluacion->id }}</td>
                                    <td class="border border-gray-400 px-4 py-2">{{ $evaluacion->actividadAprendizaje }}</td>
                                    <td class="border border-gray-400 px-4 py-2">{{ $evaluacion->tipoEvaluacion }}</td>
                                    <td class="border border-gray-400 px-4 py-2"><a href="{{ $evaluacion->archivoEjemplo }}">Ver archivo</a></td>
                                    <td class="border border-gray-400 px-4 py-2">
                                        <div class="btn-group" role="group" aria-label="Basic example">
                                            <button onclick="window.location='{{ route('evaluacion.editar', $evaluacion->id) }}'"
                                                class="btn btn-warning">
                                                <img src="https://cdn-icons-png.flaticon.com/128/10337/10337163.png" alt=""
                                                    height="20px"> Editar
                                            </button>
                                            <button onclick="window.location='{{ route('evaluacion.eliminar', ['idEvaluacion' => $evaluacion->id]) }}'"
                                                class="btn btn-danger">
                                                <img src="https://cdn-icons-png.flaticon.com/128/1828/1828939.png" alt=""
                                                    height="20px"> Eliminar
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>