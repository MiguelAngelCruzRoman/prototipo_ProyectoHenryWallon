@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <center>
                <h1><strong>EDITAR USUARIO</strong></h1>
            </center>
        </div>

        <div style="height: 30px;"></div>

        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-style">

                    <div class="card-body">
                        <form method="POST" action="{{ route('user.actualizar', $user->id) }}" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')

                            <div class="row mb-3">
                                <label for="email"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Nombre de usuario:') }}</label>

                                <div class="col-md-6">
                                    <input id="email" type="text"
                                        class="form-control @error('email') is-invalid @enderror" name="email"
                                        value="{{ $user->email }}" required autocomplete="email" autofocus>

                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="correo"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Correo de recuperación (opcional):') }}</label>

                                <div class="col-md-6">
                                    <input id="correo" type="email"
                                        class="form-control @error('correo') is-invalid @enderror" name="correo"
                                        value="{{ $user->correo }}" autocomplete="correo">

                                    @error('correo')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="password"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Contraseña:') }}</label>

                                <div class="col-md-6">
                                    <input id="password" type="password"
                                        class="form-control @error('password') is-invalid @enderror" name="password"
                                        autocomplete="new-password">

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="password-confirm"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Confirmar Contraseña:') }}</label>

                                <div class="col-md-6">
                                    <input id="password-confirm" type="password" class="form-control"
                                        name="password_confirmation" autocomplete="new-password">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="primerNombre"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Primer nombre:') }}</label>

                                <div class="col-md-6">
                                    <input id="primerNombre" type="text"
                                        class="form-control @error('primerNombre') is-invalid @enderror" name="primerNombre"
                                        value="{{ $user->primerNombre }}" required autocomplete="primerNombre">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="segundoNombre"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Segundo nombre:') }}</label>

                                <div class="col-md-6">
                                    <input id="segundoNombre" type="text"
                                        class="form-control @error('segundoNombre') is-invalid @enderror"
                                        name="segundoNombre" value="{{ $user->segundoNombre }}"
                                        autocomplete="segundoNombre">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="apellidoPaterno"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Apellido paterno:') }}</label>

                                <div class="col-md-6">
                                    <input id="apellidoPaterno" type="text"
                                        class="form-control @error('apellidoPaterno') is-invalid @enderror"
                                        name="apellidoPaterno" value="{{ $user->apellidoPaterno }}" required
                                        autocomplete="apellidoPaterno">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="apellidoMaterno"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Apellido materno:') }}</label>

                                <div class="col-md-6">
                                    <input id="apellidoMaterno" type="text"
                                        class="form-control @error('apellidoMaterno') is-invalid @enderror"
                                        name="apellidoMaterno" value="{{ $user->apellidoMaterno }}"
                                        autocomplete="apellidoMaterno">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="rol"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Rol: ') }}</label>
                                <div class="col-md-6">
                                    <select id="rol" class="form-select @error('rol') is-invalid @enderror"
                                        name="rol" required autocomplete="rol">
                                        <option value="Administrador"
                                            {{ $user->rol == 'Administrador' ? 'selected' : '' }}>Administrador</option>
                                        <option value="Alumno" {{ $user->rol == 'Alumno' ? 'selected' : '' }}>Alumno
                                        </option>
                                        <option value="Docente" {{ $user->rol == 'Docente' ? 'selected' : '' }}>Docente
                                        </option>
                                        <option value="Tutor" {{ $user->rol == 'Tutor' ? 'selected' : '' }}>Tutor
                                        </option>
                                    </select>
                                    @error('rol')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="foto"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Foto:') }}</label>

                                <div class="col-md-6">
                                    <input id="foto" type="text"
                                        class="form-control @error('foto') is-invalid @enderror" name="foto">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="estatus"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Estatus: ') }}</label>
                                <div class="col-md-6">
                                    <select id="estatus" class="form-select @error('estatus') is-invalid @enderror"
                                        name="estatus" required autocomplete="estatus">
                                        <option value="true" {{ $user->estatus == 'true' ? 'selected' : '' }}>Activo
                                        </option>
                                        <option value="false" {{ $user->estatus == 'false' ? 'selected' : '' }}>Inactivo
                                        </option>
                                    </select>
                                    @error('estatus')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="sexo"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Sexo:') }}</label>
                                <div class="col-md-6">
                                    <select id="sexo" class="form-select @error('sexo') is-invalid @enderror"
                                        name="sexo" required autocomplete="sexo">
                                        <option value="Hombre" {{ $user->sexo == 'Hombre' ? 'selected' : '' }}>Hombre
                                        </option>
                                        <option value="Mujer" {{ $user->sexo == 'Mujer' ? 'selected' : '' }}>Mujer
                                        </option>
                                    </select>
                                    @error('sexo')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="telefono"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Teléfono:') }}</label>

                                <div class="col-md-6">
                                    <input id="telefono" type="number"
                                        class="form-control @error('telefono') is-invalid @enderror" name="telefono"
                                        value="{{ $user->telefono }}" required autocomplete="telefono">
                                </div>
                            </div>

                            <div class="row mb-0">
                                <div class="col-md-6 offset-md-3">
                                    <button class="btn btn-primary" onclick="goBack()"
                                        style="background-color: #21182F;color: white">
                                        <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png"
                                            alt="flechaRegresar" width="20px" style="filter: invert(100%);">
                                        Regresar
                                    </button>
                                    <button type="submit" class="btn btn-warning">
                                        <img src="https://cdn-icons-png.flaticon.com/128/376/376218.png" alt=""
                                            width="20px">
                                        {{ __('Actualizar') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
