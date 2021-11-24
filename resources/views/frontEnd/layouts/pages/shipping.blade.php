@extends('frontEnd.layouts.master')
@section('title','Shipping')
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
          <li><a class="anchor"><i class="fa fa-angle-right"></i></a></li>
          <li><a class="anchor">Shopping <i class="fa fa-angle-right"></i></a></li>
          @endif
          <li><a class="anchor">Shipping</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!--custom breadcrumb end-->
<section class="section-padding orderpage">
  <div class="container">
    <form action="{{url('customer/order/save')}}" method="POST" name="editForm" class="pcustform">
      @csrf
      <div class="row">
        <div class="col-lg-7 col-md-7 col-sm-7">
          <div class="show-cart-inner checkout cprofile-details">
            <div class="accordion" id="accordionExample">
              <div class="card">
                <div class="card-header" id="headingOne">
                  <h2 class="mb-0">
                    <button class="btn " type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                     <i class="fa fa-map-marker"></i> Shipping Address
                   </button>
                 </h2>
                </div>

                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                  <div class="card-body row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="fullName">Full Name *</label>
                        <input type="text" name="fullName" id="fullName" value="@if($shippingAddress!=NULL){{$shippingAddress->recipient}} @else @endif" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="phoneNumber">Phone Number *</label>
                        <input type="text" name="phoneNumber" id="phoneNumber" value="@if($shippingAddress!=NULL){{$shippingAddress->shippingPhone}} @else @endif" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      @php
                      $cusshippinginfo = App\Shippingaddress::where('customerId',Session::get('customerId'))->first();
                      $subtotal=Cart::instance('shopping')->subtotal();
                      $subtotal=str_replace(',','',$subtotal);
                      $subtotal=str_replace('.00', '',$subtotal);

                      $extrashipping = 0;
                      $cartitems = Cart::instance('shopping')->content();
                      foreach($cartitems as $cartitem){
                        $extrashipping +=$cartitem->options->extrashipping;
                      }

                      @endphp
                      <div class="form-group">
                        <label for="district">District *</label>
                        <select class="form-control{{ $errors->has('district') ? ' is-invalid' : '' }}"  id="district" name="district">
                          <option value="">Select...</option>
                          @foreach($districts as $district) 
                          <option value="{{$district->id}}" required>{{$district->name}}</option>
                          @endforeach
                        </select>
                        @if ($errors->has('district'))
                        <span class="invalid-feedback" role="alert">
                          <strong>{{ $errors->first('district') }}</strong>
                        </span>
                        @endif
                      </div>
                    </div>
                    <!-- /.form-group -->
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="area">Area *</label>
                        <select name="area" id="area" class="select2 form-control {{ $errors->has('area') ? ' is-invalid' : '' }}" value="{{ old('area') }} " required>
                          @if($areas!=NULL)
                          @foreach($areas as $area)
                          <option value="{{$area->id}}">{{$area->area}}</option>
                          @endforeach
                          @endif
                        </select>
                        @if ($errors->has('area'))
                        <span class="invalid-feedback" role="alert">
                          <strong>{{ $errors->first('area') }}</strong>
                        </span>
                        @endif
                      </div>
                    </div>
                    <!-- /.form-group -->

                    <div class="col-sm-12">
                      <div class="form-group">
                        <label for="address">Full Address *</label>
                        <textarea name="address" id="address" class="form-control {{ $errors->has('address') ? ' is-invalid' : '' }}">@if($shippingAddress!=NULL){{$shippingAddress->shippingAddress}} @else @endif</textarea>
                        @if ($errors->has('address'))
                        <span class="invalid-feedback" role="alert">
                          <strong>{{ $errors->first('address') }}</strong>
                        </span>
                        @endif
                      </div>
                    </div>
                    <!-- /.form-group -->
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label for="note">Note (optional)</label>
                        <textarea name="note" id="note" class="form-control {{ $errors->has('note') ? ' is-invalid' : '' }}" value="{{ old('note') }}"></textarea>
                        @if ($errors->has('note'))
                        <span class="invalid-feedback" role="alert">
                          <strong>{{ $errors->first('note') }}</strong>
                        </span>
                        @endif
                      </div>
                    </div>
                    <!-- /.form-group -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- col end -->

        <div class="col-lg-5 col-md-5 col-sm-5">
          <div class="shippingContent">
            <div class="coupon_code right">
              <h3>Cart Totals</h3>
              <div class="coupon_inner">
               <div class="cart_subtotal">
                 <p>Shopping</p>
                 <p class="cart_amount">{{Cart::instance('shopping')->content()->count()}} - (items)</p>
               </div>
               <div class="cart_subtotal">
                 <p>Subtotal</p>
                 <p class="cart_amount">৳ {{$subtotal}}</p>
               </div>
               <div class="cart_subtotal ">
                 <p>Shipping</p>

                 <p class="cart_amount">৳ @if(Session::get('shippingfee') !=NULL) {{Session::get('shippingfee') + $extrashipping}}  @else 0 @endif</p>
               </div>
               <div class="cart_subtotal">
                 <p>Discount</p>
                 <p class="cart_amount">৳  @if(Session::get('couponamount') !=NULL) {{Session::get('couponamount')}} @else 0 @endif</p>
               </div>
               <div class="cart_subtotal">
                 <p>Total</p>
                 <p class="cart_amount">৳  {{($subtotal + $extrashipping + Session::get('shippingfee')) - Session::get('couponamount')}}</p>
               </div>
             </div>

           </div>
         </div>
         <div class="card p-2">
            <div class="order_wrapper">
                <div class="form-group mt-2">
                    <h4>Select a payment method</h4>
                    <div class="mt-1">
                        @php
                            $PaypalSet = App\PaypalSet::first();
                            $StripeSet = App\StripeSet::first();
                            $CashOnDeliverySet = App\CashOnDeliverySet::first();
                        @endphp
                        <select class="form-control" name="payment_method" v-model="order.payment_method" required id="payments">
                            <option>Seletct Payment Method</option>
                            @if ($CashOnDeliverySet)
                                @if ($CashOnDeliverySet->status == 1)
                                    <option value="cash_in">Cash On Delivery</option>
                                @endif
                            @endif

                            @if ($StripeSet)
                                @if ($StripeSet->Status == 1)
                                    <option value="stripe">Stripe</option>
                                @endif
                            @endif

                            @if ($PaypalSet)
                                @if ($PaypalSet->Status == 1)
                                    <option value="paypal">Paypal</option>
                                @endif
                            @endif

                            
                        </select>

                        <div id="payment_stripe" class="d-none box box-primary bg-light border mt-2">
                            <h4 class="bg-warning text-center">Stripe</h4>
                            <div class="">
                                <img class="img-fluid float-right" src="{{ asset('public/images/card.png') }}">
                            </div>

                            <form role="form" action="{{ route('payment_pay_store') }}" method="post" class="require-validation" data-cc-on-file="false" data-stripe-publishable-key="pk_test_T5wFaZtvqWHXkrOcBvUSC7Gl00UkI7ZYIk" id="payment-form">
                                @csrf
                                <input type="hidden" name="order_id" value="">
                                <input type="hidden" name="totalAmount" value="">

                                <div class="box-body pt-5 pb-4 pr-4 pl-4">
                                    <div class="form-group mb-1">
                                        <label class='control-label mb-0'>Card holder Name</label>
                                        <input class='form-control-sm w-100' size='4' type='text' name="holder_name">
                                    </div>
                                    <div class="form-group mb-1">
                                        <label class='control-label mb-0'>Card Number</label>
                                        <input autocomplete='off' class='form-control-sm w-100 card-number' size='20' type='text'>
                                    </div>
                                    <div class='form-row row'>
                                        <div class='col-xs-12 col-md-4 form-group cvc required'>
                                            <label class='control-label mb-0'>CVC</label>
                                            <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text'>
                                        </div>
                                        <div class='col-xs-12 col-md-4 form-group expiration required'>
                                            <label class='control-label  mb-0'>Expiration Month</label>
                                            <input class='form-control-sm w-100 card-expiry-month' placeholder='MM' size='2' type='text'>
                                        </div>
                                        <div class='col-xs-12 col-md-4 form-group expiration required'>
                                            <label class='control-label  mb-0'>Expiration Year</label>
                                            <input class='form-control-sm w-100 card-expiry-year' placeholder='YYYY' size='4' type='text'>
                                        </div>
                                    </div>
                                    <div class="box-footer">
                                        <button type="submit" class="btn btn-warning btn-block">Pay Now</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div id="payment_paypal" class="d-none box box-primary bg-light border mt-2 d-none">
                            <h4 class="bg-warning text-center">Paypal</h4>
                            <div class="p-3 m-3 border" id="paypal-button-container"></div>
                        </div>  

                        <div id="payment_cash_in" class="d-none">
                            <form role="form" action="{{ route('payment_pay_cash_in') }}" method="post">
                                @csrf
                                <input type="hidden" name="order_id" value="">
                                <input type="hidden" name="totalAmount" value="">
                                <input type="hidden" name="payment_method" value="cash_in_delivery">

                                <div class="alert alert-success mt-2 mb-2 text-center">
                                  <div class="text-center alert-warning">
                                      <p style="font-size: 11px;">[N.B Shipping Cost is Added]</p>
                                  </div>
                                </div>
                                <div class="order_button">
                                    <button type="submit" class="btn btn-primary">Order Confirmed</button>
                                </div>
                             </form>
                        </div>
                    </div>
                </div>
            </div>
         </div>
      </div>
  </div>
