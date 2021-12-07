@extends('frontEnd.layouts.master')
@section('title','Wishlist')
@section('content')
<!--common html-->
        <div class="custom-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>
                            @include('frontEnd.layouts.includes.sidebar') 
                            <li><a href="{{url('/')}}"><i class="fa fa-home"></i> Home</a></li>
                            <li><a class="anchor"><i class="fa fa-angle-right"></i>></a></li>
                            <li><a class="anchor">Shopping <i class="fa fa-angle-right"></i></li>
                            <li><a class="anchor">Wishlist</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--custom breadcrumb end-->
        <section class="productarea section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="show-cart-body">
                            <table class="table table-bordered">
                                  <thead>
                                    <tr  class="thead-light">
                                      <th scope="col">Delete</th>
                                      <th scope="col">Image</th>
                                      <th scope="col">Product</th>
                                      <th scope="col">Price</th>
                                      <th scope="col">Cart</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                     @foreach($wishlistproducts as $wishlistproduct)
                                    <tr>
                                    <td>
                                        <form action="{{url('/wishlist-delete-cart')}}" method="POST">
                                           @csrf
                                           <input type="hidden" name="rowId" value="{{$wishlistproduct->rowId}}">
                                          <button type="submit" class="btn cart-remove"><i class="fa fa-trash"></i></button>
                                        </form>
                                    </td>
                                      <td><img src="{{asset($wishlistproduct->options->image)}}" style="width: 50px;height:50px" alt=""></td>
                                      <td> <a class="anchor" class="pcart-name">{{$wishlistproduct->name}}</a></td>
                                      <td>{{ $setting->currency }} {{$wishlistproduct->price}}</td>
                                      <td class="text-left"><a href="{{url('wishlist-product-add/'.$wishlistproduct->id.'/'.$wishlistproduct->rowId)}}" class="btn btn-primary">Add To Cart</a></td>
                                    </tr>
                                    @endforeach
                                  </tbody>
                                </table>
                             </div>
                        </div>
                    </div>
                 <!--row end-->
            </div>
        </section>
        <!--productarea end-->
  


@endsection