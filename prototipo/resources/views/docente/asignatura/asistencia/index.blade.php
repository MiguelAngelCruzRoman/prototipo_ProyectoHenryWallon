    <!--TITULO PARA LA PÁGINA-->
    <title>Asistencia</title>
    <!--EXTENDEMOS PARA LOS ESTILOS-->
    @extends('layouts.app')
    @section('content')
        <div class="container mx-auto">
            <div class="text-center">
                <!--ENCABEZADO DE LA PÁGINA-->
                <h1 class="text-3xl font-bold my-8">ASISTENCIA</h1>
                <h3 class="text-3xl font-bold my-8">- -</h3>
            </div>

@foreach($asistencias as $asistencia)
            {{print_r($asistencia)}}
@endforeach
        </div>
        
    @endsection
