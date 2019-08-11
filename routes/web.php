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

Route::get('/', function () {
    return view('index');
    // $user   =   \App\User::create([
    //     'name'      => 'Steve Zed',
    //     'email'     =>  'steve@gmail.com',
    //     'password'  => bcrypt(123123),
    //     'role_id'   =>  4,
    //     'active'    => 1,
    // ]);
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('login','AuthController@login')->name('postLogin');
Route::post('register','AuthController@register')->name('register');
Route::group(['middleware' => ['auth']], function () {
    // register store
    Route::get('store-register','AuthController@getStoreRegister');
    Route::post('store-register','AuthController@postStoreRegister');
    // Prefix Route    
    Route::prefix('panel')->group(function () {
        // category
        Route::get('category','CategoryController@index')->name('iCategory');
        Route::get('category/create','CategoryController@create')->name('cCategory');
        Route::post('category','CategoryController@store'); 
        Route::get('category/edit/{uuid}','CategoryController@edit')->name('eCategory');
        Route::post('category/edit/{uuid}','CategoryController@update')->name('uCategory');
        Route::get('category/delete/{uuid}','CategoryController@destroy')->name('delCategory');
        Route::delete('category/delete-many','CategoryController@destroyMany')->name('delManyCategory');
        // blog
        Route::get('blog','BlogController@index')->name('iBlog');
        Route::get('blog/create','BlogController@create')->name('cBlog');
        Route::post('blog/create','BlogController@store');
        // cashier
        Route::get('cashier','CashierController@index')->name('iCashier');
        Route::post('cashier','CashierController@store');
        Route::get('cashier/create','CashierController@create')->name('cCashier');
        Route::get('cashier/edit/{uuid}','CashierController@edit')->name('eCashier');
        Route::post('cashier/edit/{uuid}','CashierController@update')->name('uCashier');
        Route::get('cashier/delete/{uuid}','CashierController@destroy')->name('delCashier');    
        Route::delete('cashier/delete-many','CashierController@destroyMany')->name('delManyCashier');
        // web config
        Route::get('config','ConfigController@index')->name('iConfig');
        Route::post('config','ConfigController@update');
    });
});