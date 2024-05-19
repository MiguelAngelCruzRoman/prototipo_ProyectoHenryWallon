    <!--TITULO PARA LA PÁGINA-->
    <title>Asistencia</title>
    <!--EXTENDEMOS PARA LOS ESTILOS-->
    @extends('layouts.app')
    @section('content')
        <div class="container mx-auto">
            <div class="text-center">
                <!--ENCABEZADO DE LA PÁGINA-->
                <h1 class="text-3xl font-bold my-8">HISTORIAL DE ASISTENCIAS</h1>
                <h3 class="text-3xl font-bold my-8">- {{ $nombreAsignatura }} -</h3>
            </div>

            <div class="row mb-3">
            </div>


            <p>Nota: "A" es para "Asistencia", "R" para "Retardo", "J" para "Justificado", "F" para "Falta"</p>
            <!--sección para mostrar los datos-->
            @include('docente.asignatura.asistencia.partials.tablas.registros')
        </div>
    @endsection
