<?php

Auth::routes();

// Route::get('/cc', function() {
//     $exitCode = Artisan::call('cache:clear');
//     $exitCode = Artisan::call('config:clear');
//     $exitCode = Artisan::call('route:clear');
//     $exitCode = Artisan::call('view:clear');
//     $exitCode = Artisan::call('config:cache');
//     return '<h1>All Config cleared</h1>';
// });


// SSLCOMMERZ Start
Route::post('/success','SslCommerzPaymentController@success');
Route::post('/fail', 'SslCommerzPaymentController@fail');
Route::post('/cancel', 'SslCommerzPaymentController@cancel');
Route::post('/ipn', 'SslCommerzPaymentController@ipn');
//SSLCOMMERZ END

Route::group(['namespace'=>'frontEnd',], function(){
   Route::get('/','frontEndController@index');
   Route::get('/category/{slug}','frontEndController@category');
   Route::get('/subcategory/{slug}/','frontEndController@subcategory');
   Route::get('/products/{slug}','frontEndController@products');
   Route::post('/search/','frontEndController@search');
   Route::get('/brands/','frontEndController@brands');
   Route::get('/offer','frontEndController@offerproduct');
   Route::get('/contact-us','frontEndController@contact');
   Route::get('all-category','frontEndController@allcategory');
   Route::get('/brand/{slug}','frontEndController@brandproduct');
   Route::get('/all-product','frontEndController@allproduct');
   Route::get('/product-details/{id}/{slug}','frontEndController@details');
   Route::post('/visitor/contact', 'visitorcontactController@visitorcontact');
   Route::get('/more-info/{slug}', 'frontEndController@moreinfo');
   Route::get('/customer/register','customerController@registerPage');
   Route::post('/customer/register','customerController@customerRegister');
   Route::get('/customer/verify','customerController@customerVerifyForm');
   Route::post('/customer/verified','customerController@customerVerify');
   Route::post('/resend/verify','customerController@resendverify');
   Route::post('/customer/product/review','customerController@customerReview');
   Route::get('/customer/login','customerController@customerLoginPage');
   Route::post('customer/panel/login','customerController@customerLogin');
   Route::post('customer/panel/review/login','customerController@customerRlogin');
   Route::get('/customer/logout','customerController@customerLogout');
   Route::get('customer/forget-password','customerController@forgetpassword');
   Route::post('customer/forget-password','customerController@forgetpassemailcheck');
   Route::get('customer/forget-password/reset','customerController@passresetpage');
   Route::post('customer/forget-password/reset','customerController@fpassreset');

   Route::post('/customer/order-track','customerController@orderTrack');
   Route::get('/order/track/{id}','customerController@orderTrackScan');
   Route::get('error-page','frontEndController@errorpage');
   Route::get('/customer/complain','frontEndController@complain');
   Route::post('customer/complain/information','visitorcontactController@complainmessage');
   Route::post('coupon/customer/apply', 'customerController@applyCoupon');

   // add To Cart
   Route::post('/add-to-cart/{id}','ShoppingcartController@addToCartPost');
   Route::get('/add-to-cart/{id}/{qty}','ShoppingcartController@addTocartGet');
   Route::post('update-cart','ShoppingcartController@updateCart');
   Route::post('/delete-cart','ShoppingcartController@deleteCart');
   Route::get('/cart/content','ShoppingcartController@cartContent');
   Route::get('/show-cart','ShoppingcartController@showCart');
   Route::get('/cart/mobile-content','ShoppingcartController@cartMobileContent');
   Route::get('/order-now/{id}','ShoppingcartController@cartorderNow');

   // wishlist Route
   Route::get('/add-to-wishlist/{id}','ShoppingcartController@addwishlist');
   Route::get('/wishlist/product','ShoppingcartController@wishlistProduct');
   Route::get('/wishlist/content','ShoppingcartController@wishlistContent');
   Route::get('/wishlist-product-add/{id}/{rowId}','ShoppingcartController@addcartTowishlist');
   Route::post('/wishlist-delete-cart','ShoppingcartController@deleteWishlist');

   // compare route
   Route::get('/add-to-compare/{id}','ShoppingcartController@addCompare');
   Route::get('/compare/content/','ShoppingcartController@compareContent');
   Route::get('/compare-product/','ShoppingcartController@compareproduct');
   Route::get('/compare-product-add/{id}/{rowId}','ShoppingcartController@compareProductadd');
   Route::post('/compare-remove-cart/','ShoppingcartController@removeCompare');
   Route::get('ajax-district/','ShoppingcartController@getDistrict');

   Route::get('login/{provider}/redirect', 'SocialAuthController@redirect');
   Route::get('login/{provider}/callback', 'SocialAuthController@callback');
   Route::get('onlinecustomer/logout', 'SocialAuthController@socialcustomerLogout');

   Route::get('/our-blog','frontEndController@blog');
   Route::get('/blog-category/{slug}/{id}','frontEndController@blogcategory');
   Route::get('/our-blog/details/{slug}/{id}','frontEndController@blogdetails');
});

