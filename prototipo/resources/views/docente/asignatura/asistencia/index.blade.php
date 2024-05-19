    <!--TITULO PARA LA PÁGINA-->
    <title>Asistencia</title>
    <!--EXTENDEMOS PARA LOS ESTILOS-->
    @extends('layouts.app')
    @section('content')
        <div class="container mx-auto">
            <div class="text-center">
                <!--ENCABEZADO DE LA PÁGINA-->
                <h1 class="text-3xl font-bold my-8">ASISTENCIA DEL DÍA {{date('d-m-Y')}}</h1>
                <h3 class="text-3xl font-bold my-8">- {{ $nombreAsignatura }} -</h3>
            </div>

            <div class="row mb-3">
            </div>

            <div class="row mb-3">

                <div class="col-md-10"></div>

                <div class="col-md-2">
                    <button onclick="window.location='{{ route('docente.asignatura.asistencia.historial', ['idAsignatura' => $idAsignatura, 'idDocente' => $idDocente,'nombreAsignatura' => $nombreAsignatura]) }}'"
                        class="btn btn-primary mr-2">
                        <i class=" fas fa-eye" style="color:black"> Historial</i>
                    </button>
                </div>
            </div>

            <p>Marca "A" para "Asistencia", "R" para "Retardo", "J" para "Justificado", "F" para "Falta"</p>
            <!--sección para mostrar los datos-->
            @include('docente.asignatura.asistencia.partials.tablas.asistencia')
        </div>
    @endsection
