<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use App\Customer;
use App\Shipping;
use App\Area;
use App\Order;
use App\Payment;
use App\Orderdetails;
use App\Comment;
use App\Ratting;
use App\Shippingfee;
use Cart;
use Session;
use App\Post;
use App\Guestorder;
use App\Guestorderdetails;
use App\Productrequest;
use App\Sellwithus;
use App\Shippingaddress;
use App\Review;
use App\Couponcode;
use App\CouponUsed;
use Mail;
use File;
use Auth;
use Exception;
use DB;
use App\Library\SslCommerz\SslCommerzNotification;
class CustomerController extends Controller
{
   

    public function shippingInfo(Request $request){
        $this->validate($request,[
            'name'=>'required',
            'phone'=>'required',
            'location'=>'required',
            'address'=>'required',
        ]);

       $shipping              =   new Shipping();
       $shipping->name        =   $request->name;
       $shipping->phone       =   $request->phone;
       $shipping->address     =   $request->address;
       $shipping->location     =   $request->location;
       $shipping->note        =   $request->note;
       $shipping->save();
       Session::put('shippingId',$shipping->id);
       Toastr::success('Thanks! your shipping address save successfull','success');
       return redirect('/payment');
    }

    public function shippingcharge($id){
        $shippingfee = Area::find($id)->shippingfee;
        Session::put('shippingfee',$shippingfee);
        return response()->json($shippingfee);
    }

    public function shippingcontent(){
       return view('frontEnd.layouts.pages.shippingcontent');
    }

    public function shippingAddress(){
       $shippingAddress = Shippingaddress::where('customerId',Session::get('customerId'))->first();
       if($shippingAddress!=NULL){
         $saveareas = Area::where('district_id',$shippingAddress->district)->get();
       }else{
        $saveareas = '';
       }
       return view('frontEnd.layouts.pages.customer.shippingaddress',compact('shippingAddress','saveareas'));

    }

    public function saveShippingAddress(Request $request){
       $this->validate($request,[
            'recipient'=>'required',
            'shippingAddress'=>'required',
            'shippingPhone'=>'required',
            'district'=>'required',
            'district'=>'required',
        ]);
        $findaddress = Shippingaddress::where('customerId',Session::get('customerId'))->first();
        if(!$findaddress){
          $shipping                   =   new Shippingaddress();
          $shipping->customerId       =   Session::get('customerId');
          $shipping->recipient        =   $request->recipient;
          $shipping->recipient        =   $request->recipient;
          $shipping->shippingAddress  =   $request->shippingAddress;
          $shipping->shippingPhone    =   $request->shippingPhone;
          $shipping->district         =   $request->district;
          $shipping->area             =   $request->area;
          $shipping->save();
        }else{
          $findaddress->recipient        =   $request->recipient;
          $findaddress->recipient        =   $request->recipient;
          $findaddress->shippingAddress  =   $request->shippingAddress;
          $findaddress->shippingPhone    =   $request->shippingPhone;
          $findaddress->district         =   $request->district;
          $findaddress->area             =   $request->area;
        }
       Toastr::success('Thanks! your shipping address save successfull','success');
       return redirect('/customer/account');
    }
    
    public function paymentcharge($id,$area){
          $subtotal=Cart::instance('shopping')->subtotal();
          $subtotal=str_replace(',','',$subtotal);
          $subtotal=str_replace('.00', '',$subtotal);
          $shippingfee = Area::find($area)->shippingfee;
          if($id=="bkash" || $id=="roket"|| $id=="nagad"){
                  $bkashfee = (($subtotal+$shippingfee)*20)/1000;
             }else{
                 $bkashfee = NULL;
             }
         response()->json($bkashfee);
        return view('frontEnd.layouts.pages.paymentcharge',compact('bkashfee','shippingfee'));
        
    }

