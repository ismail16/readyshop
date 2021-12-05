<?php
use Illuminate\Http\Request;

// SSLCOMMERZ Start
Route::post('/success','SslCommerzPaymentController@success');
Route::post('/fail', 'SslCommerzPaymentController@fail');
Route::post('/cancel', 'SslCommerzPaymentController@cancel');
Route::post('/ipn', 'SslCommerzPaymentController@ipn');
//SSLCOMMERZ END

Route::group(['namespace' => 'Api','prefix'=>'v1','middleware' => 'api'], function(){
    // Frontend route
    Route::get('/','FrontEndController@index');
    Route::get('/config','FrontEndController@configapi');
    Route::get('/slider','FrontEndController@slider');
    Route::get('all-category','FrontEndController@allcategory');
    Route::get('/category/{id}','FrontEndController@category');
    Route::get('/brands','FrontEndController@brands');
    Route::get('/subcategory/{id}','FrontEndController@subcategory');
    Route::get('/products/{id}','FrontEndController@products');
    Route::get('/offer','FrontEndController@offerproduct');
    Route::get('/best-sale','FrontEndController@bestsale');
    Route::get('/contact-us','FrontEndController@contact');
    Route::get('/brand/{id}','FrontEndController@brandproduct');
    Route::get('/all-product','FrontEndController@allproduct');
    Route::get('/product-details/{id}','FrontEndController@details');
    Route::get('/more-info/{id}', 'FrontEndController@moreinfo');
    Route::get('/blogcategory','FrontEndController@blogcategories');
    Route::get('/our-blog','FrontEndController@blog');
    Route::get('/blog-category/{id}','FrontEndController@blogcategory');
    Route::get('/our-blog/details/{id}','FrontEndController@blogdetails');
    Route::post('/customer/order-track','FrontEndController@orderTrack');
    Route::post('/search','FrontEndController@search');
    Route::get('/districts','FrontEndController@districts');
    Route::post('/areas','FrontEndController@areas');
    Route::post('/shippingfee','FrontEndController@shippingfee');


    // cart manage
    Route::post('/add-to-cart','ShoppingCartController@cartstore');
    Route::get('/cart','ShoppingCartController@cartshow');
    Route::put('/cart/increment/{product_id}', 'ShoppingCartController@cartincrement');
    Route::put('/cart/decrement/{product_id}', 'ShoppingCartController@cartdecrement');
    Route::delete('/cart/delete/{product_id}', 'ShoppingCartController@cartdestroy');

    Route::post('/wishlist','ShoppingCartController@wishstore');
    Route::get('/wishlist','ShoppingCartController@wishshow');
    Route::delete('/wishlist/delete/{productId}', 'ShoppingCartController@wishdestroy');

    Route::post('/compare','ShoppingCartController@comparestore');
    Route::get('/compare','ShoppingCartController@compareshow');
    Route::delete('/compare/delete/{productId}', 'ShoppingCartController@comparedestroy');

    // Customer route
    Route::post('/customer/login','CustomerController@login');
    Route::post('/customer/register','CustomerController@register');
    Route::post('/customer/verified','CustomerController@verify');
    Route::put('/customer/resend/verify','CustomerController@resendverify');
    Route::post('/customer/forget-password','CustomerController@forgetpassword');
    Route::post('/customer/forget-password/reset','CustomerController@fpassreset');
    Route::post('/customer/logout','CustomerController@logout');
    Route::post('coupon','CustomerController@coupon');
    

});

Route::group(['namespace' => 'Api','prefix'=>'v1','middleware' =>'auth.jwt'], function(){
    Route::get('/customer/account','CustomerController@account');
    Route::post('/customer/logout','CustomerController@logout');
    Route::get('/customer/profile/edit','CustomerController@editprofile');
    Route::post('/customer/profile/update','CustomerController@profileUpdate');
    Route::get('/customer/order','CustomerController@myorder');
    Route::get('/customer/order/invoice/{order_id}','CustomerController@orderInvoice');
    Route::post('/customer/product/review','CustomerController@customerReview');

    Route::post('/customer/order/save','CustomerController@orderSave');
    
    Route::get('/customer/online-payment/{order_id}/{customer_id}','CustomerController@onlinepayment');

    Route::post('/customer/online-payment/genarate','CustomerController@onlinepaygen');
    Route::post('/customer/order-cancel','CustomerController@ordercancel');

});
