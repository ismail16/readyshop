@extends('frontEnd.layouts.master')
@section('title','Blog Details')
@section('content')
<div class="custom-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>
                           @include('frontEnd.layouts.includes.sidebar')  
                            <li><a href="{{url('/')}}"><i class="fa fa-home"></i> Home <i class="fa fa-angle-right"></i> </a></li>
                            <li><a class="anchor">Blog <i class="fa fa-angle-right"></i></a></li>
                            <li><a class="anchor">{{$blogs->title}}</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    <section class="recomandate-section section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-9 col-sm-9">
          <div class="row">
            <div class="col-lg-12">
              <div class="details-blog-inner">
                <div class="image">
                 <a href="">
                    <img src="{{asset($blogs->image)}}" class="img-responsive" alt="">
                 </a>
                </div>
                <div class="detials-title">
                  <a href="">{{$blogs->title}}</a>
                </div>
                <div class="blog-admin">
                  <img src="{{asset('public/uploads')}}/avatar/avatar.png" alt="" class="image">
                  <span class="admin-name">Admin</span>
                  <span class="entry-date">{{date('M d, Y', strtotime($blogs->created_at))}}</span>
                </div>
                <div class="blog-sdetails">
                 {!!$blogs->description!!}
                </div>
              </div>
            </div>

          </div>
        </div>
        <div class="col-md-3 col-sm-3">
           <div class="blog-category">
             <h5>Categories</h5>
             <div class="category-item">
              @foreach($blogcategories as $value)
               <a href="{{url('blog-category/'.$value->slug.'/'.$value->id)}}">{{$value->name}} ({{$value->blogs->count()}})</a>
               @endforeach
             </div>
           </div>
            @php
              $recomandedproducts = App\Product::orderBy('id','DESC')->limit(5)->get();
            @endphp
           <div class="blog-product">
             <h5>Products</h5>
            @foreach($recomandedproducts as $key=>$value)
            <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 recomanded-product-inner">
              <div class="recomanded-product blog-recomanded-product">
                <div class="image" style="height:80px">
                   @foreach($productimage as $proimage)
                       @if($value->id==$proimage->product_id)
                       <img src="{{asset($proimage->image)}}" alt="">
                          
                        @break
                        @endif
                     @endforeach
                </div>
                <div class="content">
                  <div class="name">
                    <a href="{{url('product-details/'.$value->id.'/'.$value->slug)}}">{{Str::limit($value->proName,25)}}</a>
                  </div>
                  <p class="rproduct-ratting"></p>
                  <div class="price">
                    <p>৳{{$value->proNewprice}}</p>
                  </div>
                  
                </div>
              </div>
            </div>
            </div>
              @endforeach
           </div>

        </div>
      </div>
    </div>
  </section>
@endsection