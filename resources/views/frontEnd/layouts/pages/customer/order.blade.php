@extends('frontEnd.layouts.master')
@section('title','Customer Order')
@section('content')
    <!--common html-->
        <section class="mainbreadcrumb" style="background: url({{asset('public/frontEnd/images/breadcrumb.png')}});background-position: center;background-size: cover;background-repeat: no-repeat;" >
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="breadcrumb-text">
                            <h3>Customer Profile</h3>
                        <ul>
                            <li class="active"><a href="{{url('/')}}">Home</a></li>
                            <li><a class="anchor"><i class="fe fe-drop-right"></i></a></li>
                            <li><a class="anchor">Customer Profile</a></li>
                        </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="customer-profile ">
            <div class="container-fluid">
                <div class="row">
                    <div class="paddleft-120 col-lg-12 col-md-12 col-sm-4">
                        <div class="customer-profile">
                            <div class="row">
                                <div class="col-lg-3 col-sm-3 col-md-3">
                                    <div class="cprofile-sidebar">
                                        @include('frontEnd.layouts.pages.customer.sidebar')
                                    </div>
                                </div>
                                <!-- col end -->
                                <div class="col-lg-9 col-md-9 col-sm-9">
                                    <div class="cprofile-details">
                                        <p class="account-title">Customer Order</p>
                                        <table class="table table-bordered">
                                          <thead>
                                            <tr>
                                              <th scope="col">Id</th>
                                              <!-- <th scope="col">Order ID</th> -->
                                              <th scope="col">Total Order</th>
                                              <th scope="col">Order Track</th>
                                              <th scope="col"> Status</th>
                                              <th scope="col">Invioce</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                            @php
                                                $customerId = Session::get('customerId');
                                                $customerorders=App\Order::where('customerId',$customerId)->get();
                                            @endphp
                                            @foreach($customerorders as $customerorder)
                                            <tr>
                                              <td>{{$loop->iteration}}</td>
                                              <!-- <td>{{$customerorder->ordertrack}}</td> -->
                                              <td>{{$customerorder->orderTotal}}</td>
                                              <td>{{$customerorder->trackingId}}</td>
                                              <td>@foreach($ordertypes as $orderstatus)
                                                    @if($orderstatus->id == $customerorder->orderStatus) {{$orderstatus->name}} @endif
                                                @endforeach</td>
                                              <td><a href="{{url('customer/order/invoice/'.$customerorder->orderIdPrimary)}}" class="login-button">View</a></td>
                                            </tr>
                                            @endforeach
                                          </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
@endsection