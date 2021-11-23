@extends('frontEnd.layouts.master')
@section('title','Category product')
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
                            <li><a class="anchor">All Category</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--custom breadcrumb end-->
        <!--custom breadcrumb end-->
        <section class="dark-bg productarea section-padding">
            <div class="container">
                <div class="row">
                    @foreach($categories as $category)
                    <div class="col-lg-2 col-md-3 col-sm-4">
                        <div class="hcategory">
                            <a href="{{url('category/'.$category->slug.'/'.$category->id)}}">
                                 <img src="{{asset($category->image)}}" alt="">
                                <p>{{str_limit($category->name,20)}}</p>
                            </a>
                        </div>
                    </div>
                 @endforeach
                 <!-- all category -->
                </div>
            </div>
        </section>
        <!--productarea end-->
@endsection