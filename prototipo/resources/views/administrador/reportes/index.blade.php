<title>Reportes</title>
<style>
    table {
        border-collapse: separate;
        border-spacing: 0;
        border: 1px solid rgb(123, 117, 117);
        border-radius: 10px;
        overflow: hidden;
    }
    th, td {
        border: 1px solid rgb(123, 117, 117);
        padding: 8px;
    }
    thead{
        background-color: rgb(224, 223, 223);
    }
</style>
@extends('layouts.app')

@section('content')
    <div class="container mx-auto">
        <div class="row mb-3">
            <div class="col-md-2">
                <button class="btn" onclick="goBack()" style="background-color: #21182F;color: white">
                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar" width="20px"
                        style="filter: invert(100%);">
                    Regresar
                </button>
            </div>
            <div class="col-md-8">
                <h1 class="text-3xl font-bold my-8" style="color:black"><strong>REPORTES</strong></h1><br><br>
            </div>
        </div>

        <div class="row">
    <div class="col-md-12 relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left rtl:text-right rounded-2xl">
            <thead class="text-sm  uppercase">
                <tr>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Asignatura</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Semana</th>
                <th scope="col" class="px-6 py-3 text-center" style="color:black">Descargar PDF</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($asistencias->groupBy('nombreAsignatura') as $asignatura => $alumnos)
                            @php
                            
                                $semanas = $alumnos->groupBy(function($item) {
                                    return Carbon\Carbon::parse($item->fechaAsistenia)->startOfWeek()->format('Y-m-d');
                                });
                            @endphp

                            @foreach ($semanas as $semana => $asistenciasSemana)
                                <tr>
                                    <td>{{ $asignatura }}</td>
                                    <td>{{ Carbon\Carbon::parse($semana)->format('d/m/Y') }} - {{ Carbon\Carbon::parse($semana)->endOfWeek()->format('d/m/Y') }}</td>
                                    <td>
                                        <a href="{{ route('descargarPDF', ['asignatura' => $asignatura, 'semana' => $semana]) }}" class="btn btn-primary">Descargar PDF</a>
                                    </td>
                                </tr>
                            @endforeach
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
