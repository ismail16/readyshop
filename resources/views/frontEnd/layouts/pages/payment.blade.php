@extends('frontEnd.layouts.master')
@section('title','Payment')
@section('content')
	<!--common html-->
        <div class="custom-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>
                        	@include('frontEnd.layouts.includes.sidebar')
                            <li><a href="{{url('/')}}"><i class="fa fa-home"></i> Home</a></li>
                            @if(Cart::content())
                            <li><a class="anchor"><i class="fa fa-long-arrow-right"></i></a></li>
                            <li><a class="anchor">Shopping <i class="fa fa-long-arrow-right"></i></a></li>
                            <li><a class="anchor">Shipping <i class="fa fa-long-arrow-right"></i></a></li>
                            @endif
                            <li><a class="anchor">Payment</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
		 <section class="section-padding payment">
		    <div class="container">
		      	<div class="row">
		            <div class="col-lg-6 col-md-6 col-sm-6">
				    	<form action="{{url('payment/method')}}" method="POST">
				    		<div class="row">
					    		<div class="col-lg-12 col-md-12 col-sm-12">
						             @csrf
										<ul class="payment-radio">
										  <li>
										  	<input type="radio" name="paymentType" value="cash" id="radio01" class="{{ $errors->has('paymentType') ? ' is-invalid' : '' }}" required="required" /><label for="radio01"> <img src="{{asset('public/frontEnd/images/cashondelivery.png')}}"> <p>cash on delivery</p><small>(Pay to delivery man)</small></label>
										  	@if ($errors->has('paymentType'))
					                          <span class="invalid-feedback" role="alert">
					                            <strong>{{ $errors->first('paymentType') }}</strong>
					                          </span>
					                          @endif

										  </li>
										  <li>
										  	<input type="radio" name="paymentType" value="bkash" id="radio02" class="{{ $errors->has('paymentType') ? ' is-invalid' : '' }}" required="required" /><label for="radio02"><img src="{{asset('public/frontEnd/images/bkash.png')}}"/> <p>Bkash Payment</p><small>(017xx-xxxxxx)</small></label>
										  	@if ($errors->has('paymentType'))
					                          <span class="invalid-feedback" role="alert">
					                            <strong>{{ $errors->first('paymentType') }}</strong>
					                          </span>
					                          @endif
										  </li>
										  <li>
										  	<input type="radio" name="paymentType" value="roket" id="radio03" class="{{ $errors->has('paymentType') ? ' is-invalid' : '' }}" required="required" /><label for="radio03"><img src="{{asset('public/frontEnd/images/roket.jpg')}}"/> <p>Roket</p><small>(018xx-xxxxxx)</small></label>
										  	@if ($errors->has('paymentType'))
					                          <span class="invalid-feedback" role="alert">
					                            <strong>{{ $errors->first('paymentType') }}</strong>
					                          </span>
					                          @endif
										  </li>
										</ul>
					    			</div>
						    		<div class="col-sm-12">
										<div class="submit-button">
											<input type="submit"  value="Confirm Order">
										</div>
									</div>
				    			</div>
					      </form>
				    	<!-- row end -->
					  </div>
					  <!-- col end -->
					  <div class="col-lg-6 col-md-6 col-sm-6">
	                    <div class="coupon_code right">
	                        <h3>Cart Totals</h3>
	                        <div class="coupon_inner">
	                           <div class="cart_subtotal">
	                               <p>Shopping</p>
	                               <p class="cart_amount">{{Cart::instance('shopping')->content()->count()}} - (items)</p>
	                           </div>
	                           <div class="cart_subtotal">
	                               <p>Subtotal</p>
	                               <p class="cart_amount">{{ $setting->currency }} {{Cart::subtotal()}}</p>
	                           </div>
	                           <div class="cart_subtotal ">
	                               <p>Shipping</p>
	                               @foreach($shippingCharg as $shipping)
	                               <p class="cart_amount"><span>{{$shipping->location}}:</span> {{$shipping->price}}</p>
	                               @endforeach
	                           </div>
	                           <div class="cart_subtotal">
	                               <p>Total <span style="color: #D94939">(without shipping charge)</span></p>
	                               <p class="cart_amount">{{ $setting->currency }}  {{Cart::subtotal()}}</p>
	                           </div>
	                        </div>
	                    </div>
	                </div>
				</div>
				 <!-- first row end -->
			</div>
		</section>
@endsection