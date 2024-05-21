<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Asistencias</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .table-container {
            margin-bottom: 20px;
        }
        .chart-container {
            width: 100%;
            height: 400px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>Reporte de Asistencias</h1>

    @foreach($groupedAsistencias as $asignatura => $alumnos)
        <h2>Asignatura: {{ $asignatura }}</h2>
        @foreach($alumnos as $idAlumno => $asistencias)
            @php
                $nombreCompletoAlumno = $asistencias[0]->nombreAlumno . ' ' . $asistencias[0]->segundoNombreAlumno . ' ' . $asistencias[0]->apellitoPAlumno . ' ' . $asistencias[0]->apellidoMAlumno;
                $nombreCompletoDocente = $asistencias[0]->nombreDocente . ' ' . $asistencias[0]->segundoNombreDocente . ' ' . $asistencias[0]->apellidoPDocente . ' ' . $asistencias[0]->apellidoMDocente;
            @endphp
            <h3>Estudiante: {{ $nombreCompletoAlumno }}</h3>
            <p>Docente: {{ $nombreCompletoDocente }}</p>
            
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Fecha</th>
                            <th>Asistencia</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($asistencias as $asistencia)
                            <tr>
                                <td>{{ $asistencia->fechaAsistenia }}</td>
                                <td>{{ $asistencia->asistenciaAlumno }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div class="chart-container">
                @if(isset($chartImages[$idAlumno]))
                    <img src="{{ $chartImages[$idAlumno] }}" alt="Asistencia Chart">
                @endif
            </div>
        @endforeach
    @endforeach
</body>
</html>
