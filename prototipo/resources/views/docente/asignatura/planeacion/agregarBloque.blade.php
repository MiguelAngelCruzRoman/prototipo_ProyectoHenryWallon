<!-- resources/views/docente/asignatura/planeacion/agregarBloque.blade.php -->

    <title>Agregar Bloque</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    @extends('layouts.app')

@section('content')
<div class="container mt-5">
<div class="text-center">
            <h1 class="text-3xl font-bold my-8" style="color:black"><strong>REGISTRAR PLANEACIÓN</strong></h1>
            <h4 class="text-3xl font-bold my-8" style="color:black">- Agregar bloque -</h4>      
</div><br>

    <form method="POST" action="{{ route('docente.guardar.bloque.temp',['idAsignatura'=>$idAsignatura, 'idDocente'=> $idDocente]) }}">
        @csrf
        <div class="form-group">
            <label for="numero">Número*:</label>
            <input type="number" class="form-control" id="numero" name="numero" required>
        </div>
        <div class="form-group">
            <label for="nombre">Nombre*:</label>
            <input type="text" class="form-control" id="nombre" name="nombre" required>
        </div>
        <div class="form-group">
            <label for="proposito">Propósito*:</label>
            <input type="text" class="form-control" id="proposito" name="proposito" required>
        </div>
        <div class="form-group">
            <label for="eje">Eje*:</label>
            <input type="text" class="form-control" id="eje" name="eje" required>
        </div>
        <div class="form-group">
            <label for="componente">Componente*:</label>
            <input type="text" class="form-control" id="componente" name="componente" required>
        </div>
        <div class="form-group">
            <label for="contenidoCentral">Contenido Central*:</label>
            <input type="text" class="form-control" id="contenidoCentral" name="contenidoCentral" required>
        </div>
        <div class="form-group">
            <label for="productoIntegrador">Producto Integrador*:</label>
            <input type="text" class="form-control" id="productoIntegrador" name="productoIntegrador" required>
        </div>

        <button type="submit" class="btn" style="background-color:#21182F;color: white"><strong>SIGUIENTE</strong> <img src="https://cdn-icons-png.freepik.com/512/20/20927.png" alt="flechaRegresar"
                            width="40px" style="    filter: invert(100%);"></button>
    </form>
</div>

@endsection
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