</form>
</div>
</section>
@if($shippingAddress !=NULL)
<script type="text/javascript">
  document.forms['editForm'].elements['district'].value="{{$shippingAddress->district}}"
  document.forms['editForm'].elements['area'].value="{{$shippingAddress->area}}"
</script>
@endif

<script type="text/javascript">
$("#payments").change(function(){
    $payment_method = $("#payments").val();
    if ($payment_method == "stripe") {
        console.log('stripe');
        $("#payment_stripe").removeClass('d-none');
        $("#payment_cash_in").addClass('d-none')
        $("#payment_paypal").addClass('d-none')

    }else if($payment_method == "paypal") {
        console.log('paypal');
        $("#payment_paypal").removeClass('d-none');
        $("#payment_cash_in").addClass('d-none');
        $("#payment_stripe").addClass('d-none');

    }else if($payment_method == "cash_in") {
        console.log('cash_in');
        $("#payment_cash_in").removeClass('d-none');
        $("#payment_stripe").addClass('d-none');
        $("#payment_paypal").addClass('d-none');

    }
})
</script>


<script src="https://www.paypal.com/sdk/js?client-id={{$PaypalSet->ClientId}}&currency={{$PaypalSet->currency}}"></script>
<script>
  paypal.Buttons({
    createOrder: function(data, actions) {
      // Set up the transaction
      return actions.order.create({
        purchase_units: [{
          amount: {
            value: {{($subtotal + $extrashipping + Session::get('shippingfee')) - Session::get('couponamount')}},
              currency: 'USD'
          }
        }],
      });
    },
    onApprove: function(data, actions) {
      // Capture the funds from the transaction
      return actions.order.capture().then(function(details) {
          // Show a success message to your buyer
          var orderId = "";
          var paymentType = "";
          var senderId = "";
          var transectionId = "";
          $.ajax({
            url: "gggggg",
            method: "POST",
            dataType: "JSON",
            data: {cdetails:details, orderId: orderId, paymentType: paymentType, senderId: senderId, transectionId: transectionId, _token: '{{csrf_token()}}'},
            success: function (res) {
              console.log(res);
              Swal.fire('Transaction completed by ' + details.payer.name.given_name + '! Please check your mail');
              window.setTimeout(function () {
                window.location = 'ssssssssssss';
              }, 3000);
            }
          });
        });
    }
  }).render('#paypal-button-container');
