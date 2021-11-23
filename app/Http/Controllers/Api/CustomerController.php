<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Library\SslCommerz\SslCommerzNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Customer;
use App\Cart;
use Carbon\Carbon;
use App\Shipping;
use App\Area;
use App\Order;
use App\Payment;
use App\Orderdetails;
use App\Couponcode;
use App\CouponUsed;
use App\Review;
use DB;
use Mail;

class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth.jwt', ['except' => ['login','register','verify','resendverify','forgetpassword','fpassreset']]);
    }
    public function register(Request $request){
       $validator =  Validator::make($request->all(),[
        'fullName'=>'required',
        'email'=>'required|unique:customers',
        'phoneNumber'=>'unique:customers',
        ]);
        if($validator->fails()){
            return response()->json([
                "error" => 'validation_error',
                "message" => $validator->errors(),
            ], 422);
        }
         $verifyToken=rand(111111,999999);
         $store_data                =   new Customer();
         $store_data->fullName      =   $request->fullName;
         $store_data->phoneNumber   =   $request->phoneNumber;
         $store_data->email         =   $request->email;
         $store_data->verifyToken   =   1;
         $store_data->status        =   1;
         $store_data->password      =   bcrypt(request('password'));
         $store_data->save();
         
         $credentials = request(['email', 'password']);
         if ($token = Auth::guard('customer')->attempt($credentials)) {
            return response()->json(['status' => 'success','token'=>$token]);
         }
     }
    public function login(Request $request){
        $this->validate($request, [
            'email' => 'required', 
            'password' => 'required',
        ]);
        $credentials = $request->only('email', 'password');
        try {
            if (!$token = Auth::guard('customer')->attempt($credentials)) {
                return response()->json([
                    'error' => 'Invalid Credentials'
                ], 401);
            }
        } catch (JWTException $e) {
            return response()->json([
                'error' => 'Could not create token'
            ], 500);
        }
        return response()->json([
            'token' => $token
        ], 200);
        
    }
    public function account(){
        $customer=(Auth::guard('customer')->user());
        return response()->json(['status'=>'success','customer'=>$customer]);
    }
    public function editprofile(){
        $customer=(Auth::guard('customer')->user());
        return response()->json(['status'=>'success','customer'=>$customer]);
    }
    public function profileUpdate(Request $request){
        $update=Customer::find(Auth::guard('customer')->user()->id);
        try{
           $update_image = $request->file('image');
            if ($update_image) {
               $file = $request->file('image');
                $name = time().'-'.$file->getClientOriginalName();
                $uploadPath = 'public/uploads/customer/';
                $file->move($uploadPath,$name);
                $fileUrl =$uploadPath.$name;
            }else{
                $fileUrl = $update->image;
            }
           $update->fullName    =   $request->fullName;
           $update->phoneNumber =   $request->phoneNumber;
           $update->address     =   $request->address;
           $update->image       =   $fileUrl;
           $update->email       =   $request->email;
           $update->save();
         return response()->json(['status'=>'success','update'=>$update],200);
        }catch (ModelNotFoundException $ex) { // User not found
            abort(422, 'Invalid data');
        } catch (Exception $ex) { // Anything that went wrong
            abort(500, 'Internal error');
        }

    }
    public function verify(Request $request){
        $this->validate($request,[
            'verifyPin'=>'required',
        ]);
        $customer_id = getallheaders()['customer_id'];
        $verified=Customer::find($customer_id);
        $verifydbtoken = $verified->verifyToken;
        $verifyformtoken= $request->verifyPin;
       if($verifydbtoken==$verifyformtoken){
            $verified->verifyToken = 1;
            $verified->save();
            return response()->json(['status'=>'success'],200);
       }else{
        return response()->json(['status'=>'error'],422);
       }
    }
    public function resendverify(){
        $customer_id = getallheaders()['customer_id'];
        $findcustomer=Customer::find($customer_id);
        $verifyToken=rand(111111,999999);
        $findcustomer->verifyToken=$verifyToken;
        $findcustomer->save();

        // verify code send to customer mail
        $data=$findcustomer->toArray();
        $send = Mail::send('frontEnd.emails.email', $data, function($textmsg) use ($data){
          $textmsg->from('info@websolutionit.com');
          $textmsg->to($data['email']);
          $textmsg->subject('account veriry code');
        });
        $verifycode = $findcustomer->verifyToken;
        return response()->json(['status'=>'success','verifycode'=>$verifycode]);
    }
     public function forgetpassword(Request $request){
        $this->validate($request,[
            'email'=>'required',
        ]);
       $checkCustomer = Customer::where('email',$request->email)->first();
      if($checkCustomer){
        $passResetToken=rand(111111,999999);
        $checkCustomer->passResetToken=$passResetToken;
        $checkCustomer->save();
        // verify code send to customer mail
        $data = array(
         'contact_email' => $request->email,
         'passResetToken' => $passResetToken,
        );
        $send = Mail::send('frontEnd.emails.forgetpassword', $data, function($textmsg) use ($data){
         $textmsg->from('info@websolutionit.com');
         $textmsg->to($data['contact_email']);
         $textmsg->subject('Forget password code');
        });
        
        $forgettoken = $checkCustomer->passResetToken;
        return response()->json(['status'=>'success','forgettoken'=>$forgettoken]);
      }else{
        return response()->json(['status'=>'error','message'=>'Invalid email account'],422);
      }
    }
    public function fpassreset(Request $request){
        $this->validate($request,[
            'verifycode'=>'required',
            'newpassword'=>'required',
        ]);
       $customer_id = getallheaders()['customer_id'];
       $customerInfo = Customer::find($customer_id);
      if($customerInfo->passResetToken == $request->verifycode){
        $customerInfo->password=bcrypt(request('newpassword'));
        $customerInfo->passResetToken=NULL;
        $customerInfo->save();
         return response()->json(['status'=>'success'],200);
      }else{
        return response()->json(['status'=>'error','message'=>'Invalid verify code'],422);
      }
    }
    public function logout(){
        Auth::guard('customer')->logout();
        return response()->json(['status'=>'success']);
    }
    public function orderSave(Request $request){
         $validator =  Validator::make($request->all(),[
            'customer_name'=>'required',
            'phoneNumber'=>'required',
            'district'=>'required',
            'area'=>'required',
            'address'=>'required',
            'totalprice'=>'required',
        ]);
        if($validator->fails()){
            return response()->json([
                "error" => 'validation_error',
                "message" => $validator->errors(),
            ], 422);
        }
        $data = $request->all();
        if($data['cart']){
           $shipping              =   new Shipping();
           $shipping->name        =   $request->customer_name;
           $shipping->phone       =   $request->phoneNumber;
           $shipping->address     =   $request->address;
           $shipping->district    =   $request->district;
           $shipping->shippingfee =   $request->shippingfee;
           $shipping->area        =   $request->area;
           $shipping->note        =   $request->note;
           $shipping->customerId  =   Auth::guard('customer')->user()->id;
           $shipping->save();


           $order = new Order();
           $order->customerId = Auth::guard('customer')->user()->id;
           $order->shippingId = $shipping->id;
           $order->orderTotal = $request->totalprice;
           $order->discount   = $request->discount;
           $order->trackingId = rand(111111,999999);
           $order->created_at = Carbon::now();
           $order->save();

           
            foreach($data['cart'] as $cartitem){
                $orderDetails                   =   new Orderdetails();
                $orderDetails->orderId          =   $order->id;
                $orderDetails->ProductId        =   $cartitem['product_id'];
                $orderDetails->productName      =   $cartitem['product_name'];
                $orderDetails->productPrice     =   $cartitem['product_price'];
                $orderDetails->productSize      =   $cartitem['product_size'];
                $orderDetails->productColor     =   $cartitem['product_color'];
                $orderDetails->proPurchaseprice =   $cartitem['purchase_price'];
                $orderDetails->productQuantity  =   $cartitem['quantity'];
                $orderDetails->created_at       =   Carbon::now();
                $orderDetails->save();
            }
            
           $transectionId = uniqid();
           $payment                 = new Payment();
           $payment->orderId        = $order->id;
           $payment->paymentType    = $request->paymentType;
           $payment->senderId       = Null;
           $payment->transectionId  = $transectionId;
           $payment->transFee       = 0;
           $payment->status         = 'pending';
           $payment->save();
           
           if($request->paymentType=='online'){
                $post_data                  = array();
                $post_data['total_amount']  = $order->orderTotal;
                $post_data['product_category'] = "Goods";
                $post_data['product_name'] = "Computer";
                $post_data['product_category'] = "Goods";
                $post_data['product_profile'] = "physical-goods";
                $post_data['cus_name'] = $request->customer_name;
                $post_data['cus_email'] = 'shamim@gmail.com';
                $post_data['cus_phone'] = $request->phoneNumber;
                $post_data['cus_add1'] = $request->address;
                $post_data['cus_add2'] = $request->address;
                $post_data['cus_city'] = $request->district;
                $post_data['cus_postcode'] = "1000";
                $post_data['cus_country'] = 'Bangladesh';

                $post_data['ship_name']     = $request->customer_name;
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

                $update_product = DB::table('payments')
                ->where('transectionId', $post_data['tran_id'])
                ->updateOrInsert([
                    'status'   => 'Pending',
                    'transectionId' => $post_data['tran_id'],
                ]);

                $sslc = new SslCommerzNotification();
                $payment_options = $sslc->makePayment($post_data, 'hosted');

                if (!is_array($payment_options)) {
                    print_r($payment_options);
                    $payment_options = array();
                }
            }
            $customer_id = Auth::guard('customer')->user()->id;
            $order_id = $order->id;
          return response()->json(['status'=>'success','orderId'=>$order_id,'trackingId'=>$order->trackingId,'customer_id'=>$customer_id],200);

        }else{
            return response()->json(['status'=>'error','message'=>'Incorrect data'],422);
        }
    }
    public function onlinepayment($order_id,$customer_id){
         return response()->json(['status'=>'success','order_id'=>$order_id,'customer_id'=>$customer_id]);
    }
    public function onlinepaygen(Request $request){
        $orderInfo = Order::where('orderIdPrimary',$request->order_id)->first();
        $customerInfo = Customer::find($request->customer_id);
        $paymentInfo = Payment::where('orderId',$request->order_id)->first();

        $post_data                      = array();
        $post_data['total_amount']      = $orderInfo->orderTotal;
        $post_data['product_category']  = "Goods";
        $post_data['product_name'] = "Computer";
        $post_data['product_category']  = "Goods";
        $post_data['product_profile']   = "physical-goods";
        $post_data['cus_name']          = $customerInfo->fullName;
        $post_data['cus_email']         = 'shamim@gmail.com';
        $post_data['cus_phone']         = $customerInfo->phoneNumber;
        $post_data['cus_add1']          = $customerInfo->address;
        $post_data['cus_add2']          = $customerInfo->address;
        $post_data['cus_city']          = $customerInfo->district;
        $post_data['cus_postcode']      = "1000";
        $post_data['cus_country']       = 'Bangladesh';

        $post_data['ship_name']         = $customerInfo->fullName;
        $post_data['ship_add1']         = $customerInfo->address;
        $post_data['ship_add2']         = $customerInfo->address;
        $post_data['ship_city']         = $customerInfo->district;
        $post_data['ship_state']        = $customerInfo->area;
        $post_data['ship_postcode']     = "1000";
        $post_data['ship_phone']        = "";
        $post_data['ship_country']      = "Bangladesh";
        $post_data['currency']          = "BDT";
        $post_data['tran_id']           = $paymentInfo->transectionId;
        $post_data['shipping_method']   = 'online';

        $update_product = DB::table('payments')
        ->where('transectionId', $post_data['tran_id'])
        ->update([
            'status'   => 'Pending',
            'transectionId' => $post_data['tran_id'],
        ]);

        $sslc = new SslCommerzNotification();
        $payment_options = $sslc->makePayment($post_data, 'hosted');

        if (!is_array($payment_options)) {
            print_r($payment_options);
            $payment_options = array();
        }
        return response()->json(['status'=>'success']);
    }
    public function myorder(){
      $order = Order::where('customerId',Auth::guard('customer')->user()->id)->with('orderstatus')->get();
      return response()->json(['status'=>'success','order'=>$order]);
    }
    public function orderInvoice($order_id){
      $orderInfo=Order::where(['orderIdPrimary'=>$order_id, 'customerId'=>Auth::guard('customer')->user()->id])->with('orderstatus','customer','orderdetails','payment','shipping','orderdetails.invoiceimage')->first();
      if($orderInfo !=NULL){
      return response()->json(compact('orderInfo'),200);
      }else{
          return response()->json(['status'=>'error','message'=>'Invalid order id'],422);
      }
    }
     public function customerReview(Request $request){

      $this->validate($request,[
          'review'=>'required',
          ]);
          $review              =   new Review();
          $review->product_id  =   $request->product_id;
          $review->ratting     =   $request->ratting;
          $review->review      =   $request->review;
          $review->customer_id =   Auth::guard('customer')->user()->id;
          $review->created_at  =   Carbon::now();
          $review->save();

        return response()->json(['status'=>'success'],200);
    }
    public function ordercancel(Request $request){
        $orderfinds =  Order::where(['orderIdPrimary'=>$request->orderId,'customerId'=>Auth::guard('customer')->user()->id])->update(['cancelRequest'=>1]);
        return response()->json(['status'=>'success'],200);
    }
     public function coupon(Request $request){
      $findcoupon = Couponcode::where('couponcode',$request->couponcode)->first();
      if($findcoupon==NULL){
        return response()->json(['message'=>'Opps! Your enter coupon code not valid'],402);
      }else{
        $cartamount = $request->cartamount;
        $currentdata = date('Y-m-d');
        $expairdate=$findcoupon->expairdate;
        if($currentdata <= $expairdate){
         if($cartamount >= $findcoupon->buyammount){
           $useCode = CouponUsed::where(['customerId'=>Auth::guard('customer')->user()->id,'couponcode'=>$request->couponcode])->first();
           if($useCode!=NULL){
               return response()->json(['message'=>'Opps!  Sorry you already use this coupon'],402);
           }else{
               if($cartamount >= $findcoupon->buyammount){
                  if($findcoupon->offertype==1){
                    $discountammount =  (($cartamount*$findcoupon->amount)/100);
                    return response()->json(['message'=>'Success! Your coupon code accepted','amount'=>$discountammount],200);
                  }else{
                    $discountammount = $findcoupon->amount;
                    return response()->json(['message'=>'Success! Your coupon code accepted','amount'=>$discountammount],200);
                  }
                 
             }
           }
       }else{
         return response()->json(['message'=>'Opps!  Your total shopping amount not available for offer'],402);
       }
        }else{
          return response()->json(['message'=>'Opps! Sorry your promo code date expaire'],401);
        }
      }
    }
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => $this->guard()->factory()->getTTL() * 60*24*365
        ]);
    }
    public function guard()
    {
        return Auth::guard('customer');
    }
}