    public function payment_pay_cash_in(Request $request){
        $this->validate($request,[
            'fullName'=>'required',
            'phoneNumber'=>'required',
            'district'=>'required',
            'area'=>'required',
            'address'=>'required',
        ]);
         $extrashipping = 0;
          $cartitems = Cart::instance('shopping')->content();
          foreach($cartitems as $cartitem){
            $extrashipping +=$cartitem->options->extrashipping;
          }
       $cartqty=Cart::instance('shopping')->content()->count();
        if($cartqty){

        $subtotal=Cart::instance('shopping')->subtotal();
        $subtotal=str_replace(',','',$subtotal);
        $subtotal=str_replace('.00', '',$subtotal);
        $subtotal=Cart::instance('shopping')->subtotal();
        $subtotal=str_replace(',','',$subtotal);
        $subtotal=str_replace('.00', '',$subtotal);
        $shippingfee = Area::find($request->area)->shippingfee;
        $transFee = 0;

        // shipping calculte
           $area = Area::find($request->area);
           $shipping              =   new Shipping();
           $shipping->name        =   $request->fullName;
           $shipping->phone       =   $request->phoneNumber;
           $shipping->address     =   $request->address;
           $shipping->district    =   $request->district;
           $shipping->shippingfee =   $shippingfee+$extrashipping;
           $shipping->area        =   $area->area;
           $shipping->note        =   $request->note;
           $shipping->customerId  =   Session::get('customerId');
           $shipping->save();
           
           $order = new Order();
           $order->customerId = Session::get('customerId');
           $order->shippingId = $shipping->id;
           $order->transFee   = $transFee;
           $order->orderTotal = ($subtotal+$shippingfee+$transFee+$extrashipping)-Session::get('couponamount');
           $order->discount   = Session::get('couponamount');
           $order->trackingId = rand(111111,999999);
           $order->created_at = Carbon::now();
           $order->save();
            $cartProducts                       =   Cart::instance('shopping')->content();
            foreach($cartProducts as $cartProduct){
                $orderDetails                   =   new Orderdetails();
                $orderDetails->orderId          =   $order->id;
                $orderDetails->ProductId        =   $cartProduct->id;
                $orderDetails->productName      =   $cartProduct->name;
                $orderDetails->productPrice     =   $cartProduct->price;
                $orderDetails->productSize      =   $cartProduct->options->size? $cartProduct->options->size:'';
                $orderDetails->productColor     =   $cartProduct->options->color? $cartProduct->options->color:'';
                $orderDetails->proPurchaseprice =   $cartProduct->options->proPurchaseprice;
                $orderDetails->productQuantity  =   $cartProduct->qty;
                $orderDetails->created_at       =   Carbon::now();
                $orderDetails->save();
            }

           $transectionId = uniqid();
           $payment                 = new Payment();
           $payment->orderId        = $order->id;
           $payment->paymentType    = $request->paymentType;
           $payment->senderId       = Null;
           $payment->transectionId  = $transectionId;
           $payment->transFee       = $transFee;
           $payment->status         = 'Unpaid';
           $payment->save();


            if($request->paymentType=='online'){
                $post_data                  = array();
                $post_data['total_amount']  = $order->orderTotal;
                $post_data['product_category'] = "Goods";
                $post_data['product_name'] = "Computer";
                $post_data['product_category'] = "Goods";
                $post_data['product_profile'] = "physical-goods";
                $post_data['cus_name'] = $request->fullName;
                $post_data['cus_email'] = 'shamim@gmail.com';
                $post_data['cus_phone'] = $request->phoneNumber;
                $post_data['cus_add1'] = $request->address;
                $post_data['cus_add2'] = $request->address;
                $post_data['cus_city'] = $request->district;
                $post_data['cus_postcode'] = "1000";
                $post_data['cus_country'] = 'Bangladesh';

                $post_data['ship_name']     = $request->fullName;
                $post_data['ship_add1']     = $request->address;
                $post_data['ship_add2']     = $request->address;
                $post_data['ship_city']     = $request->district;
                $post_data['ship_state']    = $request->area;
                $post_data['ship_postcode'] = "1000";
                $post_data['ship_phone']    = "";
                $post_data['ship_country']  = "Bangladesh";
                $post_data['currency']      = "BDT";
                $post_data['tran_id']       = $transectionId;
                $post_data['shipping_method'] = $request->paymentType;
                
                $sslc = new SslCommerzNotification();
                $payment_options = $sslc->makePayment($post_data, 'hosted');

                if (!is_array($payment_options)) {
                    print_r($payment_options);
                    $payment_options = array();
                }
            }

            if($request->paymentType=='paypal'){
                $post_data                  = array();
                $post_data['total_amount']  = $order->orderTotal;
                $post_data['product_category'] = "Goods";
                $post_data['product_name'] = "Computer";
                $post_data['product_category'] = "Goods";
                $post_data['product_profile'] = "physical-goods";
                $post_data['cus_name'] = $request->fullName;
                $post_data['cus_email'] = 'shamim@gmail.com';
                $post_data['cus_phone'] = $request->phoneNumber;
                $post_data['cus_add1'] = $request->address;
                $post_data['cus_add2'] = $request->address;
                $post_data['cus_city'] = $request->district;
                $post_data['cus_postcode'] = "1000";
                $post_data['cus_country'] = 'Bangladesh';

                $post_data['ship_name']     = $request->fullName;
                $post_data['ship_add1']     = $request->address;
                $post_data['ship_add2']     = $request->address;
                $post_data['ship_city']     = $request->district;
                $post_data['ship_state']    = $request->area;
                $post_data['ship_postcode'] = "1000";
                $post_data['ship_phone']    = "";
                $post_data['ship_country']  = "Bangladesh";
                $post_data['currency']      = "BDT";
                $post_data['tran_id']       = $transectionId;
                $post_data['shipping_method'] = $request->paymentType;
                
                $sslc = new SslCommerzNotification();
                $payment_options = $sslc->makePayment($post_data, 'hosted');

                if (!is_array($payment_options)) {
                    print_r($payment_options);
                    $payment_options = array();
                }
            }


            $findcustomer = Customer::find(Session::get('customerId'));
            // if($findcustomer->email !=NULL){
            //    $data = array(
            //          'email'         => $findcustomer->email,
            //          'trackingId'    => $order->trackingId,
            //          'fullName'      => $request->fullName,
            //          'phoneNumber'   => $request->phoneNumber,
            //          'address'       => $request->address,
            //          'orderTotal'       => $order->orderTotal,
            //         );;
            //     $send = Mail::send('frontEnd.emails.order', $data, function($textmsg) use ($data){
            //       $textmsg->to($data['email']);
            //       $textmsg->subject('Order Place Successfully');
            //     });
            // }
            if(Session::get('couponamount') || Session::get('usecouponcode')){
                $usedcoupon = new CouponUsed();
                $usedcoupon->usedate = date('Y-m-d');
                $usedcoupon->customerId = Session::get('customerId');
                $usedcoupon->couponcode = Session::get('usecouponcode');
                $usedcoupon->save();
            }
          Cart::instance('shopping')->destroy();
          Session::forget('usecouponcode');
          Session::forget('couponamount');

          Toastr::success('Thanks, Your order send successfully', 'Success!');
          return redirect('customer/order-complete/'.$order->id);

        }else{
            Toastr::error('Opps please shopping first', 'Cart Empty');
            return redirect('/');
        }
    }

