@extends('frontEnd.layouts.master')
@section('title','Compare Product')
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
                            <li><a class="anchor">Compare</a></li>
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
                            <table class="table table-bordered table-responsive-sm">
                                  <thead>
                                    <tr  class="thead-light">
                                      <th scope="col">Delete</th>
                                      <th scope="col">Image</th>
                                      <th scope="col">Name</th>
                                      <th scope="col">Price</th>
                                      <th scope="col">Description</th>
                                      <th scope="col">Action</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                     @foreach($compareproduct as $cproduct)
                                    <tr>
                                    <td>
                                        <form action="{{url('/compare-remove-cart')}}" method="POST">
                                           @csrf
                                           <input type="hidden" name="rowId" value="{{$cproduct->rowId}}">
                                          <button type="submit" class="btn cart-remove"><i class="fa fa-trash"></i></button>
                                        </form>
                                    </td>
                                      <td><img src="{{asset($cproduct->options->image)}}" style="width: 50px;height:50px" alt=""></td>
                                      <td> <a href="{{'product-details/'.$cproduct->id}}" class="pcart-name" target="_blank">{{$cproduct->name}}</a></td>
                                      <td>{{ session()->get('setting')->currency }} {{$cproduct->price}}</td>
                                      <td class="text-left">{!! $cproduct->options->description !!}</td>
                                      <td class="text-left"><a href="{{url('compare-product-add/'.$cproduct->id.'/'.$cproduct->rowId)}}" class="btn btn-success">Add To Cart</a></td>
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