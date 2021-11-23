@extends('frontEnd.layouts.master')
@section('title','Contact Us')
@section('content')
    <!--common html-->
<div class="custom-breadcrumb">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <ul>
                     
                <li><a href="{{url('/')}}">Home</a></li>
                <li><a class="anchor"><i class="fa fa-angle-right"></i></a></li>
                <li><a class="anchor">Contact Us </a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--custom breadcrumb end-->
<section class="productarea" id="contact-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                @foreach($contactinfoes as $key=>$value)
                <div class="row">
                  <div class="col-lg-6 col-sm-6">
                   
                    <div class="contact-text">
                        <div class="sub-title">
                            <h6>Office Address: </h6>
                        </div>
                        <ul class="contact-link">
                            <li class="item">
                                <div class="icon-box">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i> Corporate Office: 
                                </div>
                                <p>{{$value->address}}</p>
                            </li>
                            <li class="item">
                                <div class="icon-box">
                                    <i class="fa fa-phone" aria-hidden="true"></i> Phone: 
                                </div>
                                <p><a href="tel:{{$value->phone}}"> {{$value->phone}} </a>
                                </p>
                                
                            </li>
                            <li class="item">
                                <div class="icon-box">
                                    <i class="fa fa-envelope-o" aria-hidden="true"></i> E-mail: 
                                </div>
                                <p>{{$value->email}}</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="google-map">
                        {!!$value->maplink!!}
                    </div>
                </div>
            </div>
             @endforeach
            <!--row end-->
        </div>
    </div>
</div>
</section>
<!-- Section End -->
@endsection