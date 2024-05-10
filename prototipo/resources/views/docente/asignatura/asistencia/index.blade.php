    <!--TITULO PARA LA PÁGINA-->
    <title>Asistencia</title>
    <!--EXTENDEMOS PARA LOS ESTILOS-->
    @extends('layouts.app')
    @section('content')
        <div class="container mx-auto">
            <div class="text-center">
                <!--ENCABEZADO DE LA PÁGINA-->
                <h1 class="text-3xl font-bold my-8">ASISTENCIA</h1>
                <h3 class="text-3xl font-bold my-8">- {{$nombreAsignatura}} -</h3>
            </div>

            <div class="row mb-3">
            </div>

            <div class="row mb-3">
                <p>Puedes buscar una asistencia en una fecha en particular o ver todas las asistencias registradas</p>

                <div class="col-md-1"></div>
                <div class="col-md-5">
                    <form action="{{ route('grupo.busqueda') }}" method="GET">
                        <div class="input-group">
                            <input type="date" class="form-control flex-1 mr-2"
                                 name="valorBusqueda">
                            <button class="btn btn-primary" type="submit">Buscar</button>
                        </div>
                    </form>
                </div>
    
                <div class="col-md-3">
                </div>
    
                <div class="col-md-2">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#formularioModal">
                        <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
                        Agregar
                    </button>
                </div>
            </div>

             <!--sección para mostrar los datos-->
             @include('docente.asignatura.asistencia.partials.tablas.asistencia')
        </div>
    @endsection
