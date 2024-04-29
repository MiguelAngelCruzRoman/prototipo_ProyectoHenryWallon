<title>Ver Perfil</title>

@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <center>
                <h1><strong>PERFIL DEL ADMINISTRADOR</strong></h1>
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
                                <img src="{{ $user->foto }}" alt="" height="200px" width="400px"
                                    style="border: 4px solid #000000">
                            </center>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-3">
                            <label for="primerNombre" class="form-label">Primer nombre:</label>
                            <input type="text" class="form-control" id="primerNombre" name="primerNombre"
                                value="{{ $user->primerNombre }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="segundoNombre" class="form-label">Segundo nombre:</label>
                            <input type="text" class="form-control" id="segundoNombre" name="segundoNombre"
                                value="{{ $user->segundoNombre }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="apellidoPaterno" class="form-label">Apellido paterno:</label>
                            <input type="text" class="form-control" id="apellidoPaterno" name="apellidoPaterno"
                                value="{{ $user->apellidoPaterno }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="apellidoMaterno" class="form-label">Apellido materno:</label>
                            <input type="text" class="form-control" id="apellidoMaterno" name="apellidoMaterno"
                                value="{{ $user->apellidoPaterno }}" readonly>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-3">
                            <label for="email" class="form-label">Nombre de usuario:</label>
                            <input type="text" class="form-control" id="email" name="email"
                                value="{{ $user->email }}" readonly>
                        </div>

                        <div class="col-md-3">
                            <label for="password" class="form-label">Contraseña:</label>
                            <input type="text" class="form-control" id="password" name="password"
                                value="{{ $user->password }}" readonly>
                        </div>

                        <div class="col-md-6">
                            <label for="correo" class="form-label">Correo de contacto:</label>
                            <input type="text" class="form-control" id="correo" name="correo"
                                value="{{ $user->correo }}" readonly>
                        </div>
                    </div>

                    <div class="row mb-3">

                        <div class="col-md-4">
                            <label for="rol" class="form-label">Rol:</label>
                            <input type="text" class="form-control" id="rol" name="rol"
                                value="{{ $user->rol }}" readonly>
                        </div>

                        <div class="col-md-4">
                            <label for="sexo" class="form-label">Sexo:</label>
                            <input type="text" class="form-control" id="sexo" name="sexo"
                                value="{{ $user->sexo }}" readonly>
                        </div>

                        <div class="col-md-4">
                            <label for="telefono" class="form-label">Teléfono:</label>
                            <input type="text" class="form-control" id="telefono" name="telefono"
                                value="{{ $user->telefono }}" readonly>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="foto" class="form-label">Foto:</label>
                            <input type="text" class="form-control" id="foto" name="foto"
                                value="{{ $user->foto }}" readonly>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div style="height: 30px;"></div>

        <div class="row">
            <div class="col-6">
                <center>
                    <button class="btn btn-primary me-2" onclick="goBack()"
                        style="background-color: #B3C9FF; border: 4px solid #000000;border-radius: 20px; color: black">
                        <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                            width="40px">
                        <strong>REGRESAR</strong>
                    </button>
                </center>
            </div>
            <div class="col-6">
                <center>
                    <button type="button" class="btn btn-primary" onclick="window.location='{{ route('password.reset', ['token' => $token]) }}'"
                        style="background-color: #B3C9FF; border: 4px solid #000000;border-radius: 20px; color: black">
                        <strong>CAMBIAR CONTRASEÑA</strong>
                        <img src="https://cdn-icons-png.flaticon.com/128/4692/4692344.png" alt="cambiarContraseña"
                            width="40px">
                    </button>
                </center>
            </div>
        </div>
    </div>
@endsection
