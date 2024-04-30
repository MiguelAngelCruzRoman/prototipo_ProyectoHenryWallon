<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ver Datos de los Usuarios</title>
    @include('general.estilos')
</head>

<body>

    @include('general.navbar')
    <div class="container">
        <div class="row">
            <center>
                <h1><strong>VER USUARIOS</strong></h1>
                <h3>- DATOS GENERALES -</h3>
            </center>
        </div>

        <div style="height: 50px;"></div>

        <div class="card card-style">
            <div class="card-body">
                <form action="" method="POST">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <center>
                                <img src="{{ $user[0]->foto }}" alt="" height="200px" width="400px"
                                    style="border: 4px solid #000000">
                            </center>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-7">
                            <label for="primerNombre" class="form-label">Primer nombre del usuario:</label>
                            <input type="text" class="form-control" id="primerNombre" name="primerNombre"
                                value="{{ $user[0]->primerNombre }}" readonly>
                        </div>

                        <div class="col-md-2">
                            <label for="segundoNombre" class="form-label">Segundo nombre del usuario:</label>
                            <input type="text" class="form-control" id="segundoNombre" name="segundoNombre"
                                value="{{ $user[0]->segundoNombre }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="apellidoPaterno" class="form-label">Apellido Paterno:</label>
                            <input type="text" class="form-control" id="apellidoPaterno" name="apellidoPaterno"
                                value="{{ $user[0]->apellidoPaterno }}" readonly>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="apellidoMaterno" class="form-label">apellido Materno:</label>
                            <input type="text" class="form-control" id="apellidoMaterno" name="apellidoMaterno"
                                value="{{ $user[0]->apellidoMaterno }}" readonly>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="email" class="form-label">Nombre de usuario:</label>
                            <input type="text" class="form-control" id="email" name="email"
                                value="{{ $user[0]->email }}" readonly>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <label for="password" class="form-label">Contraseña:</label>
                            <input type="text" class="form-control" id="password" name="password"
                                value="{{ $user[0]->password }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="correo" class="form-label">Correo:</label>
                            <input type="text" class="form-control" id="correo"
                                name="correo" value="{{ $user[0]->correo }}"
                                readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="rol" class="form-label">Rol:</label>
                            <input type="text" class="form-control" id="rol"
                                name="rol" value="{{ $user[0]->rol }}"
                                readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="estatus" class="form-label">Estado:</label>
                            <input type="text" class="form-control" id="estatus" name="estatus"
                                value="{{ $user[0]->estatus }}" readonly>
                        </div>
                    </div>

                </form>
            </div>
        </div>

        <div style="height: 30px;"></div>

        <div class="row">
            <div class="col-12">
                <center>
                    <button class="btn btn-primary me-2" onclick="goBack()"
                        style="background-color: #B3C9FF; border: 4px solid #000000;border-radius: 20px; color: black">
                        <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                            width="40px">
                        <strong>REGRESAR</strong>
                    </button>
                </center>
            </div>
        </div>
    </div>

    <div style="height: 50px;"></div>

</body>

@include('general.footer')
@include('general.scripts')

</html>
