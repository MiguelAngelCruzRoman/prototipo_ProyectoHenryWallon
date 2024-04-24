<!DOCTYPE html>
<html>
<head>
    <title>Periodos</title>
</head>
<body>

<h1>Periodos</h1>

<table border="1">
    <thead>
        <tr>
            <th>Nombre del Periodo</th>
            <th>Fecha de Inicio</th>
            <th>Fecha de Fin</th>
        </tr>
    </thead>
    <tbody>
        @foreach($periodos as $periodo)
        <tr>
            <td>{{ $periodo->tipo }}</td>
            <td>{{ $periodo->fechaInicio }}</td>
            <td>{{ $periodo->fechaFin }}</td>
        </tr>
        @endforeach
    </tbody>
</table>

</body>
</html>
