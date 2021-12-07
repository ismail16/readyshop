@php
    $subtotal=Cart::instance('shopping')->subtotal();
    $subtotal=str_replace(',','',$subtotal);
    $subtotal=str_replace('.00', '',$subtotal);
    $extrashipping = 0;
      $cartitems = Cart::instance('shopping')->content();
      foreach($cartitems as $cartitem){
        $extrashipping +=$cartitem->options->extrashipping;
      }
    $shippingfee=Session::get('shippingfee');
  @endphp

<div class="coupon_code right">
  <h3>Cart Totals2</h3>
  <div class="coupon_inner">
     <div class="cart_subtotal">
         <p>Shopping</p>
         <p class="cart_amount">{{Cart::instance('shopping')->content()->count()}} - (items)</p>
     </div>
     <div class="cart_subtotal">
         <p>Subtotal</p>
         <p class="cart_amount">{{ $setting->currency }} {{$subtotal}}</p>
     </div>
     <div class="cart_subtotal ">
         <p>Shipping</p>
         <p class="cart_amount">{{ $setting->currency }} {{$shippingfee+$extrashipping}}</p>
     </div>
     <div class="cart_subtotal">
       <p>Discount</p>
       <p class="cart_amount">{{ $setting->currency }}  @if(Session::get('couponamount') !=NULL) {{Session::get('couponamount')}} @else 0 @endif</p>
   </div>
     
     <div class="cart_subtotal">
         <p>Total</p>
         <p class="cart_amount">{{ $setting->currency }} {{($subtotal+$shippingfee+$extrashipping) - Session::get('couponamount')}}</p>
     </div>
  </div>
</div>