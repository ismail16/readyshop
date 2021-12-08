<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>@yield('title','Welcome to Trusted Retail Store')  | Ready Shop</title>
    <!--website title-->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width,height=device-height, initial-scale=1.0, minimum-scale=1.0">
    @foreach($favicon as $key=>$value)
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset($value->image)}}">
    <link rel="icon" rel="apple-touch-icon" sizes="120x120" href="{{asset($value->image)}}"/>
    @endforeach
    <!--faveicon image-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/bootstrap.min.css">
    <!--bootstrap css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/animate.css">
    <!--animate css>-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/font-awesome.min.css">
    <!--font awesome css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/line-awesome.min.css">
    <!--line-awesome.min-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/owl.carousel.min.css">
    <!--owl.carousel.min.css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/owl.theme.default.min.css">
    <!--owl.theme.default.min-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/swiper.min.css">
    <!-- swiper slider -->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/mobile-menu.css">
    <!--mobilemenu css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/jquery.mtree.css">
    <!-- nice select -->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/nice-select.css">
      <!-- toastr css -->
    <link rel="stylesheet" href="{{asset('public/backEnd')}}/css/toastr.min.css">
    <!--mtree css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/mtree.css">
    <!--news.css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/zoom.css">
    <!--zoom.css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/style.css">
    <!--style css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/responsive.css">
    <!--responsive css-->
    <script src="{{asset('public/frontEnd/')}}/js/jquery-3.3.1.min.js"></script>
    <!--jquery library-->
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
     <!-- ajax library -->
<script>
    $(function(){

    $('.navigation .toggle-wrapper .show').on('click',function(){
      $('.navigation').addClass('open');
    });
    $('.navigation .toggle-wrapper .hide').on('click',function(){
      $('.navigation').removeClass('open');
    });
    $('.navigation .has-menu a').on('click',function(e){
      e.stopPropagation();
    });
    $('.navigation .has-menu').on('click',function(){
      $(this).toggleClass('open');
    });
  
    });
   </script>

</head>

<body class="gotop">

<!--custom breadcrumb end-->
<section class="section-padding orderpage">
  <div class="container">
      <div class="row d-flex justify-content-center">
        <div class="col-lg-5 col-md-5 col-sm-5">
          <div class="alert alert-success mt-2 mb-2 text-center">
            <div class="text-center alert-warning">

                <?php $order = App\Order::where('orderIdPrimary', $order_id)->first(); ?>

                <span class="h5">Total Payment  - ${{($order->orderTotal + Session::get('shippingfee')) - Session::get('couponamount')}}</span>
                
            </div>
          </div>
         <div class="card p-2">
            <div class="order_wrapper">
                <div class="form-group mt-2">
                    <h4 class="text-left">Select a payment method</h4>
                    <div class="mt-1">
                        @php
                            $PaypalSet = App\PaypalSet::first();
                            $StripeSet = App\StripeSet::first();
                        @endphp
                        <select class="form-control border-primary" name="payment_method" v-model="order.payment_method" required id="payments">
                            <option>Seletct Payment Method</option>
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
        $("#payment_paypal").addClass('d-none')

    }else if($payment_method == "paypal") {
        console.log('paypal');
        $("#payment_paypal").removeClass('d-none');
        $("#payment_stripe").addClass('d-none');

    }else if($payment_method == "cash_in") {
        console.log('cash_in');
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
              window.setTimeout(function () {
                window.location = "{{route('order_complete', $order->orderIdPrimary)}}"; 
              }, 2000);
            }
          });

        });
    }
  }).render('#paypal-button-container');
</script>

</body>

</html>
