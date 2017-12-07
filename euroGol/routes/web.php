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

Route::get('/', function () {
    return view('index');
});

Route::get('equipos', 'EquiposController@index');
Route::get('equipo/{id}', ['as' => 'equipos.show', 'uses' => 'EquiposController@show']);

Route::get('fixture','EquiposController@fixture');

Route::get('jugadores','EquiposController@jugadores');

Route::get('estadisticas','EquiposController@estadisticas');