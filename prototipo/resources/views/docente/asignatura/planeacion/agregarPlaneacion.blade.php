
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <title>Planeación</title>
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
<div class="container mt-5">
  <!-- Primera sección: Título centrado -->

  <div class="row" align="center">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                        <h1 style="color:black"><strong>PLANEACIÓN</strong></h1>
                </div>
            </div>


  <!-- Segunda sección: Botón "Agregar" alineado a la derecha -->
  <div class="row mt-4">
    <div class="col text-right">
      <a href="{{ route('docente.agregar.bloque', ['idAsignatura'=>$idAsignatura, 'idDocente'=> $idDocente]) }}" class="btn btn-success">                     <img src="https://cdn-icons-png.flaticon.com/128/4885/4885419.png" alt="" height="20px">
 Agregar</a>
    </div>
  </div>

  <!-- Tercera sección: Tabla -->
  <div class="row mt-4">
  @if (count($bloques)>0)
    <div class="col">
    <table class="w-full text-sm text-left rtl:text-right rounded-2xl">
            <thead class="text-sm  uppercase">
          <tr>
            <th scope="col" class="px-12 py-3 text-center" style="color:black">Bloque</th>
            <th scope="col" class="px-12 py-3 text-center" style="color:black">Proposito </th>
            <th scope="col" class="px-12 py-3 text-center" style="color:black">Componente </th>
            <th scope="col" class="px-12 py-3 text-center" style="color:black">Contenido Central </th>
            <th scope="col" class="px-12 py-3 text-center" style="color:black">Acción</th>
          </tr>
        </thead>
        <tbody>
          
          @foreach($bloques as $bloque)
          <tr>
            <td>{{ $bloque->nombre }}</td>
            <td>{{ $bloque->proposito}}</td>
            <td>{{ $bloque->componente}}</td>
            <td>{{ $bloque->contenidoCentral}}</td>
            <td>
              <a href="{{ route('docente.planeacion.ver') }}">
              <button class="btn btn-secondary">Ver Planeación</button>
              </a>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    @else 
<p>Agrega una planeación para poder ver sus bloques</p>
    @endif
  </div>
</div>

@endsection

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

