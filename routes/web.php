<?php


Route::get('/generate', function() {
\App\Role::create([
        'name' => 'Super Admin'
    ]);
    \App\User::create([
        'name' => 'alfy adinata',
        'password' => bcrypt(123123),
        'role_id' => 1,
        'email' => 'alfy@test.dev',
        'active' => 1
    ]);
});
Auth::routes();

Route::get('/logout', function(){ return abort(404); });

Route::get('/','IndexController@index');
// list blogs
Route::get('/blogs','IndexController@blogs');
// detail blog
Route::get('blog/{slug}','IndexController@showBlog')->name('showBlog');
// detail store
Route::get('store/{slug}','IndexController@showStore')->name('showStore');

Route::get('/home', 'HomeController@index')->name('home');
Route::post('login','AuthController@login')->name('postLogin');
Route::post('register','AuthController@register')->name('register');


// product detail
Route::get('product/{slug}','IndexController@showProduct')->name('showProduct');
// search
Route::get('search','IndexController@search')->name('search');
Route::get('store/{slug}','IndexController@showStore')->name('showStore');

// customer
Route::group(['middleware' => ['customer']], function () {
    // register store
    Route::get('store-register','AuthController@getStoreRegister');
    Route::post('store-register','AuthController@postStoreRegister')->name('regStore');
    // wishlist
    Route::post('wishlist','WishListController@store')->name('postWishList');
    // cart
    Route::get('cart','CartUserController@index')->name('cart');
    Route::post('cart','CartUserController@store')->name('postCart');
    // transaction
    Route::post('transaction','TransactionUserController@store')->name('userTransaction');
});
    // Prefix Route    
