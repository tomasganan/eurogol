@extends('layout')

<title>Estadisticas - EuroGol</title>

@section('banner')
  <img src="images/estadisticas.png">
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
        @isset($estadisticas)
          <table class="table table-hover">
            <thead class="thead-dark">
              <tr>
                  <th>ID Table</th>
                  <th>Grupo</th>
                  <th>Equipo</th>
                  <th>Goles a favor</th>
                  <th>Goles en contra</th>
                  <th>Diferencia de goles</th>
              </tr>
            </thead>

              @foreach ($estadisticas as $est)
                <tr>
                  <td>{{ $est -> idTable }}</td>
                  <td>{{ $est -> Group }}</td>
                  <td>{{ $est -> teamId }}</td>
                  <td>{{ $est -> goals }}</td>
                  <td>{{ $est -> goalsAgainst }}</td>
                  <td>{{ $est -> goalDifference }}</td>              
                </tr>
              @endforeach
          </table>
        @endisset

      </div>
    </div>
  </div>
</section>
@stop
