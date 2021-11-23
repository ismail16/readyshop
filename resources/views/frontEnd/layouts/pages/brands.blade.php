@extends('frontEnd.layouts.master')
@section('title','Brands')
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
                        <li><a>Brands</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--custom breadcrumb end-->
        <section class="productarea section-padding">
            <div class="container">
                <div class="row">
                  @foreach($brands as $key=>$value)
                  <div class="col-sm-2 col-6">
                      <div class="brand-item">
                        <a href="{{url('brand/'.$value->slug)}}">
                          <img src="{{asset($value->image)}}" alt="">
                        </a>
                      </div>
                  </div>
                  @endforeach
                </div>
                <div class="row">
                  <div class="col-sm-12">
                    <div class="custom-paginate">
                      {{$brands->links()}}
                    </div>
                  </div>
                </div>
            </div>
        </section>
        <!--productarea end-->
@endsection