// Live Search
Route::get('search_data/{keyword}', 'search\liveSearchController@SearchData');
Route::get('search_data', 'search\liveSearchController@SearchWithoutData');

// ajax route
Route::get('/ajax-product-subcategory','editor\ProductController@getSubcategory');
Route::get('/ajax-product-childsubcategory','editor\ProductController@getChildcategory');
Route::get('/ajax-product-brand','editor\ProductController@getBrand');

// Customer Validiti Check ======
Route::group(['namespace'=>'frontEnd','middleware'=>['validcustomer']], function(){
    Route::get('/customer/account','customerController@customerAccount');
    Route::post('/customer/profile-edit','customerController@profileEdit');
    Route::get('/customer/shipping-address','customerController@shippingAddress');
    Route::post('customer/set/shipping-address','customerController@saveShippingAddress');
    Route::post('customer/order/cancel/request','customerController@orderCancelRequest');
    Route::get('/customer/order','customerController@customerOrder');
    Route::get('/customer/order/invoice/{orderIdPrimary}','customerController@corderInvoice');
    Route::get('shipping-charge/{shipping}','customerController@shippingcharge');
    Route::get('/shipping/content','customerController@shippingcontent');
    Route::get('payment-charge/{id}/{area}','customerController@paymentcharge');
    Route::get('/checkout','frontEndController@shipping');
    Route::post('/shipping/information','customerController@shippingInfo');
    Route::post('customer/order/save','customerController@orderSave');
    Route::get('customer/order-complete/{orderId}','customerController@complete');
    
});


// ========= Admin Panel Route ======== 
Route::get('/proimage/remove', 'editor\ProductController@destroyoldimage');
Route::group(['as'=>'superadmin.', 'prefix'=>'superadmin', 'namespace'=>'superadmin','middleware'=>[ 'auth', 'superadmin']], function(){
 Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
 // panel user route==
    Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
    Route::get('/user/add', 'userController@add_user');
    Route::post('/user/save', 'userController@save_user');
    Route::get('/user/edit/{id}', 'userController@edit_user');
    Route::post('/user/update', 'userController@update_user');
    Route::get('/user/manage', 'userController@manage_user');
    Route::post('/user/inactive', 'userController@inactive_user');
    Route::post('/user/active', 'userController@active_user');
    Route::post('/user/delete', 'userController@destroy_user');
});

