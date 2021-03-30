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


Route::post('/register', 'App\Http\Controllers\UserController@register');
Route::post('/login', 'App\Http\Controllers\UserController@login');

Route::middleware('checkAuth')->group(function (){
    Route::get('/logout', 'App\Http\Controllers\UserController@logout');
    Route::get('/info', 'App\Http\Controllers\UserController@info');
    Route::get('/search', 'App\Http\Controllers\UserController@search');
    Route::post('/send', 'App\Http\Controllers\MessageController@send');
    Route::get('/get', 'App\Http\Controllers\ChatController@get');
    Route::get('/get/{chat:id}', 'App\Http\Controllers\ChatController@getMessages');
});
