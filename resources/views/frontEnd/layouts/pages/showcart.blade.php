@extends('frontEnd.layouts.master')
@section('title','Show Cart')
@section('content')
<!--common html-->
        <div class="custom-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>
                            @include('frontEnd.layouts.includes.sidebar') 
                            <li><a href="{{url('/')}}"><i class="fa fa-home"></i> Home</a></li>
                            <li><a class="anchor"><i class="fa fa-angle-right"></i></a></li>
                            <li><a class="anchor">Shopping <i class="fa fa-angle-right"></i></a></li>
                            <li><a class="anchor">Cart</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--custom breadcrumb end-->
                <!--custom breadcrumb end-->
        <section class="productarea section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="show-cart-body">
                            <table class="table table-bordered table-responsive-sm">
                                  <thead>
                                    <tr  class="thead-light">
                                      <th scope="col">Image</th>
                                      <th scope="col">Product</th>
                                      <th scope="col">Quantity</th>
                                      <th scope="col" class="mcart-item-hide">Price</th>
                                      <th scope="col">Total</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                     @foreach($cartInfos as $cartInfo)
                                    <tr>
                                      <td><img src="{{asset($cartInfo->options->image)}}" style="width: 50px max-height:50px;" class="show-cart-image" alt=""></td>
                                      <td> <a class="anchor" class="pcart-name">{{$cartInfo->name}}</a></td>
                                      <td><div class="cart-quantity text-center">
                                            <form action="{{url('/update-cart')}}" method="POST" class="cart-update">
                                                    @csrf
                                                    <input type="hidden" name="rowId" value="{{$cartInfo->rowId}}">
                                                    <input type="text" name="quantity" class="" min="1" value="{{$cartInfo->qty}}" min="1">
                                                <button type="submit" class="btn btn-info"><i class="fa fa-refresh"></i></button>
                                            </form>
                                              <form action="{{url('/delete-cart')}}" method="POST" class="cart-delete">
                                               @csrf
                                               <input type="hidden" name="rowId" value="{{$cartInfo->rowId}}">
                                              <button type="submit" class="btn btn-danger"><i class="fa  fa-times-circle"></i></button>
                                            </form>
                                        </div>
                                    </td>
                                    <td class="mcart-item-hide">{{ $setting->currency }} {{$cartInfo->price}}</td>
                                    <td> {{ $setting->currency }} @php $subtotal= $cartInfo->qty*$cartInfo->price @endphp {{$subtotal}}</td>
                                    </tr>
                                    @endforeach
                                  </tbody>
                                </table>
                             </div>
                        </div>
                    </div>
                 <!--row end-->
                 <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6">
                         <div class="cuppon-apply">
                          <form action="{{url('coupon/customer/apply')}}" method="POST">
                            @csrf
                            <p>Apply Promo Code </p>
        
                            <div class="form-group">
                              <input type="text" name="couponcode" class="discountfield" placeholder="Enter Promo Code">
                              <input type="submit" value="apply discount" class="discountbtn"  onclick="return confirm('Are You Want Apply Discount')">
                            </div>
                          </form>
                         </div>
                     </div>
                     <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="coupon_code right">
                                <h3>Cart Totals</h3>
                                <div class="coupon_inner">
                                   <div class="cart_subtotal">
                                       <p>Shopping</p>
                                       <p class="cart_amount">{{Cart::instance('shopping')->content()->count()}} - (items)</p>
                                   </div>
                                    @php
                                      $subtotal=Cart::instance('shopping')->subtotal();
                                      $subtotal=str_replace(',','',$subtotal);
                                      $subtotal=str_replace('.00', '',$subtotal);
                                    @endphp
                                   <div class="cart_subtotal">
                                       <p>Subtotal</p>
                                       <p class="cart_amount">{{ $setting->currency }} {{$subtotal}}</p>
                                   </div>
                                   <div class="cart_subtotal">
                                       <p>Discount</p>
                                       <p class="cart_amount">{{ $setting->currency }}  @if(Session::get('couponamount') != NULL){{Session::get('couponamount')}} @else 0 @endif</p>
                                   </div>
                                   <div class="cart_subtotal">
                                       <p>Total</p>
                                       <p class="cart_amount">{{ $setting->currency }}  {{$subtotal - Session::get('couponamount')}}</p>
                                   </div>
                                   <div class="checkout_btn">
                                       <a href="{{url('/checkout')}}">Proceed to Checkout</a>
                                   </div>
                                </div>
                            </div>
                        </div>
                 </div>
            </div>
        </section>
        <!--productarea end-->
   

@endsection