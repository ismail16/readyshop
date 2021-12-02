@php
  $subtotal=Cart::instance('shopping')->subtotal();
  $subtotal=str_replace(',','',$subtotal);
  $subtotal=str_replace('.00', '',$subtotal);
@endphp
<div class="coupon_code right">
    <h3>Cart Totals</h3>
    <div class="coupon_inner">
       <div class="cart_subtotal">
           <p>Shopping</p>
           <p class="cart_amount">{{Cart::instance('shopping')->content()->count()}} - (items)</p>
       </div>
       <div class="cart_subtotal">
           <p>Subtotal</p>
           <p class="cart_amount">{{ session()->get('setting')->currency }} {{$subtotal}}</p>
       </div>
       <div class="cart_subtotal ">
           <p>Shipping</p>
           
           <p class="cart_amount"> {{$shippingfee}}</p>
       </div>
       <div class="cart_subtotal ">
           <p>Payment Charge</p>
           
           <p class="cart_amount"> {{$bkashfee}}</p>
       </div>
       <div class="cart_subtotal">
           <p>Total</p>
           <p class="cart_amount">{{ session()->get('setting')->currency }}  {{$subtotal+$shippingfee+$bkashfee}}</p>
       </div>
    </div>
</div>