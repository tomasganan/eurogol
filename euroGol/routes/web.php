<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/',['as' => 'index','uses' => 'EquiposController@index']);

// Route::get('/', function () {
//     return view('index');
// });

/*
|--------------------------------------------------------------------------
| EuroGol Routes
|--------------------------------------------------------------------------
*/

// Ruta index

Route::get('/','EquiposController@index');

// Ruta equipos y ruta estadistica especifca

Route::get('equipos', 'EquiposController@equipos');
Route::get('equipo/{id}', ['as' => 'equipos.show', 'uses' => 'EquiposController@show']);

// Ruta fixture y ruta equipo especifico

Route::get('fixture','EquiposController@fixture');
Route::get('fixture/{id}', ['as' => 'equipo.show2', 'uses' => 'EquiposController@show2']);

// Ruta jugadores

Route::get('jugadores','EquiposController@jugadores');

// Ruta estadisticas

Route::get('estadisticas','EquiposController@estadisticas');

// Ruta prueba2

Route::get('prueba2','EquiposController@prueba2');