<!-- resources/views/docente/asignatura/planeacion/agregarBloque.blade.php -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Bloque</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1>Agregar Bloque</h1>
    <form method="POST" action="{{ route('docente.guardar.bloque.temp',['idAsignatura'=>$idAsignatura, 'idDocente'=> $idDocente]) }}">
        @csrf
        <div class="form-group">
            <label for="numero">Número</label>
            <input type="number" class="form-control" id="numero" name="numero" required>
        </div>
        <div class="form-group">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" required>
        </div>
        <div class="form-group">
            <label for="proposito">Propósito</label>
            <input type="text" class="form-control" id="proposito" name="proposito" required>
        </div>
        <div class="form-group">
            <label for="eje">Eje</label>
            <input type="text" class="form-control" id="eje" name="eje" required>
        </div>
        <div class="form-group">
            <label for="componente">Componente</label>
            <input type="text" class="form-control" id="componente" name="componente" required>
        </div>
        <div class="form-group">
            <label for="contenidoCentral">Contenido Central</label>
            <input type="text" class="form-control" id="contenidoCentral" name="contenidoCentral" required>
        </div>
        <div class="form-group">
            <label for="productoIntegrador">Producto Integrador</label>
            <input type="text" class="form-control" id="productoIntegrador" name="productoIntegrador" required>
        </div>
        <button type="submit" class="btn btn-primary">Siguiente</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
