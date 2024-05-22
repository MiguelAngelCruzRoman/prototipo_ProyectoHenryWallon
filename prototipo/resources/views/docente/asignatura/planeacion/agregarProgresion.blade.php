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

  <title>Tabla de Progresiones</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  @extends('layouts.app')

@section('content')
<div class="container mt-5">
  <div class="row">
    <div class="col text-right">
      <a href="{{ route('docente.finalizar') }}" class="btn" style="background-color: #21182F;color: white">Finalizar</a>
    </div>
  </div>

  <div class="text-center">
  <h1 class="text-3xl font-bold my-8" style="color:black"><strong>REGISTRAR PLANEACIÓN</strong></h1>
            <h4 class="text-3xl font-bold my-8" style="color:black">- Progresiones -</h4>            </div>
<br>
        <table class="w-full border-collapse border border-gray-400">
    <thead>
      <tr>
        <th scope="col" class="px-6 py-3 text-center" style="color:black">ID</th>
        <th scope="col" class="px-6 py-3 text-center" style="color:black">Tipo</th>
        <th scope="col" class="px-6 py-3 text-center" style="color:black">Inicio</th>
        <th scope="col" class="px-6 py-3 text-center" style="color:black">Fin</th>
        <th scope="col" class="px-6 py-3 text-center" style="color:black">Agregar</th>
      </tr>
    </thead>
    <tbody>
      @foreach($periodos as $periodo)
      <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $periodo->id }}</td>
        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $periodo->tipo }}</td>
        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $periodo->fechaInicio }}</td>
        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $periodo->fechaFin }}</td>
        <td scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white"><button class="btn btn-success" data-toggle="modal" data-target="#addModal" data-id="{{ $periodo->id }}">                     <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
Agregar</button></td>
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
        <h5>-Datos generales-</h5>

          <input type="hidden" name="id_periodo" id="id_periodo">
          <div class="form-group">
            <label for="tema">Tema*:</label>
            <input type="text" class="form-control" id="tema" name="tema" required>
          </div>
          <div class="form-group">
            <label for="aprendizajeEsperado">Aprendizaje Esperado*: </label>
            <input type="text" class="form-control" id="aprendizajeEsperado" name="aprendizajeEsperado" required>
          </div>
          <div class="form-group">
            <label for="materiales">Materiales*:</label>
            <input type="text" class="form-control" id="materiales" name="materiales" required>
          </div>
          <br><br>
          <div class="form-group">
            <h5>-Agregar Evaluación-</h5>
          </div>
          <div class="form-group">
            <label for="actividadAprendizaje">Actividad de Aprendizaje*:</label>
            <input type="text" class="form-control" id="actividadAprendizaje" name="actividadAprendizaje" required>
          </div>
          <div class="form-group">
            <label for="tipoEvaluacion">Tipo de Evaluación*: </label>
            <select class="form-control" id="tipoEvaluacion" name="tipoEvaluacion" required>
              <option value="Rúbrica">Rúbrica</option>
              <option value="Lista de cotejo">Lista de cotejo</option>
              <option value="Guía de observación">Guía de observación</option>
            </select>
          </div>
        </div>
      

        <div class="flex justify-end">

                                <button class="btn" data-dismiss="modal"
                                    style="background-color: #21182F;color: white">
                                    <img src="https://cdn-icons-png.flaticon.com/128/8591/8591477.png" alt="flechaRegresar"
                                        width="20px" style="filter: invert(100%);">
                                    Regresar
                                </button>
                                <button type="submit" class="btn btn-success">
                                    <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt=""
                                        height="20px">
                                    Registrar
                            </div>
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

@endsection