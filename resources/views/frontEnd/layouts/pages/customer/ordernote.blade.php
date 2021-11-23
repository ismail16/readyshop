 @extends('frontEnd.layouts.master')
 @section('title','Order View')
 @section('content')
    <section class="section-padding">
       <div class="container">
         <div class="row justify-content-center">
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="ordernote">
                  <img src="{{asset('public/frontEnd/images/celebration-party.png')}}"/>
                  <h3>Your order is complate</h3>
                  <p>Dear {{$customerInfo->fullName}}, Your order has been place successfully, Order Tracking ID is : {{$orderInfo->trackingId}}</p>
                  <a href="{{url('customer/order/invoice/'.$orderInfo->orderIdPrimary)}}">View Invoice</a>
              </div>
            </div>
          </div>
       </div>
    </section>
    @endsection