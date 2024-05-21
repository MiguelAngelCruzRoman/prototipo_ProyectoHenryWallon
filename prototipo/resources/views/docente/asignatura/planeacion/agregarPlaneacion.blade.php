<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Planeación</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <!-- Primera sección: Título centrado -->
  <div class="row">
    <div class="col text-center">
      <h1>Planeación</h1>
    </div>
  </div>

  <!-- Segunda sección: Botón "Agregar" alineado a la derecha -->
  <div class="row mt-4">
    <div class="col text-right">
      <a href="{{ route('docente.agregar.bloque', ['idAsignatura'=>$idAsignatura, 'idDocente'=> $idDocente]) }}" class="btn btn-primary">Agregar</a>
    </div>
  </div>

  <!-- Tercera sección: Tabla -->
  <div class="row mt-4">
    <div class="col">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Bloque</th>
            <th>Acción</th>
          </tr>
        </thead>
        <tbody>
          @foreach($bloques as $bloque)
          <tr>
            <td>{{ $bloque->nombre }}</td>
            <td>
              <button class="btn btn-secondary">Editar</button>
              <button class="btn btn-danger">Eliminar</button>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
