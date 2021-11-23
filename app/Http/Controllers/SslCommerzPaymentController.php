<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Library\SslCommerz\SslCommerzNotification;
use Cart;
use Session;
use Brian2694\Toastr\Facades\Toastr;
class SslCommerzPaymentController extends Controller
{

    public function success(Request $request)
    {
        $tran_id = $request->input('tran_id');
        $sslc = new SslCommerzNotification();

        $order_detials = DB::table('payments')
            ->where('transectionId', $tran_id)
            ->select('transectionId', 'status','orderId')->first();
        if ($order_detials->status == 'Pending') {
            $validation = $sslc->orderValidate($request->all(),$tran_id);
            if ($validation == TRUE) {
                $update_product = DB::table('payments')
                    ->where('transectionId', $tran_id)
                    ->update(['status' => 'Processing']);

                // echo "<br >Transaction is successfully Completed";
            } else {
                $update_product = DB::table('payments')
                    ->where('transectionId', $tran_id)
                    ->update(['status' => 'Failed']);
                echo "validation Fail";
            }
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            // echo "Transaction is successfully Completed";
        } else {
            // echo "Invalid Transaction";
        }
      Cart::instance('shopping')->destroy();
      Session::forget('usecouponcode');
      Session::forget('couponamount');
      Toastr::success('Thanks, Your order send successfully', 'Success!');
      return redirect('customer/order-complete/'.$order_detials->orderId);


    }

    public function fail(Request $request)
    {
        $tran_id = $request->input('tran_id');
        $order_detials = DB::table('payments')
            ->where('transectionId', $tran_id)
            ->select('transectionId', 'status','orderId')->first();

        if ($order_detials->status == 'Pending') {
            $update_product = DB::table('payments')
                ->where('transectionId', $tran_id)
                ->update(['status' => 'Failed']);
            // echo "Transaction is Falied";
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            // echo "Transaction is already Successful";
        } else {
            // echo "Transaction is Invalid";
        }
      Cart::instance('shopping')->destroy();
      Session::forget('usecouponcode');
      Session::forget('couponamount');
      Toastr::success('Thanks, Your order send successfully', 'Success!');
      return redirect('customer/order-complete/'.$order_detials->orderId);
      

    }

    public function cancel(Request $request)
    {
        $tran_id = $request->input('tran_id');
        $order_detials = DB::table('payments')
            ->where('transectionId', $tran_id)
            ->select('transectionId', 'status','orderId')->first();

        if ($order_detials->status == 'Pending') {
            $update_product = DB::table('payments')
                ->where('transectionId', $tran_id)
                ->update(['status' => 'Canceled']);
            // echo "Transaction is Cancel";
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            // echo "Transaction is already Successful";
        } else {
            // echo "Transaction is Invalid";
        }
      Cart::instance('shopping')->destroy();
      Session::forget('usecouponcode');
      Session::forget('couponamount');
      Toastr::success('Thanks, Your order send successfully', 'Success!');
      return redirect('customer/order-complete/'.$order_detials->orderId);


    }

    public function ipn(Request $request)
    {
        if ($request->input('tran_id')) 
        {
            $tran_id = $request->input('tran_id');
            $order_details = DB::table('payments')
                ->where('transectionId', $tran_id)
                ->select('transectionId', 'status'.'orderId')->first();
            if ($order_details->status == 'Pending') {
                $sslc = new SslCommerzNotification();
                $validation = $sslc->orderValidate($request->all(), $tran_id);
                if ($validation == TRUE) {
                    $update_product = DB::table('payments')
                        ->where('transectionId', $tran_id)
                        ->update(['status' => 'Processing']);

                    echo "Transaction is successfully Completed";
                } else {
                    $update_product = DB::table('payments')
                        ->where('transectionId', $tran_id)
                        ->update(['status' => 'Failed']);
                    echo "validation Fail";
                }

            } else if ($order_details->status == 'Processing' || $order_details->status == 'Complete') {
                echo "Transaction is already successfully Completed";
            } else {
                echo "Invalid Transaction";
            }
        } else {
            echo "Invalid Data";
        }
    }

}