Route::group(['as'=>'admin.', 'prefix'=>'admin', 'namespace'=>'admin','middleware'=>['auth', 'admin']], function(){
 Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
 Route::get('reports/summary', 'DashboardController@reportsummaery');

 // Logo route here

     // District route
     Route::get('/district/add','DistrictController@index');
     Route::post('/district/save','DistrictController@store');
     Route::get('/district/manage','DistrictController@manage');
     Route::get('/district/edit/{id}','DistrictController@edit');
     Route::post('/district/update','DistrictController@update');
     Route::post('/district/inactive','DistrictController@inactive');
     Route::post('/district/active','DistrictController@active');
     Route::post('/district/delete','DistrictController@destroy');
     Route::post('/district/delete','DistrictController@destroy');

    // Area route
     Route::get('/area/add','AreaController@index');
     Route::post('/area/save','AreaController@store');
     Route::get('/area/manage','AreaController@manage');
     Route::get('/area/edit/{id}','AreaController@edit');
     Route::post('/area/update','AreaController@update');
     Route::post('/area/inactive','AreaController@inactive');
     Route::post('/area/active','AreaController@active');
     Route::post('/area/delete','AreaController@destroy');

     // couponcode route
    Route::get('couponcode/add','CouponcodeController@index');
    Route::post('couponcode/save','CouponcodeController@store');
    Route::get('couponcode/manage','CouponcodeController@manage');
    Route::get('/couponcode/edit/{id}','CouponcodeController@edit');
    Route::post('/couponcode/update','CouponcodeController@update');
    Route::post('/couponcode/inactive/','CouponcodeController@inactive');
    Route::post('/couponcode/active','CouponcodeController@active');
    Route::post('/couponcode/delete','CouponcodeController@destroy');
 // expence-category route
    Route::get('/expence-category/add','ExpencecategoryController@add');
    Route::post('/expence-category/save','ExpencecategoryController@store');
    Route::get('/expence-category/manage','ExpencecategoryController@manage');
    Route::get('/expence-category/edit/{id}','ExpencecategoryController@edit');
    Route::post('/expence-category/update','ExpencecategoryController@update');
    Route::post('/expence-category/inactive','ExpencecategoryController@inactive');
    Route::post('/expence-category/active','ExpencecategoryController@active');
    Route::post('/expence-category/delete','ExpencecategoryController@destroy');


    // expence route
    Route::get('/expence/add','ExpenceController@add');
    Route::post('/expence/save','ExpenceController@store');
    Route::get('/expence/manage','ExpenceController@manage');
    Route::get('/expence/edit/{id}','ExpenceController@edit');
    Route::post('/expence/update','ExpenceController@update');
    Route::post('/expence/inactive','ExpenceController@inactive');
    Route::post('/expence/active','ExpenceController@active');
    Route::post('/expence/delete','ExpenceController@destroy');
    Route::get('/expence/reports','ExpenceController@expencereports');
    Route::post('/expence/reports/filter','ExpenceController@expencefilter');

    Route::get('set-payment-paypal/{id}', 'SetPaymentController@paypalEdit')->name('paypalEdit');
    Route::put('set-payment-paypal/{id}', 'SetPaymentController@paypalUpdate')->name('paypalUpdate');

    Route::get('set-payment-stripe/{id}', 'SetPaymentController@stripeEdit')->name('stripeEdit');
    Route::put('set-payment-stripe/{id}', 'SetPaymentController@stripeUpdate')->name('stripeUpdate');

    Route::get('set-payment-cash-on-delivery/{id}', 'SetPaymentController@CashOnDeliveryEdit')->name('CashOnDeliveryEdit');
    Route::put('set-payment-cash-on-delivery/{id}', 'SetPaymentController@CashOnDeliveryUpdate')->name('CashOnDeliveryUpdate');

});

Route::post('payment-pay-store', 'frontend\PayNowController@payment_pay_store')->name('payment_pay_store');

Route::post('payment-pay-cash-in', 'frontend\PayNowController@payment_pay_cash_in')->name('payment_pay_cash_in');

