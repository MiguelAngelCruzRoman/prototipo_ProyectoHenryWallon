<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Usuarios</title>
    @include('general.estilos')
</head>

<body>

    @include('general.navbar')


    <div class="container">
        <div class="row">
            <center>
                <h1><strong>USUARIOS</strong></h1>
            </center>
        </div>

        <div class="row mb-3">
            <div class="col-md-6">
                <form action="{{ route('user.busqueda') }}" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control"
                            placeholder="Buscar usuario por nombre, correo o rol" name="valorBusqueda">
                        <button class="btn" style="flex:0"
                            type="submit">Buscar</button>
                    </div>
                </form>
            </div>

            <div class="col-md-4">
            </div>



        </div>

        <div class="row">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido Paterno</th>
                        <th>Apellido Materno</th>
                        <th>Nombre de Usuario</th>
                        <th>rol</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($users as $user)
                        <tr>
                            <th scope="row">{{ $usuario->id }}</th>
                            <td>{{ $user->primerNombre }}</td>
                            <td>{{ $user->apellidoPaterno }}</td>
                            <td>{{ $user->apellidoMaterno }}</td>
                            <td>{{ $user->email }}</td>
                            <td>{{ $user->rol }}</td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <button
                                        onclick="window.location='{{ route('user.ver', ['idUser' => $user->id]) }}'"
                                        class="btn btn-primary">
                                        <img src="https://cdn-icons-png.flaticon.com/128/2874/2874802.png"
                                            alt="" height="20px"> Ver
                                    </button>

                                    <button
                                        onclick="window.location='{{ route('user.eliminar', ['idUser' => $user->id]) }}'"
                                        class="btn btn-danger">
                                        <img src="https://cdn-icons-png.flaticon.com/128/1828/1828939.png"
                                            alt="" height="20px"> Eliminar
                                    </button>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

        </div>

        <div class="col-2">
            @if ($users->total() > 10)
                {{ $users->links() }}
            @endif
        </div>
    </div>
</body>

@include('general.footer')
</html>
