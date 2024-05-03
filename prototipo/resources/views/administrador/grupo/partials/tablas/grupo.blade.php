<div class="row">
    <div class="col-md-12">
        <table class="w-full border-collapse border border-gray-400">
            <thead>
                <tr>
                    <th class="border border-gray-400 px-4 py-2">ID</th>
                    <th class="border border-gray-400 px-4 py-2">ASIGNATURA</th>
                    <th class="border border-gray-400 px-4 py-2">DOCENTE</th>
                    <th class="border border-gray-400 px-4 py-2">SEMESTRE</th>
                    <th class="border border-gray-400 px-4 py-2" colspan="2">OPERACIONES</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($grupos as $grupo)
                    <tr>
                        <td class="border border-gray-400 px-4 py-2">{{ $grupo->id }}</td>
                        <td class="border border-gray-400 px-4 py-2">{{ $grupo->nombreAsignatura }}</td>
                        <td class="border border-gray-400 px-4 py-2">{{ $grupo->nombreDocente }} {{ $grupo->segundoNombreDocente }} {{ $grupo->apellidoPaternoDocente }} {{ $grupo->apellidoMaternoDocente }}</td>
                        <td class="border border-gray-400 px-4 py-2">{{ $grupo->semestre }}</td>
                        <td class="border border-gray-400 px-4 py-2">
                            <div class="btn-group" role="group" aria-label="Basic example">
                               
                                <button onclick="window.location='{{ route('grupo.ver', ['idGrupo' => $grupo->id]) }}'" class="btn btn-primary mr-2">
                                    <img src="https://cdn-icons-png.flaticon.com/128/2874/2874802.png" alt="" height="20px"> Ver
                                </button>
                                <button onclick="window.location='{{ route('grupo.editar', ['idGrupo' => $grupo->id]) }}'" class="btn btn-warning mr-2">
                                    <img src="https://cdn-icons-png.flaticon.com/128/10337/10337163.png" alt="" height="20px"> Editar
                                </button>
                                <button onclick="window.location='{{ route('grupo.eliminar', ['idGrupo' => $grupo->id]) }}'" class="btn btn-danger mr-2">
                                    <img src="https://cdn-icons-png.flaticon.com/128/1828/1828939.png" alt="" height="20px"> Eliminar
                                </button>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>