</script>


<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<script type="text/javascript">
    $(function() {
        var $form = $(".require-validation");

        $('form.require-validation').bind('submit', function(e) {
            var $form         = $(".require-validation"),
                inputSelector = ['input[type=email]', 'input[type=password]',
                    'input[type=text]', 'input[type=file]',
                    'textarea'].join(', '),
                $inputs       = $form.find('.required').find(inputSelector),
                $errorMessage = $form.find('div.error'),
                valid         = true;
            $errorMessage.addClass('hide');

            $('.has-error').removeClass('has-error');
            $inputs.each(function(i, el) {
                var $input = $(el);
                if ($input.val() === '') {
                    $input.parent().addClass('has-error');
                    $errorMessage.removeClass('hide');
                    e.preventDefault();
                }
            });

            if (!$form.data('cc-on-file')) {

                e.preventDefault();
                Stripe.setPublishableKey($form.data('stripe-publishable-key'));
                Stripe.createToken({
                    number: $('.card-number').val(),
                    cvc: $('.card-cvc').val(),
                    exp_month: $('.card-expiry-month').val(),
                    exp_year: $('.card-expiry-year').val()
                }, stripeResponseHandler);
            }

        });

        function stripeResponseHandler(status, response) {
            if (response.error) {
                $('.error')
                    .removeClass('hide')
                    .find('.alert')
                    .text(response.error.message);

            } else {
                // res ponse token contains id, last4, and card type
                var token = response['id'];
                // insert the token into the form so it gets submitted to the server
                $form.find('input[type=text]').empty();
                $form.append("<input type='hidden' name='stripeToken' value='" + token + "'/>");
                $form.get(0).submit();
            }
        }

    });
</script>

@endsection