    public function payment_pay_store(Request $request){
        $this->validate($request,[
            'fullName'=>'required',
            'phoneNumber'=>'required',
            'district'=>'required',
            'area'=>'required',
            'address'=>'required',
        ]);
         $extrashipping = 0;
          $cartitems = Cart::instance('shopping')->content();
          foreach($cartitems as $cartitem){
            $extrashipping +=$cartitem->options->extrashipping;
          }
       $cartqty=Cart::instance('shopping')->content()->count();
        if($cartqty){

        $subtotal=Cart::instance('shopping')->subtotal();
        $subtotal=str_replace(',','',$subtotal);
        $subtotal=str_replace('.00', '',$subtotal);
        $subtotal=Cart::instance('shopping')->subtotal();
        $subtotal=str_replace(',','',$subtotal);
        $subtotal=str_replace('.00', '',$subtotal);
        $shippingfee = Area::find($request->area)->shippingfee;
        $transFee = 0;

        // shipping calculte
           $area = Area::find($request->area);
           $shipping              =   new Shipping();
           $shipping->name        =   $request->fullName;
           $shipping->phone       =   $request->phoneNumber;
           $shipping->address     =   $request->address;
           $shipping->district    =   $request->district;
           $shipping->shippingfee =   $shippingfee+$extrashipping;
           $shipping->area        =   $area->area;
           $shipping->note        =   $request->note;
           $shipping->customerId  =   Session::get('customerId');
           $shipping->save();
           
           $order = new Order();
           $order->customerId = Session::get('customerId');
           $order->shippingId = $shipping->id;
           $order->transFee   = $transFee;
           $order->orderTotal = ($subtotal+$shippingfee+$transFee+$extrashipping)-Session::get('couponamount');
           $order->discount   = Session::get('couponamount');
           $order->trackingId = rand(111111,999999);
           $order->created_at = Carbon::now();
           $order->save();
            $cartProducts                       =   Cart::instance('shopping')->content();
            foreach($cartProducts as $cartProduct){
                $orderDetails                   =   new Orderdetails();
                $orderDetails->orderId          =   $order->id;
                $orderDetails->ProductId        =   $cartProduct->id;
                $orderDetails->productName      =   $cartProduct->name;
                $orderDetails->productPrice     =   $cartProduct->price;
                $orderDetails->productSize      =   $cartProduct->options->size? $cartProduct->options->size:'';
                $orderDetails->productColor     =   $cartProduct->options->color? $cartProduct->options->color:'';
                $orderDetails->proPurchaseprice =   $cartProduct->options->proPurchaseprice;
                $orderDetails->productQuantity  =   $cartProduct->qty;
                $orderDetails->created_at       =   Carbon::now();
                $orderDetails->save();
            }

           $transectionId = uniqid();
           $payment                 = new Payment();
           $payment->orderId        = $order->id;
           $payment->paymentType    = $request->paymentType;
           $payment->senderId       = Null;
           $payment->transectionId  = $transectionId;
           $payment->transFee       = $transFee;
           $payment->status         = 'Unpaid';
           $payment->save();


            if($request->paymentType=='online'){
                $post_data                  = array();
                $post_data['total_amount']  = $order->orderTotal;
                $post_data['product_category'] = "Goods";
                $post_data['product_name'] = "Computer";
                $post_data['product_category'] = "Goods";
                $post_data['product_profile'] = "physical-goods";
                $post_data['cus_name'] = $request->fullName;
                $post_data['cus_email'] = 'shamim@gmail.com';
                $post_data['cus_phone'] = $request->phoneNumber;
                $post_data['cus_add1'] = $request->address;
                $post_data['cus_add2'] = $request->address;
                $post_data['cus_city'] = $request->district;
                $post_data['cus_postcode'] = "1000";
                $post_data['cus_country'] = 'Bangladesh';

                $post_data['ship_name']     = $request->fullName;
                $post_data['ship_add1']     = $request->address;
                $post_data['ship_add2']     = $request->address;
                $post_data['ship_city']     = $request->district;
                $post_data['ship_state']    = $request->area;
                $post_data['ship_postcode'] = "1000";
                $post_data['ship_phone']    = "";
                $post_data['ship_country']  = "Bangladesh";
                $post_data['currency']      = "BDT";
                $post_data['tran_id']       = $transectionId;
                $post_data['shipping_method'] = $request->paymentType;
                
                $sslc = new SslCommerzNotification();
                $payment_options = $sslc->makePayment($post_data, 'hosted');

                if (!is_array($payment_options)) {
                    print_r($payment_options);
                    $payment_options = array();
                }
            }

            if($request->paymentType=='paypal'){
                $post_data                  = array();
                $post_data['total_amount']  = $order->orderTotal;
                $post_data['product_category'] = "Goods";
                $post_data['product_name'] = "Computer";
                $post_data['product_category'] = "Goods";
                $post_data['product_profile'] = "physical-goods";
                $post_data['cus_name'] = $request->fullName;
                $post_data['cus_email'] = 'shamim@gmail.com';
                $post_data['cus_phone'] = $request->phoneNumber;
                $post_data['cus_add1'] = $request->address;
                $post_data['cus_add2'] = $request->address;
                $post_data['cus_city'] = $request->district;
                $post_data['cus_postcode'] = "1000";
                $post_data['cus_country'] = 'Bangladesh';

                $post_data['ship_name']     = $request->fullName;
                $post_data['ship_add1']     = $request->address;
                $post_data['ship_add2']     = $request->address;
                $post_data['ship_city']     = $request->district;
                $post_data['ship_state']    = $request->area;
                $post_data['ship_postcode'] = "1000";
                $post_data['ship_phone']    = "";
                $post_data['ship_country']  = "Bangladesh";
                $post_data['currency']      = "BDT";
                $post_data['tran_id']       = $transectionId;
                $post_data['shipping_method'] = $request->paymentType;
                
                $sslc = new SslCommerzNotification();
                $payment_options = $sslc->makePayment($post_data, 'hosted');

                if (!is_array($payment_options)) {
                    print_r($payment_options);
                    $payment_options = array();
                }
            }


            $findcustomer = Customer::find(Session::get('customerId'));
            // if($findcustomer->email !=NULL){
            //    $data = array(
            //          'email'         => $findcustomer->email,
            //          'trackingId'    => $order->trackingId,
            //          'fullName'      => $request->fullName,
            //          'phoneNumber'   => $request->phoneNumber,
            //          'address'       => $request->address,
            //          'orderTotal'       => $order->orderTotal,
            //         );;
            //     $send = Mail::send('frontEnd.emails.order', $data, function($textmsg) use ($data){
            //       $textmsg->to($data['email']);
            //       $textmsg->subject('Order Place Successfully');
            //     });
            // }
            if(Session::get('couponamount') || Session::get('usecouponcode')){
                $usedcoupon = new CouponUsed();
                $usedcoupon->usedate = date('Y-m-d');
                $usedcoupon->customerId = Session::get('customerId');
                $usedcoupon->couponcode = Session::get('usecouponcode');
                $usedcoupon->save();
            }
          Cart::instance('shopping')->destroy();
          Session::forget('usecouponcode');
          Session::forget('couponamount');

          Toastr::success('Thanks, Your order send successfully', 'Success!');
          return redirect('customer/order-complete/'.$order->id);

        }else{
            Toastr::error('Opps please shopping first', 'Cart Empty');
            return redirect('/');
        }
    }

