<?php

namespace euroGol\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class EquiposController extends Controller
{

    public function index()
    {
        return view('index');
    }
    
    // Tabla Equipos General

    public function equipos()
    {
        $equipos = DB::table('tablaequipo')->get(); 
        return view('equipos', compact('equipos'));
    }

    // Tabla Fixture General

    public function fixture()
    {
        $fixture = DB::table('tablafixture')->get();  
        //$equipoHome = DB::table('tablaequipo')->where("idEquipo","=","homeTeamNameId")->select('name')->get();
        
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

    // Tabla Equipo Especifico Local y Visitante

    public function show2($id)
    {
        $equipoesp = DB::table('tablaequipo')->where("idEquipo","=","$id")->get();
        
        return view('fixture', compact('equipoesp'));
    }


    public function prueba2()
    {
        $fixture = DB::table('tablafixture')->get();  
        $equipoHome = DB::table('tablaequipo')->where("idEquipo","=","homeTeamNameId")->select('name')->get();
        return $equipoHome;
    }



    
}
