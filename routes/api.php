<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//Login
Route::post('SY01400/login/', 'SY01400SController@login');
//Probando middleware de ruta, se quito porque se usa global
// Route::get('SY01400/getUserByUserId/{userId}', ['middleware' => 'cors','uses' => 'SY01400Controller@getUserByUserId']);

//Route::group(['middleware' => 'auth.jwt'], function () {
    //Menu
    Route::post('SY01400/menu/', 'SY01400SController@menu_side');
    Route::post('SY01400/menu/cards/', 'SY01400SController@cards');

    //Moneda
    Route::get('MC40200/getCurrencyById/{id}', 'MC40200SController@getCurrencyById');
    Route::get('MC40200/getCurrencyAllByLimit/{init}/{limit}', 'MC40200SController@getCurrencyAllByLimit');
    Route::post('MC40200/addCurrency/', 'MC40200SController@addCurrency');
    Route::put('MC40200/updateCurrency/{id}', 'MC40200SController@updateCurrency');
    Route::delete('MC40200/deleteCurrency/{id}', 'MC40200SController@deleteCurrency');

    //Genericos
    Route::get('generic/getNextNoteIndex/', 'GeneriController@getNextNoteIndex');

    // Controladores de recurso
    Route::resource('MC60100', 'MC60100SController');
    Route::resource('SY01500', 'SY01500SController');

//}); 