    // old function
    // public function orderSave(Request $request){
    //     $this->validate($request,[
    //         'fullName'=>'required',
    //         'phoneNumber'=>'required',
    //         'district'=>'required',
    //         'area'=>'required',
    //         'address'=>'required',
    //     ]);
    //      $extrashipping = 0;
    //       $cartitems = Cart::instance('shopping')->content();
    //       foreach($cartitems as $cartitem){
    //         $extrashipping +=$cartitem->options->extrashipping;
    //       }
    //    $cartqty=Cart::instance('shopping')->content()->count();
    //     if($cartqty){

    //     $subtotal=Cart::instance('shopping')->subtotal();
    //     $subtotal=str_replace(',','',$subtotal);
    //     $subtotal=str_replace('.00', '',$subtotal);
    //     $subtotal=Cart::instance('shopping')->subtotal();
    //     $subtotal=str_replace(',','',$subtotal);
    //     $subtotal=str_replace('.00', '',$subtotal);
    //     $shippingfee = Area::find($request->area)->shippingfee;
    //     $transFee = 0;

    //     // shipping calculte
    //        $area = Area::find($request->area);
    //        $shipping              =   new Shipping();
    //        $shipping->name        =   $request->fullName;
    //        $shipping->phone       =   $request->phoneNumber;
    //        $shipping->address     =   $request->address;
    //        $shipping->district    =   $request->district;
    //        $shipping->shippingfee =   $shippingfee+$extrashipping;
    //        $shipping->area        =   $area->area;
    //        $shipping->note        =   $request->note;
    //        $shipping->customerId  =   Session::get('customerId');
    //        $shipping->save();
           
