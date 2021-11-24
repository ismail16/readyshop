<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\PaypalSet;
use App\StripeSet;
use App\twoCheckoutSet;
use App\CashOnDeliverySet;

class SetPaymentController extends Controller
{


    public function paypalEdit($id)
    {
        $paypal = PaypalSet::first();
        return view('backEnd.SetPayment.paypal',compact('paypal'));
    }

    public function paypalUpdate(Request $request, $id)
    {
        $paypal = PaypalSet::find($id);
        $paypal->title = 'Paypal';
        $paypal->ClientId = $request->ClientId;
        $paypal->currency = 'USD';
        $paypal->Secret = $request->Secret;
        $paypal->Description = 'Set Paypal Account !!';
        $paypal->Status = $request->Status;
        $paypal->SandboxStatus = $request->SandboxStatus;
        $paypal->save();
        return back()->with('message', 'Paypal Payment Configured Successfully !');
    }

    public function stripeEdit($id)
    {
        $stripe = StripeSet::first();
        return view('backEnd.SetPayment.stripe',compact('stripe'));
    }

    public function stripeUpdate(Request $request, $id)
    {
        $stripe = StripeSet::find($id);
        $stripe->title = 'Stripe';
        $stripe->SecretKey = $request->SecretKey;
        $stripe->PublishableKey = $request->PublishableKey;
        $stripe->Description = 'Set Stripe Account !!';
        $stripe->Status = $request->Status;
        $stripe->SandboxStatus = $request->SandboxStatus;
        $stripe->save();
        return back()->with('message', 'Stripe Payment Configured Successfully !');
    }

    public function CashOnDeliveryEdit($id)
    {
        $CashOnDelivery = CashOnDeliverySet::first();
        return view('backEnd.SetPayment.CashOnDelivery',compact('CashOnDelivery'));
    }

    public function CashOnDeliveryUpdate(Request $request, $id)
    {
        
        $CashOnDelivery = CashOnDeliverySet::find($id);
        $CashOnDelivery->title = $request->title;
        $CashOnDelivery->description = $request->description;
        $CashOnDelivery->status = $request->status;
        $CashOnDelivery->save();
        return back()->with('message', 'Cash On Delivery Payment Configured Successfully !');
    }

}
