@extends('frontEnd.layouts.master')
@section('title','Blog')
@section('content')
<div class="custom-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>
                            <li><a href="{{url('/')}}"><i class="fa fa-home"></i> Home</a></li>
                            <li><a class="anchor"><i class="fa fa-angle-right"></i></a></li>
                            <li><a class="anchor">Our Blog</a></li>
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
            @foreach($blogs as $value)
            <div class="col-lg-6">
              <div class="blog-inner">
                <div class="image">
                 <a href="{{url('/our-blog/details/'.$value->slug.'/'.$value->id)}}">
                    <img src="{{asset($value->image)}}" class="img-responsive" alt="">
                 </a>
                </div>
                <div class="title">
                  <a href="{{url('/our-blog/details/'.$value->slug.'/'.$value->id)}}">{{$value->title}}</a>
                </div>
                <div class="blog-admin">
                  <img src="{{asset('public/uploads')}}/avatar/avatar.png" alt="" class="image">
                  <span class="admin-name">Admin</span>
                  <span class="entry-date">{{date('M d, Y', strtotime($value->created_at))}}</span>
                </div>
                <div class="blog-sdetails">
                 <p>{!!Str::limit($value->description,100)!!}</p>
                </div>
              </div>
            </div>
            @endforeach
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
              $latestblog = App\Blog::orderBy('id','DESC')->limit(5)->get();
            @endphp
           <div class="blog-product">
             <h5>Latest Blog</h5>
            @foreach($latestblog as $key=>$value)
            <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 recomanded-product-inner">
              <div class="recomanded-product blog-recomanded-product">
                <div class="image">
                       <img src="{{asset($value->image)}}" alt="">
                </div>
                <div class="content">
                  <div class="name">
                    <a href="{{url('our-blog/details/'.$value->slug.'/'.$value->id)}}">{{Str::limit($value->title,25)}}</a>
                  </div>
                  <div class="price">
                    <p> {{date('M d, Y', strtotime($value->created_at))}}</p>
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