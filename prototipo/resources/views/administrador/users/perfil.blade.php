@extends('layouts.app')
@section('content')
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif


    <div class="row">
        <center>
            <h1><strong>VER PERFIL</strong></h1>
            <h3><strong>- ADMINISTRADOR -</strong></h3>
        </center>
    </div>

    <div class="tiles">
        <div class="row" style="margin-top:20px; padding-bottom:-20px">
            <div class="col-lg-1">
            </div>

            <div class="col-lg-10">
                <div class="card border-primary mb-3">
                    <h4 class="card-header text-right text-danger">Identificador: {{ $user->id }} </h4>
                    <div class="card-body">
                        <div class="form-group row">
                            <div class="col-lg-2 col-xl-2 text-center">
                                <img src="{{ $user->foto }}" width="200" class="img-thumbnail" />
                            </div>
                            <div class="col-xs-10 col-sm-12 col-md-12 col-lg-10 col-xl-10">
                                <div class="form-group row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                        <label>Nombre: </label>
                                        <input type="text" class="form-control"
                                            value="{{ $user->primerNombre }} {{ $user->segundoNombre }} {{ $user->apellidoPaterno }} {{ $user->apellidoMaterno }}"
                                            readonly id="nombre" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-2">
                                        <label>Sexo: </label>
                                        <input type="text" class="form-control" value="{{ $user->sexo }}" readonly
                                            id="sexo" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-3">
                                        <label>Rol: </label>
                                        <input type="text" class="form-control" value="{{ $user->rol }}" readonly
                                            id="rol" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-5">
                                        <label>Contraseña: </label>
                                        <input type="password" class="form-control" value="{{ $user->password }}" readonly
                                            id="password" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-3">
                                        <label>Usuario:</label>
                                        <input type="text" class="form-control" value="{{ $user->email }}" readonly
                                            id="usuario" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-3">
                                        <label>Teléfono:</label>
                                        <input type="text" class="form-control" value="{{ $user->telefono }}" readonly
                                            id="telefono" />
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="height: 30px;"></div>

    <div class="row">
        <div class="col-6">
            <center>
                <button class="btn btn-primary me-2" onclick="goBack()"
                    style="background-color: #21182F; border: 4px solid #000000;border-radius: 20px; color: white">
                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar" width="20px" style="filter: invert(100%);">
                    Regresar
                </button>
            </center>
        </div>
        <div class="col-6">
            <center>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                    data-bs-target="#cambiarContrasenaModal"
                    style="background-color: #21182F; border: 4px solid #000000;border-radius: 20px; color: white">
                   Cambiar contraseña
                    <img src="https://cdn-icons-png.flaticon.com/128/4692/4692344.png" alt="cambiarContraseña"
                        width="20px" style="filter: invert(100%);">
                </button>
            </center>
        </div>
    </div>

    <div class="modal fade" id="cambiarContrasenaModal" tabindex="-1" aria-labelledby="cambiarContrasenaModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cambiarContrasenaModalLabel">CAMBIAR CONTRASEÑA</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    @include('auth.passwords.reset')
                </div>
            </div>
        </div>
    </div>
@endsection
