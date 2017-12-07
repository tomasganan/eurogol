<?php

namespace euroGol\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class EquiposController extends Controller
{
    
    // Tabla Equipos General

    public function index()
    {
        $equipos = DB::table('tablaequipo')->get(); 
        return view('equipos', compact('equipos'));
    }

    // Tabla Fixture General

    public function fixture()
    {
        $fixture = DB::table('tablafixture')->get();

        //$equipoHome = DB::table('tableequipo')->where('idEquipo')->get(homeTeamNameId);

        return view('fixture', compact('fixture'));  
    }

    // Tabla Jugadores General

    public function jugadores()
    {
        $jugadores = DB::table('tablaplayers')->get();
        return view('jugadores', compact('jugadores'));
    }

    // Tabla Estadisticas General

    public function estadisticas()
    {
        $estadisticas = DB::table('tablatable')->get();
        return view('estadisticas', compact('estadisticas'));
    }




    // -------------------------------------------------- 


    // Tabla Estadistica Especifica
  
    public function show($id)
    {
        $equipo = DB::table('tablatable')->where('teamId', $id)->get();
        return view('equipos', compact('equipo'));
    }

    
    
}
