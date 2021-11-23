@extends('frontEnd.layouts.master')
@section('title','Customer Complain')
@section('content')
    <!--common html-->
            <div class="custom-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>
                           @include('frontEnd.layouts.includes.sidebar')  
                            <li><a href="{{url('/')}}"><i class="fa fa-home"></i> Home</a></li>
                            <li><a class="anchor"><i class="fa fa-long-arrow-right"></i></a></li>
                            <li><a class="anchor">Customer Complain</a></li>
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
                    <div class="col-lg-3 col-md-3 col-sm-3"></div>

                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="complain-box">
                            <form action="{{url('customer/complain/information')}}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="cname">Name</label>
                                    <input type="text" name="cname" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="cemail">Email</label>
                                    <input type="text" name="cemail" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="cphone">Phone</label>
                                    <input type="text" name="cphone" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="cmessage">Message</label>
                                    <textarea type="text" name="cmessage" class="form-control textbg" style="background: #eee;"></textarea>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-primary"> Send Message</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-3"></div>

                 <!-- all category -->
                </div>
            </div>
        </section>
        <!--productarea end-->
@endsection