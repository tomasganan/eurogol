@extends('layout')

<title>Fixture - EuroGol</title>

@section('banner')
  <img src="images/fixture.png">
@stop

@section('contenido')
<section>
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <br>
        @isset($fixture)
          <table class="table table-hover">
            <thead class="thead-dark">
              <tr>
                  <th>ID Fix</th>
                  <th>Date</th>
                  <th>Status</th>
                  <th>Match Day</th>
                  <th>ID equipo local</th>
                  <th>ID equipo visitante</th>
                  <th>Resultado</th>
              </tr>
            </thead>
              @foreach ($fixture as $fix)
                <tr>
                  <td>{{ $fix -> idFix }}</td>
                  <td>{{ $fix -> date }}</td>
                  <td>@if($fix->status =='FINISHED'){FINALZADO}@elseif($fix->status =='SCHEDULED'){NO DISPUTADO}@endif</td>
                  <td>{{ $fix -> matchday }}</td>
                  <td><a href="{{ route('equipo.show2', $fix -> homeTeamNameId) }}">{{ $fix -> homeTeamNameId }}</a></td>
                  <td><a href="{{ route('equipo.show2', $fix -> awayTeamNameId) }}">{{ $fix -> awayTeamNameId }}</a></td>
                  <td>@if($fix->result =='null a null'){Partido no disputado}@else{{$fix->result}}@endif</td>
                </tr>
              @endforeach
          </table>
        @endisset

        <!-- Equipo especifico -->

        @isset($equipoesp)

         <h4 align="center"> Equipo Especifico  </h4>
          @section('banner')
            <img src="images/equipo.png">
          @stop
          <table class="table table-hover">
            <thead class="thead-dark">
              <tr>
                <th>ID Equipo</th>
                <th>Nombre</th>
                <th>Siglas</th>
                <th>Nombre Corto</th>
              </tr>
            </thead>
              @foreach ($equipoesp as $ep)
                <tr>
                  <td>{{ $ep -> idEquipo }}</td>
                  <td>{{ $ep -> name }}</td>
                  <td>{{ $ep -> code }}</td>
                  <td>{{ $ep -> shortName }}</td>
                </tr>
              @endforeach
          </table>
        @endisset

      </div>
    </div>
  </div>
</section>
@stop
