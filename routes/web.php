<?php
// use Facades\Yugo\SMSGateway\Interfaces\SMS;
// Route::get('sms', function() {
//     return SMS::send(['62895322118828'], 'Hello, how are you?');
// });

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
// filter by category
Route::get('category/{slug}','IndexController@filterByCategory')->name('filterByCategory');
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
    Route::get('wishlist/{id}','WishListController@store')->name('postWishList');
    // cart 
    Route::get('cart','CartUserController@index')->name('cart');
    Route::post('cart','CartUserController@store')->name('postCart');
    Route::get('cart/{uuid}','CartUserController@destroy')->name('delCart');
    // transaction
    Route::get('transaction','TransactionUserController@index')->name('iTransaction');
    Route::post('transaction','TransactionUserController@store')->name('userTransaction');
    Route::get('transaction-history','TransactionUserController@history')->name('historyTransaction');
    Route::get('transaction-history/json','TransactionUserController@historyJson')->name('jsonHistoryTransaction');
});
    // Prefix Route    
Route::prefix('panel')->group(function () {
    // transaction accept
    Route::get('transaction/{uuid}/accept','TransactionController@accept')->name('acceptTransaction');
    // Cashier route
    Route::group(['middleware' => ['cashier']], function () {
        // dashboard
        Route::get('/dashboard','DashboardController@index')->name('iDashboard');
        // transaction
        Route::get('api/transaction','TransactionController@api')->name('apiTransaction');
        Route::get('transaction','TransactionController@index')->name('iTransaction');
        Route::get('transaction/detail/{uuid}','TransactionController@show')->name('showTransaction');
        Route::get('transaction/edit/{uuid}','TransactionController@edit')->name('eTransaction');
        Route::post('transaction/edit/{uuid}','TransactionController@update')->name('uTransaction');
        Route::get('transaction/history','TransactionController@history')->name('historyTransaction');
        Route::get('transaction/history/json','TransactionController@historyJson')->name('historyTransactionJson');
        // Route::get('transaction/{uuid}/accept','TransactionController@accept')->name('acceptTransaction');
        Route::delete('transaction/delete-many','ProductController@destroyMany')->name('delManyTransaction');
        // top up
        Route::get('top-up','TopUpController@index')->name('iTopUp');
        Route::post('top-up','TopUpController@update');
    });
    // seller route
    Route::group(['middleware' => ['seller']], function () {
         // dashboard
        Route::get('/dashboard','DashboardController@index')->name('iDashboard');
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
        Route::get('transaction/history','TransactionController@history')->name('historyTransaction');
        Route::get('transaction/history/json','TransactionController@historyJson')->name('historyTransactionJson');
        // Route::get('transaction/{uuid}/accept','TransactionController@accept')->name('acceptTransaction');
        Route::get('transaction/{uuid}/decline','TransactionController@decline')->name('declineTransaction');
        // store configuration
        Route::get('store-setting','StoreController@index')->name('iSettingStore');
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
        Route::post('blog/edit/{uuid}','BlogController@update')->name('uBlog');
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
        // customer 
        Route::get('api/Customer','CustomerController@api')->name('apiCustomer');
        Route::get('Customer','CustomerController@index')->name('iCustomer');
        Route::post('Customer','CustomerController@store');
        Route::get('Customer/create','CustomerController@create')->name('cCustomer');
        Route::get('Customer/edit/{uuid}','CustomerController@edit')->name('eCustomer');
        Route::post('Customer/edit/{uuid}','CustomerController@update')->name('uCustomer');
        Route::get('Customer/delete/{uuid}','CustomerController@destroy')->name('delCustomer');    
        Route::delete('Customer/delete-many','CustomerController@destroyMany')->name('delManyCustomer');
        // logs
        Route::get('api/logs','LogController@api')->name('apiLogs');
        Route::get('logs','LogController@index')->name('logs');
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
        Route::get('transaction/history','TransactionController@history')->name('historyTransaction');
        Route::get('transaction/history/json','TransactionController@historyJson')->name('historyTransactionJson');
        // top up
        Route::get('top-up','TopUpController@index')->name('iTopUp');
        Route::post('top-up','TopUpController@update');
        // promotion
        Route::get('promotion','PromotionController@index')->name('iPromotion');
        Route::post('promotion','PromotionController@store');
        Route::get('api/promotion','PromotionController@api')->name('apiPromotion');
        // web config
        Route::get('config','ConfigController@index')->name('iConfig');
        Route::post('config','ConfigController@update');
        // manage satuan
        Route::get('api/Satuan','SatuanController@api')->name('apiSatuan');
        Route::get('Satuan','SatuanController@index')->name('iSatuan');
        Route::get('Satuan/create','SatuanController@create')->name('cSatuan');
        Route::post('Satuan','SatuanController@store'); 
        Route::get('Satuan/edit/{id}','SatuanController@edit')->name('eSatuan');
        Route::post('Satuan/edit/{id}','SatuanController@update')->name('uSatuan');
        Route::get('Satuan/delete/{id}','SatuanController@destroy')->name('delSatuan');
        Route::delete('Satuan/delete-many','SatuanController@destroyMany')->name('delManySatuan');
    });
});


Route::get('clearApp', function() {
    Artisan::call('config:cache');
    Artisan::call('route:clear');
    Artisan::call('cache:clear');
    Artisan::call('view:clear');
    return 'sukses';
});