    //        $order = new Order();
    //        $order->customerId = Session::get('customerId');
    //        $order->shippingId = $shipping->id;
    //        $order->transFee   = $transFee;
    //        $order->orderTotal = ($subtotal+$shippingfee+$transFee+$extrashipping)-Session::get('couponamount');
    //        $order->discount   = Session::get('couponamount');
    //        $order->trackingId = rand(111111,999999);
    //        $order->created_at = Carbon::now();
    //        $order->save();
    //         $cartProducts                       =   Cart::instance('shopping')->content();
    //         foreach($cartProducts as $cartProduct){
    //             $orderDetails                   =   new Orderdetails();
    //             $orderDetails->orderId          =   $order->id;
    //             $orderDetails->ProductId        =   $cartProduct->id;
    //             $orderDetails->productName      =   $cartProduct->name;
    //             $orderDetails->productPrice     =   $cartProduct->price;
    //             $orderDetails->productSize      =   $cartProduct->options->size? $cartProduct->options->size:'';
    //             $orderDetails->productColor     =   $cartProduct->options->color? $cartProduct->options->color:'';
    //             $orderDetails->proPurchaseprice =   $cartProduct->options->proPurchaseprice;
    //             $orderDetails->productQuantity  =   $cartProduct->qty;
    //             $orderDetails->created_at       =   Carbon::now();
    //             $orderDetails->save();
    //         }

    //        $transectionId = uniqid();
    //        $payment                 = new Payment();
    //        $payment->orderId        = $order->id;
    //        $payment->paymentType    = $request->paymentType;
    //        $payment->senderId       = Null;
    //        $payment->transectionId  = $transectionId;
    //        $payment->transFee       = $transFee;
    //        $payment->status         = 'Unpaid';
    //        $payment->save();


