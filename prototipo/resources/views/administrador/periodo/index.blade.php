    <!--TITULO PARA LA PÁGINA-->
    <title>Periodos</title>
    <!--EXTENDEMOS PARA LOS ESTILOS-->
    @extends('layouts.app')
    @section('content')
        <div class="container mx-auto">

            <div class="text-center">
                <!--ENCABEZADO DE LA PÁGINA-->
                <h1 class="text-3xl font-bold my-8" style="color:black"><strong>PERIODOS</strong></h1><br><br>
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
                    <!--SECCIÓN DE BÚSQUEDA-->
                    <form action="{{ route('periodo.busqueda') }}" method="GET" required>
                        <div class="input-group">
                            <label for="valorBusqueda" class="mr-2">Filtrar por:</label>
                            <select  name="valorBusqueda" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-5 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
                                <option value="CicloEscolar">Ciclo Escolar</option>
                                <option value="Semanal">Semanal</option>
                                <option value="">Ver todo</option>
                            </select>
                            <button class="btn btn-primary" type="submit">Buscar</button>
                        </div>
                    </form>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-2">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#formularioModal">
                        <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
                        Registrar
                    </button>
                </div>
            </div><br>
            <!--se incluye el modal con formulario-->
            @include('administrador.periodo.partials.modals.agregar')


            <div style="display: inline-block">
                {{ $periodos->links() }}
            </div>
            @if (count($periodos) == 0)
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
                <!--sección para mostrar los datos-->
                @include('administrador.periodo.partials.tablas.periodos')
                <br>
                <!--paginación-->
                <div style="display: inline-block">
                    {{ $periodos->links() }}
                </div>
            @endif
        </div>
        <!--se incluye modal para confirmación de eliminar-->
        @include('administrador.periodo.partials.modals.eliminar')
    @endsection
    <!--scripts para modales-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/js/bootstrap.min.js"></script>
    <!--script para alerta y envio de datos-->
    @include('administrador.periodo.partials.script.periodo')
