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
                    <div class="card">
                          <div id="" class="" aria-labelledby="" data-parent="#">
                            <div class="card-body">
                              <div class=" set-shipping">
                                <div class="select-payment-option">
                                    <input type="hidden" type="radio">
                                    @foreach($paymentmethods as $key=>$paymentmethod)
                                    <div class="form-group paymentItem">
                                      <label for="{{$paymentmethod->value}}" class="cbutton"> 
                                        <input type="radio" id="{{$paymentmethod->value}}" value="{{$paymentmethod->value}}" class="paymentoption" name="paymentType"> {{$paymentmethod->title}}
                                        @if($paymentmethod->value=='online')
                                        <img src="{{asset('public/frontEnd')}}/images/sslcommerz.png">
                                        @endif
                                      </label>
                                      <div  class="{{$paymentmethod->form}}">
                                        <div class="form-group">
                                            <p>{!!$paymentmethod->text!!}</p>
                                        </div>
                                        <div class="form-group">
                                          <button type="submit" class="btn btn-primary">Confirm Order</button>
                                      </div>
                                    </div>
                                    </div>
                                    @endforeach
                                  </div>
                              </div>
                              <!--login content end-->
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
   
  <script>  
    $(document).ready(function(){
          $('.codform').hide();
          $('.onlineform').hide();
        $('.paymentoption').on('click', function() {
          var id = $(this).val();
            if(id=="cash"){
              $('.codform').show();
              $('.onlineform').hide();
               console.log('cashform');
            }
            else if(id=='online'){
              $('.codform').hide();
              $('.onlineform').show();
                console.log('onlineform');
            }
            else if(id==''){
              $('.codform').show();
              $('.onlineform').hide();
              console.log('null');
            }
        });
        $('.cbutton').on('click', function() {
           $(this).addClass('active');
           $('.bbutton').removeClass('active');
           
        });
        $('.bbutton').on('click', function() {
           $(this).addClass('active');
           $('.cbutton').removeClass('active');
        });
         
    });
    </script>
    <script>
    (function (window, document) {
        var loader = function () {
            var script = document.createElement("script"), tag = document.getElementsByTagName("script")[0];
            script.src = "https://sandbox.sslcommerz.com/embed.min.js?" + Math.random().toString(36).substring(7);
            tag.parentNode.insertBefore(script, tag);
        };

        window.addEventListener ? window.addEventListener("load", loader, false) : window.attachEvent("onload", loader);
    })(window, document);
</script>
 @endsection