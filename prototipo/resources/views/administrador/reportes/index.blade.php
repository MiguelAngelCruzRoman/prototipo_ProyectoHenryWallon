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
        @php
            $chartIdAsistencias = 'chart-asistencias-';
            $chartIdFaltas = 'chart-faltas-';
        @endphp

        <div id="chartsContainer">
            @foreach ($asistencias->groupBy('nombreAsignatura') as $asignatura => $alumnos)
                <h2>Asignatura: {{ $asignatura }}</h2>

                <div class="row mb-4">
                    <div class="col-md-6">
                        <canvas id="{{ $chartIdAsistencias }}"></canvas>
                    </div>
                    <div class="col-md-6">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Estudiante</th>
                                    <th>Asistencias</th>
                                    <th>Faltas</th>
                                    <th>Retrasos</th>
                                    <th>Faltas Justificadas</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($alumnos->groupBy('idAlumno') as $idAlumno => $asistenciasAlumno)
                                    <tr>
                                        <td>{{ $asistenciasAlumno[0]->nombreAlumno }}
                                            {{ $asistenciasAlumno[0]->segundoNombreAlumno }}
                                            {{ $asistenciasAlumno[0]->apellitoPAlumno }}
                                            {{ $asistenciasAlumno[0]->apellidoMAlumno }}</td>
                                        <td>{{ $asistenciasAlumno->where('asistenciaAlumno', 'Asistencia')->count() }}</td>
                                        <td>{{ $asistenciasAlumno->where('asistenciaAlumno', 'Falta')->count() }}</td>
                                        <td>{{ $asistenciasAlumno->where('asistenciaAlumno', 'Retraso')->count() }}</td>
                                        <td>{{ $asistenciasAlumno->where('asistenciaAlumno', 'Justificante')->count() }}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>

                
            @endforeach
                <div class="col-md-6">
                    <canvas id="{{ $chartIdFaltas }}"></canvas>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            @foreach ($asistencias->groupBy('nombreAsignatura') as $asignatura => $alumnos)
                // Preparamos los contadores para las asistencias y las faltas
                var asistenciasCount = {
                    Asistencia: 0,
                    Falta: 0,
                    Retraso: 0,
                    Justificante: 0
                };

                // Contamos las asistencias por tipo
                @foreach ($alumnos as $asistencia)
                    asistenciasCount['{{ $asistencia->asistenciaAlumno }}']++;
                @endforeach

                // Configuración del gráfico de asistencias
                var ctxAsistencias = document.getElementById('{{ $chartIdAsistencias }}').getContext('2d');
                new Chart(ctxAsistencias, {
                    type: 'bar',
                    data: {
                        labels: Object.keys(asistenciasCount),
                        datasets: [{
                            label: 'Cantidad',
                            data: Object.values(asistenciasCount),
                            backgroundColor: 'rgba(75, 192, 192, 0.2)',
                            borderColor: 'rgba(75, 192, 192, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });

                // Preparamos los contadores para las faltas (solo consideramos Faltas, Retrasos y Justificantes)
                var faltasCount = {
                    Falta: 0,
                    Retraso: 0,
                    Justificante: 0
                };

                // Contamos las faltas por tipo
                @foreach ($alumnos as $asistencia)
                    if (['Falta', 'Retraso', 'Justificante'].includes('{{ $asistencia->asistenciaAlumno }}')) {
                        faltasCount['{{ $asistencia->asistenciaAlumno }}']++;
                    }
                @endforeach

                // Configuración del gráfico de faltas
                var ctxFaltas = document.getElementById('{{ $chartIdFaltas }}').getContext('2d');
                new Chart(ctxFaltas, {
                    type: 'bar',
                    data: {
                        labels: Object.keys(faltasCount),
                        datasets: [{
                            label: 'Cantidad',
                            data: Object.values(faltasCount),
                            backgroundColor: 'rgba(255, 99, 132, 0.2)',
                            borderColor: 'rgba(255, 99, 132, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });
            @endforeach
        });
    </script>
@endsection
