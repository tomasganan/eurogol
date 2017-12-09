@extends('layout')

<title>Jugadores - EuroGol</title>

@section('banner')
  <img src="images/jugadores.png">
@stop

@section('contenido')
<section>
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <br>
     <!--  <div class="alert alert-info" role="alert">
        <strong>Grupo A</strong>
      </div> -->
        @isset($jugadores)
          <table class="table table-hover">
            <thead class="thead-dark">
              <tr>
                  <th>ID Jugadores</th>
                  <th>Equipo</th>
                  <th>Jugadores</th>
                  <th>Posicion</th>
                  <th>Fecha de nacimiento</th>
                  <th>Nacionalidad</th>
                  <th>Contrato vigente</th>
              </tr>
            </thead>

              @foreach ($jugadores as $jug)
                <tr>
                  <td>{{ $jug -> idPlayer }}</td>
                  <td>{{ $jug -> equipoId }}</td>
                  <td>{{ $jug -> name }}</td>
                  <td>{{ $jug -> position }}</td>
                  <td>{{ $jug ->  dateOfBirth }}</td>
                  <td>{{ $jug -> nationality }}</td>                 
                  <td>@if($jug->contractUntil =='null'){A definir}@else{{$jug->contractUntil}}@endif</td>
                </tr>
              @endforeach
          </table>
        @endisset

      </div>
    </div>
  </div>
</section>
@stop