Route::group(['as'=>'editor.', 'prefix'=>'editor', 'namespace'=>'editor','middleware'=>['auth', 'editor']], function(){
 Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
   
    Route::get('customer/list','ReportsController@customerlist');
    Route::get('product/ruquest/list','ReportsController@productrequestlist');
    Route::get('product/sellwithus/list','ReportsController@sellwithuslist');
    Route::get('product/sellwithus/details/{id}','ReportsController@sellwithusdetails');
    
    // Logo route here
    Route::get('/logo/add','LogoController@add');
    Route::post('/logo/save','LogoController@store');
    Route::get('/logo/manage','LogoController@manage');
    Route::get('/logo/edit/{id}','LogoController@edit');
    Route::post('/logo/update','LogoController@update');
    Route::post('/logo/inactive','LogoController@inactive');
    Route::post('/logo/active','LogoController@active');
    Route::post('/logo/delete','LogoController@destroy');  
    
     // Logo route here
    Route::get('/slider/add','SliderController@add');
    Route::post('/slider/save','SliderController@store');
    Route::get('/slider/manage','SliderController@manage');
    Route::get('/slider/edit/{id}','SliderController@edit');
    Route::post('/slider/update','SliderController@update');
    Route::post('/slider/inactive','SliderController@inactive');
    Route::post('/slider/active','SliderController@active');
    Route::post('/slider/delete','SliderController@destroy');

     // Payment method route here
    Route::get('/payment-method/manage','PaymentmethodController@manage');
    Route::get('/payment-method/edit/{id}','PaymentmethodController@edit');
    Route::post('/payment-method/update','PaymentmethodController@update');
    Route::post('/payment-method/inactive','PaymentmethodController@inactive');
    Route::post('/payment-method/active','PaymentmethodController@active');

    // category route
    Route::get('category/add','CategoryController@index');
    Route::post('category/save','CategoryController@store');
    Route::get('category/manage','CategoryController@manage');
    Route::get('/category/edit/{id}','CategoryController@edit');
    Route::post('/category/update','CategoryController@update');
    Route::post('/category/inactive/','CategoryController@inactive');
    Route::post('/category/active','CategoryController@active');
    
    Route::get('/category/menu-sort/{id}','CategoryController@menusort');
    Route::post('/category/menu-sort-update/','CategoryController@menusortupdate');

    // childcategory route
    Route::get('subcategory/add','SubCategoryController@index');
    Route::post('subcategory/save','SubCategoryController@store');
    Route::get('subcategory/manage','SubCategoryController@manage');
    Route::get('subcategory/edit/{id}','SubCategoryController@edit');
    Route::post('subcategory/update','SubCategoryController@update');
    Route::post('subcategory/inactive','SubCategoryController@inactive');
    Route::post('/subcategory/active','SubCategoryController@active');

    // subcategory route
    Route::get('childcategory/add','ChildCategoryController@index');
    Route::post('childcategory/save','ChildCategoryController@store');
    Route::get('childcategory/manage','ChildCategoryController@manage');
    Route::get('childcategory/edit/{id}','ChildCategoryController@edit');
    Route::post('childcategory/update','ChildCategoryController@update');
    Route::post('childcategory/inactive','ChildCategoryController@inactive');
    Route::post('/childcategory/active','ChildCategoryController@active');

    // Brand route
    Route::get('brand/add','BrandController@index');
    Route::post('brand/save','BrandController@store');
    Route::get('brand/manage','BrandController@manage');
    Route::get('brand/edit/{id}','BrandController@edit');
    Route::post('brand/update','BrandController@update');
    Route::post('brand/inactive','BrandController@inactive');
    Route::post('brand/active','BrandController@active');

    // Offer route
    Route::get('offer-category/add','OffercategoryController@index');
    Route::post('offer-category/save','OffercategoryController@store');
    Route::get('offer-category/manage','OffercategoryController@manage');
    Route::get('offer-category/edit/{id}','OffercategoryController@edit');
    Route::post('offer-category/update','OffercategoryController@update');
    Route::post('offer-category/inactive','OffercategoryController@inactive');
    Route::post('offer-category/active','OffercategoryController@active');
    Route::post('offer-category/delete','OffercategoryController@destroy');

        /*  ============SIZE INSTER ============*/

    Route::get('product-size/add','sizeController@index');
    Route::post('product-size/save','sizeController@store');
    Route::get('product-size/manage','sizeController@manage');
    Route::get('/product-size/edit/{id}','sizeController@edit');
    Route::post('/product-size/update','sizeController@update');
    Route::post('/product-size/inactive/','sizeController@inactive');
    Route::post('/product-size/active','sizeController@active');
    Route::post('product-size/delete','sizeController@destroy');

    Route::post('/product-color/delete','colorController@active');
    
     /*  ============COLOR INSTER ============*/
    Route::get('product-color/add','ColorController@index');
    Route::post('product-color/save','ColorController@store');
    Route::get('product-color/manage','ColorController@manage');
    Route::get('/product-color/edit/{id}','ColorController@edit');
    Route::post('/product-color/update','ColorController@update');
    Route::post('/product-color/inactive/','ColorController@inactive');
    Route::post('/product-color/active','ColorController@active');
    Route::post('/product-color/delete','ColorController@active');

    // product route here
    Route::get('/product/add','ProductController@add');
    Route::post('/product/save','ProductController@store');
    Route::get('/product/manage','ProductController@manage');
    Route::get('/product/edit/{id}','ProductController@edit');
    Route::post('/product/update','ProductController@update');
    Route::post('/product/inactive','ProductController@inactive');
    Route::post('/product/active','ProductController@active');
    Route::post('/product/delete','ProductController@destroy'); 
    Route::get('product/image/delete/{id}','ProductController@productimgdel'); 

    // order manage
    Route::get('order/manage/{slug}','ReportsController@ordermanage');
    Route::get('order/cancel/request','ReportsController@ordercancel');
     Route::get('order/details/{shippingId}/{customerId}/{orderIdPrimary}','ReportsController@details');
     Route::get('order/details/{shippingId}/{customerId}/{orderIdPrimary}','ReportsController@details');
     Route::get('/product/stock','ReportsController@stock');
     Route::get('/product/stock-warning','ReportsController@stockwarning');
     Route::get('/product/stock-out','ReportsController@stockout');
     Route::get('/order-list/{status}','ReportsController@orderlist');
     Route::get('/order/status/{id}/{status}','ReportsController@orderstatus');
     Route::post('/order/filter','ReportsController@orderFilter');

      // Social media information
     Route::get('/social-media/add','SocialController@index');
     Route::post('/social-media/save','SocialController@store');
     Route::get('/social-media/manage','SocialController@manage');
     Route::get('/social-media/edit/{id}','SocialController@edit');
     Route::post('/social-media/update','SocialController@update');
     Route::post('/social-media/unpublished','SocialController@unpublished');
     Route::post('/social-media/published','SocialController@published');
     Route::post('/social-media/delete','SocialController@destroy');

         // Footer Page
    Route::get('/pagecategory/create','PagecategoryController@create');
    Route::post('/pagecategory/save','PagecategoryController@store');
    Route::get('/pagecategory/manage','PagecategoryController@manage');
    Route::get('/pagecategory/edit/{id}','PagecategoryController@edit');
    Route::post('/pagecategory/update','PagecategoryController@update');
    Route::post('/pagecategory/inactive','PagecategoryController@inactive');
    Route::post('/pagecategory/active','PagecategoryController@active');

    // Page Design
    Route::get('/createpage/create','CreatepageController@create');
    Route::post('/createpage/save','CreatepageController@store');
    Route::get('/createpage/manage','CreatepageController@manage');
    Route::get('/createpage/edit/{id}','CreatepageController@edit');
    Route::post('/createpage/update','CreatepageController@update');
    Route::post('/createpage/inactive','CreatepageController@inactive');
    Route::post('/createpage/active','CreatepageController@active');

      // Feedback Route
     Route::get('/clientfeedback/add','ClientfeedbackController@index');
     Route::post('/clientfeedback/save','ClientfeedbackController@store');
     Route::get('/clientfeedback/manage','ClientfeedbackController@manage');
     Route::get('/clientfeedback/edit/{id}','ClientfeedbackController@edit');
     Route::post('/clientfeedback/update','ClientfeedbackController@update');
     Route::post('/clientfeedback/unpublished','ClientfeedbackController@unpublished');
     Route::post('/clientfeedback/published','ClientfeedbackController@published');
     Route::post('/client-feedback/delete','ClientfeedbackController@destroy');

      // Blog Category Route
     Route::get('/blogcategory/add','BlogcategoryController@index');
     Route::post('/blogcategory/save','BlogcategoryController@store');
     Route::get('/blogcategory/manage','BlogcategoryController@manage');
     Route::get('/blogcategory/edit/{id}','BlogcategoryController@edit');
     Route::post('/blogcategory/update','BlogcategoryController@update');
     Route::post('/blogcategory/unpublished','BlogcategoryController@unpublished');
     Route::post('/blogcategory/published','BlogcategoryController@published');
     Route::post('/blogcategory/delete','BlogcategoryController@destroy');
      // Blog Route
     Route::get('/blog/add','BlogController@index');
     Route::post('/blog/save','BlogController@store');
     Route::get('/blog/manage','BlogController@manage');
     Route::get('/blog/edit/{id}','BlogController@edit');
     Route::post('/blog/update','BlogController@update');
     Route::post('/blog/unpublished','BlogController@unpublished');
     Route::post('/blog/published','BlogController@published');
     Route::post('/blog/delete','BlogController@destroy');
      // Blog Route
     Route::get('contactinfo/add','ContactController@index');
     Route::post('contactinfo/save','ContactController@store');
     Route::get('contactinfo/manage','ContactController@manage');
     Route::get('contactinfo/edit/{id}','ContactController@edit');
     Route::post('contactinfo/update','ContactController@update');
     Route::post('contactinfo/unpublished','ContactController@unpublished');
     Route::post('contactinfo/published','ContactController@published');
     Route::post('contactinfo/delete','ContactController@destroy');



    // Registerd 
    Route::get('/register/manage','reportsController@manage');
    Route::post('/register/delete','reportsController@destroy');

    // Advertisement 
    Route::get('/adcategory/add','adcategoryController@add');
    Route::post('/adcategory/save','adcategoryController@store');
    Route::get('/adcategory/manage','adcategoryController@manage');
    Route::get('/adcategory/edit/{id}','adcategoryController@edit');
    Route::post('/adcategory/update','adcategoryController@update');
    Route::post('/adcategory/inactive','adcategoryController@inactive');
    Route::post('/adcategory/active','adcategoryController@active');
    Route::post('/adcategory/delete','adcategoryController@destroy');
    
    // Advertisement 
    Route::get('/advertisment/add','advertismentController@add');
    Route::post('/advertisment/save','advertismentController@store');
    Route::get('/advertisment/manage','advertismentController@manage');
    Route::get('/advertisment/edit/{id}','advertismentController@edit');
    Route::post('/advertisment/update','advertismentController@update');
    Route::post('/advertisment/inactive','advertismentController@inactive');
    Route::post('/advertisment/active','advertismentController@active');
    Route::post('/advertisment/delete','advertismentController@destroy');

    // Shipping Fee
    Route::get('shippingfee/add','ShippingfeeController@index');
    Route::post('shippingfee/save','ShippingfeeController@store');
    Route::get('shippingfee/manage','ShippingfeeController@manage');
    Route::get('shippingfee/edit/{id}','ShippingfeeController@edit');
    Route::post('shippingfee/update','ShippingfeeController@update');
    Route::post('shippingfee/inactive','ShippingfeeController@inactive');
    Route::post('shippingfee/active','ShippingfeeController@active');
    Route::post('shippingfee/delete','ShippingfeeController@destroy');

});

Route::group(['as'=>'author.', 'prefix'=>'author', 'namespace'=>'author','middleware'=>['auth', 'author']], function(){
 Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
});

// other route
Route::group(['middleware'=>['auth']], function(){
    Route::get('password/change', 'ChangePassController@index');
    Route::post('password/updated', 'ChangePassController@updated');
});