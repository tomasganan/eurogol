@extends('layout')

<title>Equipos - EuroGol</title>

@section('banner')
  <img src="images/equipos.png">
@stop

@section('contenido')
<section>
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <br>
        @isset($equipos)
          <table class="table table-hover">
            <thead class="thead-dark">
              <tr>
                <th>ID Equipo</th>
                <th>Nombre</th>
                <th>Estadisticas</th>
                <th>Siglas</th>
                <th>Short Name</th>
              </tr>
            </thead>
              @foreach ($equipos as $eq)
                <tr>
                  <td>{{ $eq -> idEquipo }}</td>
                  <td>{{ $eq -> name }}</td>
                  <td><a href="{{ route('equipos.show', $eq -> idEquipo) }}">Ir</a></td>
                  <td>{{ $eq -> code }}</td>
                  <td>{{ $eq -> shortName }}</td>
                </tr>
              @endforeach
          </table>
        @endisset

        <!-- Estadistica especifica -->

        @isset($equipo)
          @section('banner')
            <img src="images/estadistica.png">
          @stop
          <h4 align="center"> Estadistica Especifica </h4>
          <table class="table table-hover">
            <thead class="thead-dark">
              <tr>
                <th>ID</th>
                <th>Grupo</th>
                <th>Equipo ID</th>
                <th>Goles</th>
                <th>Goles a favor</th>
                <th>Diferencia de goles</th>
              </tr>
            </thead>
              @foreach ($equipo as $eq)
                <tr>
                  <td>{{ $eq -> idTable }}</td>
                  <td>{{ $eq -> Group }}</td>
                  <td>{{ $eq -> teamId }}</td>
                  <td>{{ $eq -> goals }}</td>
                  <td>{{ $eq -> goalsAgainst }}</td>
                  <td>{{ $eq -> goalDifference  }}</td>
                </tr>
              @endforeach
          </table>
        @endisset
      </div>
    </div>
  </div>
</section>
@stop
