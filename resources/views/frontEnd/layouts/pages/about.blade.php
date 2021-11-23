@extends('frontEnd.layouts.master')
@section('title','Best Online Shop')
@section('content')
   
<div class="custom-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>  
                        <li><a href="{{url('/')}}"><i class="fa fa-home"></i> Home</a></li>
                        <li><a class="anchor"><i class="fa fa-angle-right"></i></a></li>
                        <li><a herf="{{url('/about-us')}}">About Us</a></li>
                         
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--custom breadcrumb end-->


  <section class="section-padding about-section">
    <div class="container">
      
      <div class="row">
        <div class="col-lg-7 col-md-7 col-sm-12">
          <div class="about-left">
            @foreach($abouts as $key=>$value)
            <div class="about-title">
              <h2>{{$value->title}}</h2>
            </div>
            <div class="about-text">
              {!! $value->text !!}
            </div>
           
              <div class="profile-btn">
                  <a href="{{$value->pdf}}">
                     Profile
                  </a>
            </div>
             @endforeach
            
            
          </div>
        </div>
        @foreach($abouts as $key=>$value)
        <div class="col-lg-5 col-md-5 col-sm-12">
          <div class="about-image">
              <img src="{{asset($value->image)}}" alt="">
          </div>
        </div>
        @endforeach
      </div>
     
    </div>
  </section>
    
@endsection