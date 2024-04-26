<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Grupos</title>
    @include('general.estilos')
</head>

<body>

    @include('general.navbar')


    <div class="container">
        <div class="row">
            <center>
                <h1><strong>GRUPOS</strong></h1>
            </center>
        </div>

        <div class="row mb-3">
            <div class="col-md-6">
                <form action="{{ route('grupo.busqueda') }}" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control"
                            placeholder="Buscar grupo por " name="valorBusqueda">
                        <button class="btn" style="flex:0"
                            type="submit">Buscar</button>
                    </div>
                </form>
            </div>

            <div class="col-md-4">
            </div>

            <div class="col-md-2">
                <button onclick="window.location='{{ route('grupo.agregar') }}'"
                    class="btn btn-success">
                    <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
                    Agregar
                </button>
            </div>

        </div>

        <div class="row">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>COMPONENTE</th>
                        <th>SEMESTRE Y TURNO</th>
                        <th>HORAS DE ESTUDIO</th>
                        <th colspan="2">OPERACIONES</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($grupos as $grupo)
                        <tr>
                            <th scope="row"></th>
                            <td></td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <button
                                        onclick="window.location='{{ route('grupo.ver', ['idGrupo' => $grupo->id]) }}'"
                                        class="btn btn-primary">
                                        <img src="https://cdn-icons-png.flaticon.com/128/2874/2874802.png"
                                            alt="" height="20px"> Ver
                                    </button>
                                    <button
                                        onclick="window.location='{{ route('grupo.editar', ['idGrupo' => $grupo->id]) }}'"
                                        class="btn btn-warning">
                                        <img src="https://cdn-icons-png.flaticon.com/128/10337/10337163.png"
                                            alt="" height="20px"> Editar
                                    </button>
                                    <button
                                        onclick="window.location='{{ route('grupo.eliminar', ['idGrupo' => $grupo->id]) }}'"
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
            @if ($grupos->total() > 10)
                {{ $grupos->links() }}
            @endif
        </div>
    </div>
</body>

@include('general.footer')
</html>
