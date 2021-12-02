@extends('frontEnd.layouts.master')
@section('title','Welcome to Trusted Retail Store')
@section('content')
    @php
        Session::put('setting', \App\Contact::first());
    @endphp 
    <section class="menuandslider">
       <div class="container">
           <div class="row">
               <div class="col-lg-3 col-md-3 col-sm-3 hidetosm">
                   <div class="sidebar-menu">
                        <ul>
                            @foreach($sidecategories as $category)
                            <li><a href="{{url('category/'.$category->slug)}}">
                              <img src="{{asset($category->image)}}" alt="">
                              {{$category->name}} <i class="fa fa-caret-right"></i></a>
                              @if($category->subcategories!=NULL)
                                <ul class="sidebar-submenu">
                                    @foreach($category->subcategories as $subcategory)
                                    <li><a href="{{url('subcategory/'.$subcategory->slug)}}">{{$subcategory->subcategoryName}}</a>
                                        <ul class="sidebar-childmenu">
                                            @foreach($subcategory->childcategories as $childcat)
                                            <li><a href="{{url('products/'.$childcat->slug)}}">{{$childcat->childcategoryName}}</a>
                                            </li>
                                           @endforeach
                                        </ul>
                                    </li>
                                    @endforeach
                                </ul>
                                @endif
                            </li>
                            @endforeach
                        </ul>
                    </div>
               </div>
               <div class="col-lg-9 col-md-9 col-sm-12">
                <div id="slider" class="main-slider owl-carousel ">
                  @foreach($mainslider as $key=>$value)
                  <div class="slider-item">
                      <div class="slider-image">
                        <a href="{{url($value->burl)}}">
                          <img src="{{asset($value->image)}}" alt="slider image">
                          </a>
                      </div>
                  </div>
                  @endforeach
              </div>
            </div>
        </div>
    </section>
    <!--main slider section end-->
	<!--main slider section end-->
    <section class="dpadding-bottom section-padding">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="section-title">
             <h2>Top Sell</h2>
            </div>
          </div>

          <div class="col-sm-12">
            <div class="category-area">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="category-slider allproduct-slider owl-carousel">
                   @foreach($bestproducts as $value)
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
                                  <a data-id="{{$value->id}}" class="custtooltip addcartbutton">
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
                  @endforeach
                  </div>   
               </div>
            </div>
          </div>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="row">
          @foreach($bottomads as $key=>$value)
          <div class="col-sm-4">
            <div class="top-banner">
              <a href="">
                <img src="{{asset($value->image)}}" alt="">
              </a>
            </div>
          </div>
          @endforeach
        </div>
      </div>
    </section>
@foreach($frontcategories as $category)
  @php
      $products = App\Product::where(['proCategory'=>$category->id,'status'=>1])->orderBy('id','DESC')->limit(4)->get();
  @endphp
@if($products->count() > 0)
<section class="hbg-product-section">
 <div class="container">
   <div class="row">
     <div class="col-sm-12">
       <div class="category-product-order">
         <div class="row">
     <div class="col-sm-6 col-6">
       <div class="category-name">
          <a href="{{url('category/'.$category->slug)}}">{{$category->name}}</a>
       </div>
     </div>
     <div class="col-sm-6 col-6">
       <div class="pview-all">
         <a href="{{url('category/'.$category->slug)}}">view all</a>
       </div>
     </div>
       </div>
     </div>
   </div> 
   </div>
   <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="hsidebar-nav">
          <ul>
            @foreach($category->subcategories as $key=>$value)
            <li><a href="{{url('subcategory/'.$value->slug)}}">{{$value->subcategoryName}}</a></li>
            @endforeach
          </ul>
        </div>
      </div>
      <div class="col-lg-9 col-md-9 col-sm-9">
        <div class="row hproduct-area">
            @foreach($products as $key=>$value)
             <div class="col-lg-3 col-md-4 col-sm-6 col-6 @if($key==3) mobile-hide @endif">
                <div class="hproduct-item ">
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
                        <p class="hproduct-name">  <a href="{{url('product-details/'.$value->id.'/'.$value->slug)}}">{{Str::limit($value->proName,35)}} </a></p> 
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
                                <a data-id="{{$value->id}}" class="custtooltip addcartbutton">
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
        </div>
      </div>
   </div>
 </div>
</section>
@endif
@endforeach
<!-- All Product end -->
<section class="hbrand-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="brand-slider owl-carousel">
                    @foreach($brands as $key=>$value)
                    <div class="brand-item">
                        <a href="{{url('brand/'.$value->slug)}}">
                          <img src="{{asset($value->image)}}" alt="">
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endsection