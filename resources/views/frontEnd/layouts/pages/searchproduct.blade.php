@extends('frontEnd.layouts.master')
@section('title',$keyword)
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
                        <li><a herf="">{{$keyword}}</a></li>
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
                        <div class="category-bar">
                            <div class="row">
                              <div class="col-sm-12">
                                <h4>{{$keyword}}</h4>
                              </div>
                            </div>
                          </div>
                        <div class="shop">
                            <div class="row">
                                @foreach($products as $key=>$value)
                                 <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                                    <div class="hproduct-item">
                                        <a href="{{url('product-details/'.$value->id.'/'.$value->slug)}}">
                                        <div class="hproduct-img">
                                            @foreach($productimage as $proimage)
                                             @if($value->id==$proimage->product_id)
                                             <img  data-original="{{asset($proimage->image)}}"  alt="">
                                                
                                              @break
                                              @endif
                                              @endforeach

                                              @if($value->proOldprice)
                                              <p class="discount">Save 
                                                @php $discount=(((($value->proOldprice)-($value->proNewprice))*100) / ($value->proOldprice)) @endphp -{{number_format($discount,0)}}%</p>
                                              @endif
                                        </div>

                                        </a>
                                        <div class="hproduct-info">
                                            <p class="hproduct-name">  <a href="{{url('product-details/'.$value->id.'/'.$value->slug)}}">{{Str::limit($value->proName,40)}} </a></p> 
                                           <ul>
                                             <li> <p class="hproduct-price">{{ session()->get('setting')->currency }}{{$value->proNewprice}} <span>@if($value->proOldprice){{ session()->get('setting')->currency }} 
                                              {{$value->proOldprice}} 
                                            @endif</span></p></li>
                                             
                                           </ul>
                                        </div>
                                        <div class="product-actions">
                                          @if($value->proQuantity >  1)
                                           <div class="wishcompare">
                                                <ul>

                                                  <li>
                                                    <a data-id="{{$value->id}}"  class="comparecartbutton custtooltip">
                                                      <span class="tooltiptext">Compare</span>
                                                      <i class="fa fa-signal"></i>
                                                    </a>
                                                  </li>
                                                  <li>
                                                    <a data-id="{{$value->id}}"  class="custtooltip wishcartbutton ">
                                                      <span class="tooltiptext">Wishlist</span>
                                                      <i class="fa fa-heart"></i>
                                                    </a>
                                                  </li>

                                                  <li>
                                                    <a data-id="{{$value->id}}" class="addcartbutton custtooltip ">
                                                      <span class="tooltiptext">Add To Cart</span>
                                                      <i class="fa fa-shopping-basket"></i>
                                                    </a>
                                                  </li>
                                                </ul>
                                            </div>
                                             @else
                                             <div class="productbtn">
                                              <div class="bwid100">
                                                   <div class="bwid50 cartbtn">
                                                       <input type="hidden" value="1" id="quantity"/>
                                                         <button class="btn btn-primary" >Stock Out
                                                         </button>
                                                     </div>
                                                </div>
                                            </div>
                                           @endif
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                                <!--col end-->
                            </div>
                            <!--row end-->
                             
                        </div>
                        <!--show end-->
                        <div class="row">
                            <div class="col-sm-12">
                              <div class="custom-paginate">
                                {{$products->links()}}
                              </div>
                            </div>
                          </div>
                    </div>
                    <!--col end-->
                </div>
            </div>
        </section>
        <!--productarea end-->
@endsection