Route::prefix('panel')->group(function () {
    // seller route
    Route::group(['middleware' => ['seller']], function () {
        // product
        Route::get('api/product','ProductController@api')->name('apiProduct');
        Route::get('product','ProductController@index')->name('iProduct');
        Route::get('product/create','ProductController@create')->name('cProduct');
        Route::post('product/create','ProductController@store');
        Route::get('product/edit/{uuid}','ProductController@edit')->name('eProduct');
        Route::post('product/edit/{uuid}','ProductController@update')->name('uProduct');
        Route::get('product/delete/{uuid}','ProductController@destroy')->name('delProduct');
        Route::delete('product/delete','ProductController@destroyMany')->name('delManyProduct');
        // transaction
        Route::get('api/transaction','TransactionController@api')->name('apiTransaction');
        Route::get('transaction','TransactionController@index')->name('iTransaction');
        Route::get('transaction/detail/{uuid}','TransactionController@show')->name('showTransaction');
        Route::get('transaction/edit/{uuid}','TransactionController@edit')->name('eTransaction');
        Route::post('transaction/edit/{uuid}','TransactionController@update')->name('uTransaction');
        Route::delete('transaction/delete-many','ProductController@destroyMany')->name('delManyTransaction');
        // store configuration
        Route::get('store-setting','StoreController@index')->name('iSettingStore');
    });
    // Cashier route
    Route::group(['middleware' => ['cashier']], function () {
        // transaction
        Route::get('api/transaction','TransactionController@api')->name('apiTransaction');
        Route::get('transaction','TransactionController@index')->name('iTransaction');
        Route::get('transaction/detail/{uuid}','TransactionController@show')->name('showTransaction');
        Route::get('transaction/edit/{uuid}','TransactionController@edit')->name('eTransaction');
        Route::post('transaction/edit/{uuid}','TransactionController@update')->name('uTransaction');
        Route::delete('transaction/delete-many','ProductController@destroyMany')->name('delManyTransaction');
    });
    // superadmin route
    Route::group(['middleware' => ['auth']], function () {
        // dashboard
        Route::get('/dashboard','DashboardController@index')->name('iDashboard');
        // category
        Route::get('api/category','CategoryController@api')->name('apiCategory');
        Route::get('category','CategoryController@index')->name('iCategory');
        Route::get('category/create','CategoryController@create')->name('cCategory');
        Route::post('category','CategoryController@store'); 
        Route::get('category/edit/{uuid}','CategoryController@edit')->name('eCategory');
        Route::post('category/edit/{uuid}','CategoryController@update')->name('uCategory');
        Route::get('category/delete/{uuid}','CategoryController@destroy')->name('delCategory');
        Route::delete('category/delete-many','CategoryController@destroyMany')->name('delManyCategory');
        Route::post('category/import','CategoryController@import')->name('importCategory');
        Route::get('category/export','CategoryController@export')->name('exportCategory');
        // blog
        Route::get('api/blog','BlogController@api')->name('apiBlog');
        Route::get('blog','BlogController@index')->name('iBlog');
        Route::get('blog/create','BlogController@create')->name('cBlog');
        Route::post('blog/create','BlogController@store');
        Route::get('blog/edit/{uuid}','BlogController@edit')->name('eBlog');
        Route::get('blog/delete/{uuid}','BlogController@destroy')->name('delBlog');
        Route::delete('blog/delete-many','BlogController@destroyMany')->name('delManyBlog');
        // cashier
        Route::get('api/cashier','CashierController@api')->name('apiCashier');
        Route::get('cashier','CashierController@index')->name('iCashier');
        Route::post('cashier','CashierController@store');
        Route::get('cashier/create','CashierController@create')->name('cCashier');
        Route::get('cashier/edit/{uuid}','CashierController@edit')->name('eCashier');
        Route::post('cashier/edit/{uuid}','CashierController@update')->name('uCashier');
        Route::get('cashier/delete/{uuid}','CashierController@destroy')->name('delCashier');    
        Route::delete('cashier/delete-many','CashierController@destroyMany')->name('delManyCashier');
        // seller
        Route::get('api/seller','SellerController@api')->name('apiSeller');
        Route::get('seller','SellerController@index')->name('iSeller');
        Route::post('seller','SellerController@store');
        Route::get('seller/create','SellerController@create')->name('cSeller');
        Route::get('seller/edit/{uuid}','SellerController@edit')->name('eSeller');
        Route::post('seller/edit/{uuid}','SellerController@update')->name('uSeller');
        Route::get('seller/delete/{uuid}','SellerController@destroy')->name('delSeller');    
        Route::delete('seller/delete-many','SellerController@destroyMany')->name('delManySeller');
        // product
        Route::get('api/product','ProductController@api')->name('apiProduct');
        Route::get('product','ProductController@index')->name('iProduct');
        Route::get('product/edit/{uuid}','ProductController@edit')->name('eProduct');
        Route::post('product/edit/{uuid}','ProductController@update')->name('uProduct');
        Route::get('product/delete/{uuid}','ProductController@destroy')->name('delProduct');
        Route::delete('product/delete-many','ProductController@destroyMany')->name('delManyProduct');
        // transaction
        Route::get('api/transaction','TransactionController@api')->name('apiTransaction');
        Route::get('transaction','TransactionController@index')->name('iTransaction');
        Route::get('transaction/detail/{uuid}','TransactionController@show')->name('showTransaction');
        Route::get('transaction/edit/{uuid}','TransactionController@edit')->name('eTransaction');
        Route::post('transaction/edit/{uuid}','TransactionController@update')->name('uTransaction');
        Route::get('transaction/delete/{uuid}','TransactionController@destroy')->name('delTransaction');
        Route::delete('transaction/delete-many','ProductController@destroyMany')->name('delManyTransaction');
        // promotion
        Route::get('promotion','PromotionController@index')->name('iPromotion');
        Route::post('promotion','PromotionController@store');
        Route::get('api/promotion','PromotionController@api')->name('apiPromotion');
        // web config
        Route::get('config','ConfigController@index')->name('iConfig');
        Route::post('config','ConfigController@update');
    });
});


Route::get('clearApp', function() {
    Artisan::call('config:cache');
    Artisan::call('route:clear');
    Artisan::call('cache:clear');
    Artisan::call('view:clear');
    return 'sukses';
});