    //         if($request->paymentType=='online'){
    //             $post_data                  = array();
    //             $post_data['total_amount']  = $order->orderTotal;
    //             $post_data['product_category'] = "Goods";
    //             $post_data['product_name'] = "Computer";
    //             $post_data['product_category'] = "Goods";
    //             $post_data['product_profile'] = "physical-goods";
    //             $post_data['cus_name'] = $request->fullName;
    //             $post_data['cus_email'] = 'shamim@gmail.com';
    //             $post_data['cus_phone'] = $request->phoneNumber;
    //             $post_data['cus_add1'] = $request->address;
    //             $post_data['cus_add2'] = $request->address;
    //             $post_data['cus_city'] = $request->district;
    //             $post_data['cus_postcode'] = "1000";
    //             $post_data['cus_country'] = 'Bangladesh';

    //             $post_data['ship_name']     = $request->fullName;
    //             $post_data['ship_add1']     = $request->address;
    //             $post_data['ship_add2']     = $request->address;
    //             $post_data['ship_city']     = $request->district;
    //             $post_data['ship_state']    = $request->area;
    //             $post_data['ship_postcode'] = "1000";
    //             $post_data['ship_phone']    = "";
    //             $post_data['ship_country']  = "Bangladesh";
    //             $post_data['currency']      = "BDT";
    //             $post_data['tran_id']       = $transectionId;
    //             $post_data['shipping_method'] = $request->paymentType;
                
    //             $sslc = new SslCommerzNotification();
    //             $payment_options = $sslc->makePayment($post_data, 'hosted');

    //             if (!is_array($payment_options)) {
    //                 print_r($payment_options);
    //                 $payment_options = array();
    //             }
    //         }

    //         if($request->paymentType=='paypal'){
    //             $post_data                  = array();
    //             $post_data['total_amount']  = $order->orderTotal;
    //             $post_data['product_category'] = "Goods";
    //             $post_data['product_name'] = "Computer";
    //             $post_data['product_category'] = "Goods";
    //             $post_data['product_profile'] = "physical-goods";
    //             $post_data['cus_name'] = $request->fullName;
    //             $post_data['cus_email'] = 'shamim@gmail.com';
    //             $post_data['cus_phone'] = $request->phoneNumber;
    //             $post_data['cus_add1'] = $request->address;
    //             $post_data['cus_add2'] = $request->address;
    //             $post_data['cus_city'] = $request->district;
    //             $post_data['cus_postcode'] = "1000";
    //             $post_data['cus_country'] = 'Bangladesh';

    //             $post_data['ship_name']     = $request->fullName;
    //             $post_data['ship_add1']     = $request->address;
    //             $post_data['ship_add2']     = $request->address;
    //             $post_data['ship_city']     = $request->district;
    //             $post_data['ship_state']    = $request->area;
    //             $post_data['ship_postcode'] = "1000";
    //             $post_data['ship_phone']    = "";
    //             $post_data['ship_country']  = "Bangladesh";
    //             $post_data['currency']      = "BDT";
    //             $post_data['tran_id']       = $transectionId;
    //             $post_data['shipping_method'] = $request->paymentType;
                
    //             $sslc = new SslCommerzNotification();
    //             $payment_options = $sslc->makePayment($post_data, 'hosted');

    //             if (!is_array($payment_options)) {
    //                 print_r($payment_options);
    //                 $payment_options = array();
    //             }
    //         }


    //         $findcustomer = Customer::find(Session::get('customerId'));
    //         // if($findcustomer->email !=NULL){
    //         //    $data = array(
    //         //          'email'         => $findcustomer->email,
    //         //          'trackingId'    => $order->trackingId,
    //         //          'fullName'      => $request->fullName,
    //         //          'phoneNumber'   => $request->phoneNumber,
    //         //          'address'       => $request->address,
    //         //          'orderTotal'       => $order->orderTotal,
    //         //         );;
    //         //     $send = Mail::send('frontEnd.emails.order', $data, function($textmsg) use ($data){
    //         //       $textmsg->to($data['email']);
    //         //       $textmsg->subject('Order Place Successfully');
    //         //     });
    //         // }
    //         if(Session::get('couponamount') || Session::get('usecouponcode')){
    //             $usedcoupon = new CouponUsed();
    //             $usedcoupon->usedate = date('Y-m-d');
    //             $usedcoupon->customerId = Session::get('customerId');
    //             $usedcoupon->couponcode = Session::get('usecouponcode');
    //             $usedcoupon->save();
    //         }
    //       Cart::instance('shopping')->destroy();
    //       Session::forget('usecouponcode');
    //       Session::forget('couponamount');

