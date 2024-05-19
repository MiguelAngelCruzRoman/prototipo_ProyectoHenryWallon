@extends('layouts.app')

@section('content')
    <div class="container">

        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <center>
                    <h1><strong>RECUPERAR CONTRASEÑA</strong></h1>
                </center>
            </div>
        </div>
        <p>Ingrese un correo para enviarle su contraseña</p>
        <p>(solo aplica si tienes un correo agregago en tu perfil)</p>

        <div style="height: 30px;"></div>

        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-style">

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        <form method="POST" action="{{ route('password.email') }}">
                            @csrf

                            <div class="mb-3 row">
                                <label for="email"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Dirección de correo') }}</label>

                                <div class="col-md-6">
                                    <input id="email" type="email"
                                        class="form-control @error('email') is-invalid @enderror" name="email"
                                        value="{{ old('email') }}" required autocomplete="email" autofocus>

                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="button" class="btn" onclick="goBack()"
                                        style="background-color: #21182F;color: white">
                                        <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png"
                                            alt="flechaRegresar" width="20px" style="filter: invert(100%);">
                                        Regresar
                                    </button>
                                    <button type="submit" class="btn "
                                        style="background-color: #21182F;color: white">
                                        <img src="https://cdn.icon-icons.com/icons2/1806/PNG/512/iconfinder-contat-us-19sending-4211847_115047.png"
                                            alt="enviarCorreo" width="20px" style="filter: invert(100%);">
                                        {{ __('Enviar correo') }}
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
