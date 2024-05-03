    <!--TITULO PARA LA PÁGINA-->
    <title>Periodos</title>
    <!--EXTENDEMOS PARA LOS ESTILOS-->
    @extends('layouts.app')
    @section('content')
        <div class="container mx-auto">
            <div class="text-center">
                <!--ENCABEZADO DE LA PÁGINA-->
                <h1 class="text-3xl font-bold my-8">PERIODOS</h1>
            </div>
            <div class="row mb-3">
                <div class="col-md-1"></div>
                <div class="col-md-5">
                    <!--SECCIÓN DE BÚSQUEDA-->
                    <form action="{{ route('periodo.busqueda') }}" method="GET">
                        <div class="input-group">
                            <label for="valorBusqueda" class="mr-2">Filtrar por:</label>
                            <select class="form-select flex-1 mr-2" name="valorBusqueda">
                                <option value="CicloEscolar">Ciclo Escolar</option>
                                <option value="Semanal">Semanal</option>
                                <option value="">Ver todo</option>
                            </select>
                            <button class="btn btn-primary" type="submit">Buscar</button>
                        </div>
                    </form>
                </div>
                <div class="col-md-3"></div>
                <div class="col-md-2">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#formularioModal">
                        <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
                        Agregar
                    </button>
                </div>
            </div>
            <!--se incluye el modal con formulario-->
            @include('administrador.periodo.partials.modals.agregar')
            <!--sección para mostrar los datos-->
            @include('administrador.periodo.partials.tablas.periodos')
            <!--paginación-->
            {{ $periodos->links() }}
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