    //       Toastr::success('Thanks, Your order send successfully', 'Success!');
    //       return redirect('customer/order-complete/'.$order->id);

    //     }else{
    //         Toastr::error('Opps please shopping first', 'Cart Empty');
    //         return redirect('/');
    //     }
    // }

    public function complete($orderId){
      $orderInfo = Order::where('orderIdPrimary',$orderId)->first();
      $customerInfo=Customer::find(Session::get('customerId'));
      return view('frontEnd.layouts.pages.customer.ordernote',compact('orderInfo','customerInfo'));
    }
    public function customerAccount(){
      return view('frontEnd.layouts.pages.customer.customerProfile');
    }
    public function customerQuestion(Request $request){
      $this->validate($request,[
          'question'=>'required',
          ]);
              $question = new Comment();
              $question->product_id=$request->product_id;
              $question->question=$request->question;
              $question->answer='no answer';
              $question->customer_id=$request->customer_id;
              $question->created_at = Carbon::now();
              $question->save();

        Toastr::success('your comments added successfully', 'success!');
        return redirect()->back();
    }
    
    public function customerRlogin(Request $request){
       $customerCheck =Customer::orWhere('email',$request->phoneOremail)
       ->orWhere('phoneNumber',$request->phoneOremail)
       ->first();
        if($customerCheck){
          if($customerCheck->status == 0){
             Toastr::warning('Opps! your account has been suspends', 'Opps!');
             return redirect()->back();
         }else{
          if(password_verify($request->password,$customerCheck->password)){
              $customerId = $customerCheck->id;
              Session::put('customerId',$customerId);
              Toastr::success('Your area login successfully', 'success!');
              return redirect()->back();
            
          }else{
               Toastr::warning('Opps! your password wrong', 'Opps!');
               return redirect()->back();
           }
          }
        }else{
          return redirect()->back();
          Toastr::warning('Sorry! You have no account', 'warning!');
        }
    }
    public function customerReview(Request $request){
      $this->validate($request,[
          'review'=>'required',
          ]);
              $question = new Review();
              $question->product_id=$request->product_id;
              $question->ratting=$request->ratting;
              $question->review=$request->review;
              $question->customer_id=Session::get('customerId');
              $question->created_at = Carbon::now();
              $question->save();

        Toastr::success('your comments added successfully', 'success!');
        return redirect()->back();
    }

    public function customerLogout(){
        Session::flush();
        Toastr::success('You are logout successfully', 'success!');
        return redirect('/');
    }

    public function customerOrder(){
      return view('frontEnd.layouts.pages.customer.order');
    }
    public function corderInvoice($orderIdPrimary){
      $orderInfo=Order::where(['orderIdPrimary'=>$orderIdPrimary, 'customerId'=>Session::get('customerId')])->first();
      if($orderInfo !=NULL){
      $customerInfo = Customer::where('id',$orderInfo->customerId)->first();
      $shippingInfo=Shipping::where('shippingPrimariId',$orderInfo->shippingId)->first();
      $orderDetails=Orderdetails::where('orderId',$orderInfo->orderIdPrimary)->get();

      $paymentmethod = DB::table('payments')
          ->join('orders','payments.orderId','=','orders.orderIdPrimary')
          ->where('payments.orderId',$orderIdPrimary)
          ->select('payments.*','orders.orderIdPrimary')
          ->first();

      return view('frontEnd.layouts.pages.customer.orderinvoice',compact('orderInfo','customerInfo','paymentmethod','shippingInfo','orderDetails'));
      }else{
          Toastr::error('Opps !', 'You are rong!');
          return redirect('customer/order');
      }
    }
 public function applyCoupon(Request $request){
      $findcoupon = Couponcode::where('couponcode',$request->couponcode)->first();
      if($findcoupon==NULL){
        Toastr::error('Opps! your entre promo code not valid');
        return redirect('show-cart');
      }else{
        $currentdata = date('Y-m-d');
        $expairdate=$findcoupon->expairdate;
        if($currentdata <= $expairdate){
        $totalcart = Cart::instance('shopping')->subtotal();
        $totalcart = str_replace('.00','',$totalcart);
        $totalcart = str_replace(',','',$totalcart);
         if($totalcart >= $findcoupon->buyammount){
           $useCode = CouponUsed::where(['customerId'=>Session::get('customerId'),'couponcode'=>Session('usecouponcode')])->first();
           if($useCode!=NULL){
               Toastr::error('Opps! Sorry you already use this coupon');
                return redirect('show-cart');
           }else{
               if($totalcart >= $findcoupon->buyammount){
                  if($findcoupon->offertype==1){
                    $discountammount =  (($totalcart*$findcoupon->amount)/100);
                    Session::forget('couponamount');
                    Session::put('couponamount',$discountammount);
                    Session::put('usecouponcode',$findcoupon->couponcode);
                  }else{
                    Session::put('couponamount',$findcoupon->amount);
                    Session::put('usecouponcode',$findcoupon->couponcode);
                  }
                 Toastr::success('Success! your promo code accepted');
                 return redirect('show-cart');
             }
           }
       }else{
         Toastr::error('Opps! Sorry your total shopping amount not available for offer');
         return redirect('show-cart');
       }
        }else{
          Toastr::error('Opps! Sorry your promo code date expaire');
          return redirect('show-cart');
        }
      }
    }
   
