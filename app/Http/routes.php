<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::group(array('before' => 'auth'),function()
{


Route::get('/',					['as' => 'index',		'uses' => 'AuthController@index'	]);
Route::get('/register',			['as'=> 'reg_user',		'uses' => 'AuthController@reg_user'	]);
Route::post('/register_save',	['as'=>'reg_user_save',	'uses' => 'AuthController@reg_user_save']);
Route::post('/login',			['as'=>'login',			'uses' => 'AuthController@login']);
Route::get('/dashboard',		['as'=>'dashboard',		'uses' => 'UserController@home']);
Route::get('/logout',			['as'=>'logout',		'uses' => 'UserController@logout']);


});