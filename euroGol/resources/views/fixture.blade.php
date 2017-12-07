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
     <!--  <div class="alert alert-info" role="alert">
        <strong>Grupo A</strong>
      </div> -->
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

                @if ($fix->status == "FINISHED"){
                    $fix->status="FINALIZADO";
                }
                @endif
                
                <tr>
                  <td>{{ $fix -> idFix }}</td>
                  <td>{{ $fix -> date }}</td>
                  <td>{{ $fix -> status }}</td>
                  <td>{{ $fix -> matchday }}</td>
                  <td>{{ $fix -> homeTeamNameId }}</td>
                  <td>{{ $fix -> awayTeamNameId }}</td>
                  <td>{{ $fix -> result }}</td>
                </tr>
              @endforeach
          </table>
        @endisset
      </div>
    </div>
  </div>
</section>
@stop