     public function orderTrack(Request $request){
      $this->validate($request,[
          'trackId'=>'required',
          ]);
          $orderfinds = Order::where('trackingId',$request->trackId)->first();
          if($orderfinds){
             return view('frontEnd.layouts.pages.trackorder',compact('orderfinds')); 
          }else{
              Toastr::error('Sorry, Your tracking Id is wrong');
              return redirect()->back();
          }
          
    }
    public function orderTrackScan($id){
          $orderfinds = Order::where('trackingId',$id)->first();
          if($orderfinds){
             return view('frontEnd.layouts.pages.trackorder',compact('orderfinds')); 
          }else{
              Toastr::error('Sorry, Your tracking Id is wrong');
              return redirect()->back();
          }
          
    }
    
    public function orderCancelRequest(Request $request){
        $this->validate($request,[
            'hidden_id'=>'required',
          ]);
          $orderfinds =  Order::where('orderIdPrimary',$request->hidden_id)->update(['cancelRequest'=>1]);
          //  Admin Notification
         $orderInfo =  Order::where('orderIdPrimary',$request->hidden_id)->first();
         $data2 = array(
             'email' => 'info@websolutionit.com',
             'trackingId'    => $orderInfo->trackingId,
            );
          $send = Mail::send('frontEnd.emails.cancelnotification', $data2, function($textmsg) use ($data2){
              $textmsg->to($data2['email']);
              $textmsg->subject('A Order Cancel Request');
            });
            
          Toastr::success('Done, Your order cancel request send');
          return redirect()->back();

     }

     // =========== Password Forget =============
    public function forgetpassword(){
      return view('frontEnd.layouts.pages.customer.forgetpassword');
    }
    public function forgetpassemailcheck(Request $request){
        $this->validate($request,[
            'email'=>'required',
        ]);
       $checkEmail = Customer::where('email',$request->email)->first();
      if($checkEmail){
        $passResetToken=rand(111111,999999);
        $checkEmail->passResetToken=$passResetToken;
        $checkEmail->save();

        // verify code send to customer mail
        $data = array(
         'contact_email' => $request->email,
         'passResetToken' => $passResetToken,
        );
        $send = Mail::send('frontEnd.emails.forgetpassword', $data, function($textmsg) use ($data){
         $textmsg->to($data['contact_email']);
         $textmsg->subject('Forget password code');
        });
        Toastr::success('Your are send a forget password verify code in your email','Success');
        Session::put('fcustomerId',$checkEmail->id);
        return redirect('customer/forget-password/reset');
      }else{
        Toastr::error('Your email address not found','Opps');
        return redirect()->back();
      }
    }
    public function passresetpage(){
       if(Session::get('fcustomerId')){
        return view('frontEnd.layouts.pages.customer.passwordreset');
        }else{
           Toastr::error('Your request process rong','Opps!');
           return redirect('customer/forget-password'); 
        }
    }

    public function fpassreset(Request $request){
        $this->validate($request,[
            'verifycode'=>'required',
            'newpassword'=>'required',
        ]);
       $customerInfo = Customer::find(Session::get('fcustomerId'));
      if($customerInfo->passResetToken == $request->verifycode){
        $customerInfo->password=bcrypt(request('newpassword'));
        $customerInfo->passResetToken=NULL;
        $customerInfo->save();
        Toastr::success('Your password reset successfully','Success');
        Session::put('customerId',$customerInfo->id);
        return redirect('/customer/account');
      }else{
        Toastr::error('Your verified code not match','Opps');
        return redirect()->back();
      }
    }



}
