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
          <li><a class="anchor"><i class="fa fa-angle-right"></i></a></li>
          <li><a class="anchor">Shopping <i class="fa fa-angle-right"></i></a></li>
          @endif
          <li><a class="anchor">Payment</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!--custom breadcrumb end-->
<section class="section-padding orderpage">
  <div class="container">
      <div class="row d-flex justify-content-center">
        <div class="col-lg-5 col-md-5 col-sm-5">
          <div class="alert alert-success mt-2 mb-2 text-center">
            <div class="text-center alert-warning">
                <span class="h5">Total Payment  - ${{($order->orderTotal + Session::get('shippingfee')) - Session::get('couponamount')}}</span>
            </div>
            {{ $order }}
          </div>
         <div class="card p-2">
            <div class="order_wrapper">
                <div class="form-group mt-2">
                    <h4 class="text-left">Select a payment method</h4>
                    <div class="mt-1">
                        @php
                            $PaypalSet = App\PaypalSet::first();
                            $StripeSet = App\StripeSet::first();
                            $CashOnDeliverySet = App\CashOnDeliverySet::first();
                        @endphp
                        <select class="form-control border-primary" name="payment_method" v-model="order.payment_method" required id="payments">
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

                        <div id="payment_stripe" class="d-none box box-primary text-left bg-light border mt-2">
                            <h4 class="bg-warning text-center">Stripe</h4>
                            <div class="">
                                <img class="img-fluid float-right" src="{{ asset('public/images/card.png') }}">
                            </div>
                            <form role="form" action="{{url('customer/order/payemnt/stripe')}}" method="post" class="require-validation" data-cc-on-file="false" data-stripe-publishable-key="{{$StripeSet->PublishableKey}}" id="payment-form">
                                @csrf
                                <input type="hidden" name="orderID" value="{{ $order->orderIdPrimary }}">
                                <input type="hidden" name="paymentType" value="stripe">

                                <div class="box-body pt-5 pb-4 pr-4 pl-4">
                                    <div class="form-group mb-1">
                                        <label class='control-label mb-0'>Card holder Name</label>
                                        <input class='form-control-sm border w-100' size='4' type='text' name="holder_name">
                                    </div>
                                    <div class="form-group mb-1">
                                        <label class='control-label mb-0'>Card Number</label>
                                        <input autocomplete='off' class='form-control-sm w-100 border card-number' size='20' type='text'>
                                    </div>
                                    <div class='form-row row'>
                                        <div class='col-xs-12 col-md-4 form-group cvc required'>
                                            <label class='control-label mb-0'>CVC</label>
                                            <input autocomplete='off' class='border form-control-sm w-100 card-cvc' placeholder='ex. 311' size='4' type='text'>
                                        </div>
                                        <div class='col-xs-12 col-md-4 form-group expiration required'>
                                            <label class='control-label  mb-0'>Expiration Month</label>
                                            <input class='border form-control-sm w-100 card-expiry-month' placeholder='MM' size='2' type='text'>
                                        </div>
                                        <div class='col-xs-12 col-md-4 form-group expiration required'>
                                            <label class='control-label  mb-0'>Expiration Year</label>
                                            <input class='border form-control-sm w-100 card-expiry-year' placeholder='YYYY' size='4' type='text'>
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
                            <form role="form" action="{{ route('payment_pay_store') }}" method="post">
                                @csrf
                                <input type="hidden" name="paymentType" value="cash_on_delivery">
                                <input type="hidden" name="orderID" value="{{ $order->orderIdPrimary }}">
                                <div class="order_button mt-2">
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

</div>
</section>


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


<script src="https://www.paypal.com/sdk/js?client-id={{$PaypalSet->ClientId}}&currency={{$PaypalSet->currency}}"></script>
<script>
  paypal.Buttons({
    createOrder: function(data, actions) {
      // Set up the transaction
      return actions.order.create({
        purchase_units: [{
          amount: {
            value: {{($order->orderTotal + Session::get('shippingfee')) - Session::get('couponamount')}},
            currency: 'USD'
          }
        }],
      });
    },
    onApprove: function(data, actions) {
      // Capture the funds from the transaction
      return actions.order.capture().then(function(details) {
          // Show a success message to your buyer
          var orderID = "{{ $order->orderIdPrimary }}";
          var paymentType = "Paypal";
          $.ajax({
            url: "{{route('payment_pay_paypal')}}",
            method: "POST",
            dataType: "JSON",
            data: {cdetails:details, orderID: orderID, paymentType: paymentType, _token: '{{csrf_token()}}'},
            success: function (res) {
              toastr.success('Thanks, Your order Save successfully', 'Success!')
              window.setTimeout(function () {
                window.location = "{{route('order_complete', $order->orderIdPrimary)}}"; 
              }, 2000);
            }
          });

        });
    }
  }).render('#paypal-button-container');
</script>

@endsection