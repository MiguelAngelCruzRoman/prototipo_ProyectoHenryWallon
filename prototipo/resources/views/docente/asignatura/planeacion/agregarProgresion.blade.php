<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tabla de Progresiones</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <div class="row">
    <div class="col text-right">
      <a href="{{ route('docente.finalizar') }}" class="btn btn-success">Finalizar</a>
    </div>
  </div>
  <h1>Progresiones</h1>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Tipo</th>
        <th>Inicio</th>
        <th>Fin</th>
        <th>Agregar</th>
      </tr>
    </thead>
    <tbody>
      @foreach($periodos as $periodo)
      <tr>
        <td>{{ $periodo->id }}</td>
        <td>{{ $periodo->tipo }}</td>
        <td>{{ $periodo->fechaInicio }}</td>
        <td>{{ $periodo->fechaFin }}</td>
        <td><button class="btn btn-primary" data-toggle="modal" data-target="#addModal" data-id="{{ $periodo->id }}">Agregar</button></td>
      </tr>
      @endforeach
    </tbody>
  </table>
  {{ $periodos->links() }}
</div>

<!-- Modal -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form id="addForm" method="POST" action="{{ route('docente.guardar.progresion.temp') }}">
        @csrf
        <div class="modal-header">
          <h5 class="modal-title" id="addModalLabel">Agregar Progresión</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <input type="hidden" name="id_periodo" id="id_periodo">
          <div class="form-group">
            <label for="tema">Tema</label>
            <input type="text" class="form-control" id="tema" name="tema" required>
          </div>
          <div class="form-group">
            <label for="aprendizajeEsperado">Aprendizaje Esperado</label>
            <input type="text" class="form-control" id="aprendizajeEsperado" name="aprendizajeEsperado" required>
          </div>
          <div class="form-group">
            <label for="materiales">Materiales</label>
            <input type="text" class="form-control" id="materiales" name="materiales" required>
          </div>
          <div class="form-group">
            <h5>Agregar Evaluación</h5>
          </div>
          <div class="form-group">
            <label for="actividadAprendizaje">Actividad de Aprendizaje</label>
            <input type="text" class="form-control" id="actividadAprendizaje" name="actividadAprendizaje" required>
          </div>
          <div class="form-group">
            <label for="tipoEvaluacion">Tipo de Evaluación</label>
            <select class="form-control" id="tipoEvaluacion" name="tipoEvaluacion" required>
              <option value="Rúbrica">Rúbrica</option>
              <option value="Lista de cotejo">Lista de cotejo</option>
              <option value="Guía de observación">Guía de observación</option>
            </select>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
          <button type="submit" class="btn btn-primary">Guardar</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
  $('#addModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var id = button.data('id');
    var modal = $(this);
    modal.find('#id_periodo').val(id);
  });
</script>
</body>
</html>
