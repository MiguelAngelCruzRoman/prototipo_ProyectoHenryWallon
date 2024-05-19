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
<div class="row">
    <div class="col-md-12">
        <table class="w-full border-collapse border border-gray-400">
            <thead>
                <tr>
                    <th scope="col" class="px-6 py-3 text-center" style="color:black">ID</th>
                    <th scope="col" class="px-6 py-3 text-center" style="color:black">Asignatura</th>
                    <th scope="col" class="px-6 py-3 text-center" style="color:black">Docente</th>
                    <th scope="col" class="px-6 py-3 text-center" style="color:black">Semestre</th>
                    <th scope="col" class="px-6 py-3 text-center" style="color:black" colspan="2">Operaciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($grupos as $grupo)
                <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $grupo->id }}</td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $grupo->nombreAsignatura }}</td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $grupo->nombreDocente }}
                            {{ $grupo->segundoNombreDocente }} {{ $grupo->apellidoPaternoDocente }}
                            {{ $grupo->apellidoMaternoDocente }}</td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $grupo->semestre }}</td>
                        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">
                            <div class="btn-group" role="group" aria-label="Basic example">

                                <button onclick="window.location='{{ route('grupo.ver', ['idGrupo' => $grupo->id]) }}'"
                                    class="btn btn-primary mr-2">
                                    <i class=" fas fa-eye" style="color:black"></i>
                                </button>
                                <button
                                    onclick="window.location='{{ route('grupo.editar', ['idGrupo' => $grupo->id]) }}'"
                                    class="btn btn-warning mr-2">
                                    <i class=" fas fa-pencil-alt" style="color:black"></i>
                                </button>
                                <button
                                    onclick="window.location='{{ route('grupo.eliminar', ['idGrupo' => $grupo->id]) }}'"
                                    class="btn btn-danger mr-2">
                                    <i class=" fas fa-trash" style="color:black"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
