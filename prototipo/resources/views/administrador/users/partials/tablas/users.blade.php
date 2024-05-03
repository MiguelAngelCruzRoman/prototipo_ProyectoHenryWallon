<div class="row">
    <div class="col-md-12">
        <table class="w-full border-collapse border border-gray-400">
            <thead>
                <tr>
                    <th class="border border-gray-400 px-4 py-2">ID</th>
                    <th class="border border-gray-400 px-4 py-2">NOMBRE COMPLETO</th>
                    <th class="border border-gray-400 px-4 py-2">USUARIO</th>
                    <th class="border border-gray-400 px-4 py-2">CONTACTO</th>
                    <th class="border border-gray-400 px-4 py-2" colspan="2">OPERACIONES</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <td class="border border-gray-400 px-4 py-2">{{ $user->id }}</td>
                        <td class="border border-gray-400 px-4 py-2">{{ $user->primerNombre}} {{ $user->segundoNombre }} <br> {{ $user->apellidoPaterno }} {{ $user->apellidoMaterno }}</td>
                        <td class="border border-gray-400 px-4 py-2">{{ $user->email}} ({{ $user->rol}})</td>
                        <td class="border border-gray-400 px-4 py-2"><ul><li>{{ $user->correo}}</li><li>{{ $user->telefono}}</li></ul></td>
                        <td class="border border-gray-400 px-4 py-2">
                            <div class="btn-group" role="group" aria-label="Basic example">
                               
                                <button onclick="window.location='{{ route('user.ver', ['idUser' => $user->id]) }}'" class="btn btn-primary mr-2">
                                    <img src="https://cdn-icons-png.flaticon.com/128/2874/2874802.png" alt="" height="20px"> Ver
                                </button>
                                <button onclick="window.location='{{ route('user.editar', ['idUser' => $user->id]) }}'" class="btn btn-warning mr-2">
                                    <img src="https://cdn-icons-png.flaticon.com/128/10337/10337163.png" alt="" height="20px"> Editar
                                </button>
                                <button onclick="window.location='{{ route('user.eliminar', ['idUser' => $user->id]) }}'" class="btn btn-danger mr-2">
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