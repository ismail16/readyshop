<?php

// SSLCommerz configuration
// $sslinfo = DB::table('paymentmethods')->where(['id'=>2,'status'=>1])->first();
// return [
//     'projectPath' => env('PROJECT_PATH'),
//     // For Sandbox, use "https://sandbox.sslcommerz.com"
//     // For Live, use "https://securepay.sslcommerz.com"
//     'apiDomain' => env("API_DOMAIN_URL", "https://sandbox.sslcommerz.com"),
//     'apiCredentials' => [
//         'store_id' => $sslinfo?$sslinfo->store_id:'',
//         'store_password' => $sslinfo?$sslinfo->store_password:'',
//     ],
//     'apiUrl' => [
//         'make_payment' => "/gwprocess/v4/api.php",
//         'transaction_status' => "/validator/api/merchantTransIDvalidationAPI.php",
//         'order_validate' => "/validator/api/validationserverAPI.php",
//         'refund_payment' => "/validator/api/merchantTransIDvalidationAPI.php",
//         'refund_status' => "/validator/api/merchantTransIDvalidationAPI.php",
//     ],
//     'connect_from_localhost' => env("IS_LOCALHOST", true), // For Sandbox, use "true", For Live, use "false"
//     'success_url' => '/success',
//     'failed_url' => '/fail',
//     'cancel_url' => '/cancel',
//     'ipn_url' => '/ipn',
// ];
