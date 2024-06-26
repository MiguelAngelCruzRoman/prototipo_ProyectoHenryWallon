<title>Usuarios</title>

@extends('layouts.app')

@section('content')
    <div class="container mx-auto">
        <div class="text-center">
            <h1 class="text-3xl font-bold my-8" style="color: black" ><strong>USUARIOS</strong></h1>
        </div>

        <div class="row mb-3">
            <div class="col-md-2">
                <button class="btn" onclick="goBack()" style="background-color: #21182F;color: white">
                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar" width="20px"
                        style="filter: invert(100%);">
                    Regresar
                </button>
            </div>

            <div class="col-md-1">
            </div>

            <div class="col-md-6">
                <form action="{{ route('user.busqueda') }}" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control flex-1 mr-2"
                            placeholder="Buscar usuario por nombre, rol, usuario o correo" name="valorBusqueda">
                        <button class="btn btn-primary" type="submit">Buscar</button>
                    </div>
                </form>
            </div>

            <div class="col-md-1">
            </div>

            <div class="col-md-2">
                <a href="{{ route('register') }}" class="btn btn-success" >
                    <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
                    Registrar
                </a>
            </div>

        </div>

        <div style="display: inline-block"> {{ $users->links() }}
        </div>

        <!--sección para mostrar los datos-->
        @if (count($users) == 0)
            <div class="col-xl-8 text-center">


                <div
                    class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                    <a href="#">
                        <img class="rounded-t-lg" src="https://grupoleiros.com/static/product-not-found.png"
                            alt="" />
                    </a>

                </div>


            </div>
        @else
            @include('administrador.users.partials.tablas.users')
        @endif
<br>    
        <div style="display: inline-block"> {{ $users->links() }}
        </div>
    </div>
    <!--se incluye modal para confirmación de eliminar-->
    @include('administrador.users.partials.modals.eliminar')
@endsection

<!--scripts para modales-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/js/bootstrap.min.js"></script>

<!--script para alerta y envio de datos-->
@include('administrador.users.partials.script.users')
