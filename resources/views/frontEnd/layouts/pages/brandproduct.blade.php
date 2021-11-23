@extends('frontEnd.layouts.master')
@section('title',$brand->brandName)
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
                        <li><a herf="{{url('brand/'.$brand->slug)}}">{{$brand->brandName}}</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--custom breadcrumb end-->
        <section class="productarea section-padding">
            <div class="container">
                <div class="row">
                  <div class="col-lg-3 col-sm-3 pc-sidebar">
                    <div class="sidebar">
                      <div class="custom-tree">
                        <div class=" title ">
                          <h6>Price</h6>
                        </div>
                          <form id="pricefilter">
                              <input type="text" name="minprice" placeholder="Min" class="width40 minprice">
                              <input type="text" name="maxprice" placeholder="Max" class="width40 maxprice">
                               <button type="submit" class="width20">Send</button>
                          </form>
                        </div>
                    </div>
                    <div class="sidebar">
                      <div class="custom-tree">
                        <div class=" title ">
                          <h6>Product category</h6>
                        </div>
                          <ul class="mtree transit">
                                @foreach($categories as $key=>$value)
                                @php
                                    $productCount = App\Product::where('proCategory',$value->id)->count();
                                @endphp
                                <li><a href="{{url('category/'.$value->slug)}}">{{$value->name}}</a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="sidebar brand">
                      <div class="custom-tree">
                        <div class=" title ">
                          <h6>Brand</h6>
                        </div>
                          <ul class="mtree transit">
                                @foreach($brands as $key=>$value)
                                @php
                                    $bproductCount = App\Product::where('proBrand',$value->id)->count();
                                @endphp
                                <li><a href="{{url('brand/'.$value->slug)}}">{{$value->brandName}} <span>({{$bproductCount}})</span></a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                  </div>
                  <!-- Pc Sidebar -->
                  <div class="col-lg-3 col-sm-3 mobile-sidebar">
                      <div class="bs-example">
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h2 class="mb-0">
                                        <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne">Product Category <span><i class="fa fa-caret-up"></i></span></button>                  
                                    </h2>
                                </div>
                                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="sidebar">
                                          <div class="custom-tree">
                                              <ul class="mtree transit">
                                                @foreach($categories as $key=>$value)
                                                @php
                                                    $productCount = App\Product::where('proCategory',$value->id)->count();
                                                @endphp
                                                <li><a href="{{url('category/'.$value->slug)}}">{{$value->name}}</a>
                                                </li>
                                                @endforeach
                                            </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h2 class="mb-0">
                                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo">Brand <span><i class="fa fa-caret-up"></i></span></button>
                                    </h2>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="sidebar">
                                              <div class="custom-tree">
                                                  <ul class="mtree transit">
                                                        @foreach($brands as $key=>$value)
                                                        @php
                                                            $bproductCount = App\Product::where('proBrand',$value->id)->count();
                                                        @endphp
                                                        <li><a href="{{url('brand/'.$value->slug)}}">{{$value->brandName}} <span>({{$bproductCount}})</span></a>
                                                        </li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>     
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h2 class="mb-0">
                                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree">Price <span><i class="fa fa-caret-up"></i></span></button>                     
                                    </h2>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="sidebar">
                                          <div class="custom-tree">
                                              <form action="" id="pricefilter">
                                                @csrf
                                                  <input type="text" name="minprice" placeholder="Min" class="width40 minprice">
                                                  <input type="text" name="maxprice" placeholder="Max" class="width40 maxprice">
                                                   <button type="submit" class="width20">Send</button>
                                              </form>
                                            </div>
                                        </div>   
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>
                  <!-- mobile sidebar -->
                    <div class="col-lg-9 col-md-9 col-sm-9">
                        <div class="category-bar">
                            <div class="row">
                              <div class="col-sm-8">
                                <h4> {{$brand->brandName}}</h4>
                              </div>
                              <div class="col-sm-4">
                                <div class="sort-form">
                                  <form action="">
                                          <select name="sort" class="form-control" onchange="this.form.submit()">
                                              <option value="" @if($sort== '') selected @endif>Sorting</option>
                                              <option value="1" @if($sort==1) selected @endif>Newest</option>
                                              <option value="2" @if($sort==2) selected @endif>Oldest</option>
                                              <option value="3" @if($sort==3) selected @endif>High Price</option>
                                              <option value="4" @if($sort==4) selected @endif>Low Price</option>
                                              <option value="5" @if($sort==5) selected @endif>Z-A</option>
                                              <option value="6" @if($sort==6) selected @endif>A-Z</option>
                                          </select>
                                      </form>
                                </div>
                              </div>
                            </div>
                          </div>
                        <div class="shop">
                            <div class="row">
                                @foreach($products as $key=>$value)
                                 <div class="col-lg-4 col-md-4 col-sm-6 col-6">
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
                                             <li> <p class="hproduct-price">৳{{$value->proNewprice}} <span>@if($value->proOldprice)৳ 
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
                                {!!$links!!}
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