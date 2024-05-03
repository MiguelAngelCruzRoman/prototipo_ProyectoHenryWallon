@extends('layouts.app')
@section('content')
    <div class="tiles">
        <div class="row" style="margin-top:-20px; padding-bottom:-20px">
            <div class="col-lg-12">
                <div class="card border-primary mb-3">
                    <h4 class="card-header text-right text-danger">Identificador: {{ $user[0]->id }} </h4>
                    <div class="card-body">
                        <div class="form-group row">
                            <div class="col-lg-2 col-xl-2 text-center">
                                <img src="{{ $user[0]->foto }}" width="200" class="img-thumbnail" />
                            </div>
                            <div class="col-xs-10 col-sm-12 col-md-12 col-lg-10 col-xl-10">
                                <div class="form-group row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                        <label>Nombre: </label>
                                        <input type="text" class="form-control"
                                            value="{{ $user[0]->primerNombre }} {{ $user[0]->segundoNombre }} {{ $user[0]->apellidoPaterno }} {{ $user[0]->apellidoMaterno }}"
                                            readonly id="nombre" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-2">
                                        <label>Sexo: </label>
                                        <input type="text" class="form-control" value="{{ $user[0]->sexo }}" readonly
                                            id="sexo" />
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-3">
                                        <label>Rol: </label>
                                        <input type="text" class="form-control" value="{{ $user[0]->rol }}" readonly
                                            id="rol" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-5">
                                        <label>Contraseña: </label>
                                        <input type="password" class="form-control" value="{{ $user[0]->password }}" readonly
                                            id="password" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-3">
                                        <label>Usuario:</label>
                                        <input type="text" class="form-control" value="{{ $user[0]->email }}" readonly
                                            id="usuario" />
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-3">
                                        <label>Teléfono:</label>
                                        <input type="text" class="form-control" value="{{ $user[0]->telefono }}" readonly
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
        <div class="col-12">
            <center>
                <button class="btn btn-primary me-2" onclick="goBack()"
                    style="background-color: #B3C9FF; border: 4px solid #000000;border-radius: 20px; color: black">
                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar" width="40px">
                    <strong>REGRESAR</strong>
                </button>
            </center>
        </div>
    </div>
@endsection


