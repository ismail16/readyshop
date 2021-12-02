@extends('frontEnd.layouts.master')
@section('title','Product Details')
@section('content')
        <!--common html-->
         <div class="custom-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>
                           @include('frontEnd.layouts.includes.sidebar')  
                            <li><a href="{{url('/')}}"><i class="fa fa-home"></i> Home <i class="fa fa-angle-right"></i></a></li>
                            <li><a class="anchor">Product <i class="fa fa-angle-right"></i></a></li>
                            <li><a class="anchor">Details <i class="fa fa-angle-right"></i></a></li>
                            <li><a class="anchor">{{Str::limit($productdetails->proName,100)}}</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--custom breadcrumb end-->
        <div class="product-details section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-12">
                          <div class="productdetails-slider">
                              <!-- Swiper -->
                              <div class="swiper-container gallery-top">
                                  <div class="swiper-wrapper">
                                      @foreach($productdetails->proImages as $image)
                                         <div class="swiper-slide"> <img src="{{asset($image->image)}}" class="block__pic" alt=""></div>
                                        @endforeach
                                      @if($productdetails->proOldprice)
                                      <p class="discount">Save 
                                        @php $discount=(((($productdetails->proOldprice)-($productdetails->proNewprice))*100) / ($productdetails->proOldprice)) @endphp -{{number_format($discount,0)}}%</p>
                                      @endif
                                  </div>
                                  <!-- Add Arrows -->
                                  @if($productdetails->proImages->count() > 1)
                                  <div class="swiper-button-next swiper-button-white"></div>
                                  <div class="swiper-button-prev swiper-button-white"></div>
                                  @endif
                              </div>
                              <div class="swiper-container gallery-thumbs">
                                  <div class="swiper-wrapper">
                                      @foreach($productdetails->proImages as $image)
                                         <div class="swiper-slide"> <img src="{{asset($image->image)}}"  alt=""></div>
                                        @endforeach
                                  </div>
                              </div>
                          </div>
                          
                     </div>
                      <div class="col-lg-7  col-md-7 col-sm-12">
                                <div class="productdetails-info">
                                    <p class="dproduct-name">{{$productdetails->proName}}</p>
                                    <p style="font-weight:600;">{{$productdetails->unit}}</p>
                                    @php
                                    $totalReviewPerson = App\Review::where('product_id',$productdetails->id)->count();
                                    $totalReviewAmount = App\Review::where('product_id',$productdetails->id)->sum('ratting');

                                        if($totalReviewAmount!=0){
                                          $avarageReviewAmount = $totalReviewAmount / $totalReviewPerson;
                                        }
                                      @endphp
                                      <div class="pratting">
                                        <div class="star">
                                           <ul>
                                            <li><span>

                                            @if($totalReviewAmount!=0){{round($avarageReviewAmount,2)}} @else 0 @endif</span></li>
                                            @if($totalReviewAmount!=0)
                                              @if($avarageReviewAmount == 1)
                                               <li><i class="fa fa-star"></i></li>
                                              @elseif($avarageReviewAmount >= 1.5 && $avarageReviewAmount < 2 )
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star-half"></i></li>
                                              @elseif($avarageReviewAmount >= 1.6 && $avarageReviewAmount < 2.5)
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              @elseif($avarageReviewAmount >= 2.5 && $avarageReviewAmount < 3)
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star-half"></i></li>
                                              @elseif($avarageReviewAmount >= 2.6 && $avarageReviewAmount < 3.5)
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              @elseif($avarageReviewAmount >= 3.5 && $avarageReviewAmount < 4)
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star-half"></i></li>
                                              @elseif($avarageReviewAmount >=3.6 && $avarageReviewAmount < 4.5)
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              @elseif($avarageReviewAmount >= 4.5 && $avarageReviewAmount < 5)
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star-half"></i></li>
                                              @elseif($avarageReviewAmount >= 4.6)
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              <li><i class="fa fa-star"></i></li>
                                              @endif
                                            @else
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            @endif
                                          </ul>
                                        </div>
                                        <div class="count">
                                          <span>@if($totalReviewAmount!=0) ({{$totalReviewAmount}}) @else (0) @endif</span> 
                                          <p> @if($totalReviewPerson!=0) {{$totalReviewPerson}} @else 0 @endif Reviews</p>
                                        </div>
                                      </div>
                                     
                                      <div class="details-pro-price">
                                         <span>{{ session()->get('setting')->currency }} {{$productdetails->proNewprice}}</span>
                                         @if($productdetails->proOldprice)
                                         <del>{{ session()->get('setting')->currency }} {{$productdetails->proOldprice}}</del>
                                         @endif
                                      </div>
                                      
                                      <div class="paid-addition">
                                          @if($productdetails->aditionalshipping)
                                          <p class="text-success"><i class="fa fa-truck"></i> Extra Shipping Charge {{ session()->get('setting')->currency }} {{$productdetails->aditionalshipping}}</p>
                                          @endif
                                      </div>
                                      <div class="details-quantity-area">
                                        <form action="{{url('/add-to-cart/'.$productdetails->id)}}" method="POST" class="dbform form-row">
                                             @csrf
                                        <div class="quantity-part col-sm-6">
                                          <div class="from-group">
                                              <div class="quantity-part-label">
                                                <label for=""><strong>Quantity </strong><span>*</span></label>
                                              </div>
                                              <div class="quantity-part-input">
                                              <div class="input-group">
                                                  <span class="input-group-btn">
                                                  
                                                      <button type="button" id="quantity-left" class="quantity-left-minus" data-type="minus" data-field="">
                                                          <i class="fa fa-minus"></i>
                                                      </button>
                                                  </span>
                                                      @csrf
                                                      <input type="text"  name="qty" id="quantity" class="input-number" value="1" min="1">
                                                  <span class="input-group-btn">
                                                      <button type="button" id="quantity-right" class="quantity-right-plus " data-type="plus" data-field="">
                                                          <i class="fa fa-plus"></i>
                                                      </button>
                                                  </span>
                                               </div>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="details-cart-part @if(!$selectsizes->isEmpty() && ! $selectcolors->isEmpty()) col-sm-6 @elseif(!$selectsizes->isEmpty() || ! $selectcolors->isEmpty()) ) col-sm-3 @else '' @endif">
                                          @if( ! $selectsizes->isEmpty() )
                                              <div class="color-select">
                                                <select  id="proSize" name="proSize" class="form-control">
                                                <option value="">Select Size</option>
                                                @foreach($selectsizes as $size)
                                                <option value="{{$size->sizeName}}"> {{$size->sizeName}}</option>
                                                @endforeach
                                              </select>
                                              </div>
                                             @endif
                                            <!-- Product Color -->
                                            @if( ! $selectcolors->isEmpty() )
                                            <div class="size-select">
                                              <select  id="proColor" name="proColor" class="form-control">
                                              <option value="">Select Color</option>
                                              @foreach($selectcolors as $color)
                                              <option value="{{$color->colorName}}"> {{$color->colorName}}</option>
                                              @endforeach
                                            </select>
                                            </div>
                                             @endif 
                                        </div>
                                         @if($productdetails->proQuantity >  1)
                                        <div class="details-cart-part  col-sm-6">
                                          <div class="form-group">
                                              <button class="dbutton addcart">Add To Cart</button>
                                                <a data-id="{{$productdetails->id}}"  class="comparecartbutton" ><i class="fa fa-signal"></i></a>
                                                <a data-id="{{$productdetails->id}}"  class=" wishcartbutton "><i class="fa fa-heart"></i></a>
                                          </div>
                                        </div>
                                        @else
                                        <p class="btn btn-primary">Stock Out</p>
                                        @endif
                                         </form>
                                      </div>
                                      
                                      <div class="details-brand-area">
                                        @if($productdetails->proBrand!=NULL)
                                            @php
                                                $brand=App\Brand::where('id',$productdetails->proBrand)->first();
                                            @endphp
                                          <p>Brand: {{$brand->brandName}}</p>
                                          
                                         @endif
                                      </div>
                                      <div class="shortDetails">
                                          {!!$productdetails->shortDescription!!}
                                      </div>
                                    <div class="detials-share" style="text-align:left;margin-top:20px;">
                                      <p class="mb-2">Share : <i class="fa fa-share"></i></p>
                                        <!-- Go to www.addthis.com/dashboard to customize your tools -->
                                        <div class="addthis_inline_share_toolbox_x78a"></div>
                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                              <div class="description-tab">
                                <div class="row">
                                  <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="dmytab">
                                      <nav>
                                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                          <a class="nav-item nav-link active" id="nav-profile-tab" data-toggle="tab" href="#additinal-details" role="tab" aria-controls="nav-profile" aria-selected="false">Product Description</a><a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Review</a>
                                        </div>
                                      </nav>
                                      <div class="tab-content" id="nav-tabContent">
                                         <div class="tab-pane show active fade" id="additinal-details" role="tabpanel" aria-labelledby="nav-profile-tab">
                                          <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                              {!!$productdetails->proDescription!!}
                                            </div>
                                          </div>
                                        </div>
                                        <!-- tab end -->
                                         <div class="tab-pane show fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                          <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-6">
                                              <div class="reiveiw-title">
                                                <h5>Total @if($totalReviewPerson!=0) ({{$totalReviewPerson}}) @else (0) @endif Review</h5>
                                              </div>
                                              @if($allReview->count()!=NULL)

                                                @foreach($allReview as $key=>$value)
                                                <div class="person-review">
                                                  @php
                                                    $reviewCustomer = App\Customer::where('id',$value->customer_id)->first();
                                                  @endphp
                                                  @if($reviewCustomer!=NULL)
                                                  <h4>{{$reviewCustomer->fullName}}</h4>
                                                  <div class="review">
                                                    <ul>
                                                      @if($value->ratting==1)
                                                        <li><i class="fa fa-star"></i></li>
                                                        @elseif($value->ratting==2)
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        @elseif($value->ratting==3)
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        @elseif($value->ratting==4)
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        @elseif($value->ratting==5)
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                      @endif
                                                    </ul>
                                                    <p>{{$value->review}}</p>
                                                  </div>
                                                  @endif
                                                </div>
                                                @endforeach
                                                <!-- single review -->
                                              @endif
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6">
                                              <div class="get-review">
                                                <div class="reiveiw-title">
                                                  <h5>Give You Review</h5>
                                                </div>
                                                @php
                                                     $customerId = Session::get('customerId');
                                                     $customerInfo=App\Customer::where(['id'=>$customerId])->first();
                                                @endphp
                                               @if($customerId==NULL)
                                                <div class="login-btn">
                                                  <p class="details-login-first">Please Login First</p>
                                                  <button class="dcartbtn" data-toggle="modal" data-target="#cloginModal">Login</button>
                                                </div>
                                                @else
                                                <form action="{{url('customer/product/review')}}"  method="POST">
                                                   @csrf
                                                    <input type="hidden" name="product_id" value="{{$productdetails->id}}">
                                                    <input type="hidden" name="customer_id" value="{{$customerInfo->id}}">
                                                    <input type="hidden" name="customer_id" value="{{Session::get('customerId')}}">
                                                  <div class="form-group">
                                                    <label for="ratting">Select Review</label> 
                                                  <select name="ratting" id="" class="form-control{{ $errors->has('ratting') ? ' is-invalid' : '' }}" value="{{ old('ratting') }}" required>
                                                      <option value=""> Select Your Review</option>
                                                      <option value="1">1</option>
                                                      <option value="2">2</option>
                                                      <option value="3">3</option>
                                                      <option value="4">4</option>
                                                      <option value="5">5</option>
                                                      @if ($errors->has('ratting'))
                                                        <span class="invalid-feedback" role="alert">
                                                          <strong>{{ $errors->first('ratting') }}</strong>
                                                        </span>
                                                      @endif
                                                  </select>
                                                  </div>
                                                  <div class="form-group">
                                                    <label for="review">Your Review Message</label>
                                                    <textarea class="form-control{{ $errors->has('review') ? ' is-invalid' : '' }}" value="{{ old('review') }}"  name="review" id="" rows="5"></textarea>
                                                    @if ($errors->has('review'))
                                                        <span class="invalid-feedback" role="alert">
                                                          <strong>{{ $errors->first('review') }}</strong>
                                                        </span>
                                                      @endif
                                                  </div>
                                                  <div class="form-group">
                                                    <input type="submit" value="submit review" class="reviewbtn">
                                                  </div>
                                                </form>
                                                @endif
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                          </div>   
                    </div>
                    <!-- col end -->
                    <div class="relatedproduct">                  
                      <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                           <div class="product-description-title">
                                <p>Related Product</p>
                            </div>
                        </div>
                          <div class="related-slider owl-carousel">
                            @foreach($relatedproduct as $key=>$value)
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

                            <div class="col-sm-12">
                              <div class="custom-paginate">
                                {{$relatedproduct->links()}}
                              </div>
                            </div>
                      </div>
                    </div>
                    <!-- row -->
                </div>
        </div>
        <!--product-details end-->
        <div class="review-login-modal">
      <!-- Modal -->
          <div class="modal fade" id="cloginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Customer Login</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <div class="customer-register marchantl-pannel">
                      <form action="{{url('customer/panel/review/login')}}" method="POST">
                        @csrf
                        <div class="form-group">
                          <label for="fullname">Email Or Phone <span>*</span></label>
                          <input type="text" class="form-control {{$errors->has('phoneOremail')? 'is-invalid' : ''}}" placeholder="Phone Or Email" name="phoneOremail" value="{{old('phoneOremail')}}">
                            @if($errors->has('phoneOremail'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{$errors->first('phoneOremail')}}</strong>
                              </span>
                            @endif
                        </div>
                          <div class="form-group">
                            <label for="email">Password <span>*</span></label>
                            <input type="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="Your Password" name="password"  value="{{old('password')}}" >
                               @if ($errors->has('password'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('password') }}</strong>
                              </span>
                              @endif
                          </div>
                          <div class="form-group">
                            <input type="submit" value="Login" class="registerbtn">
                          </div>
                      </form>
                    </div>
                </div>
              </div>
            </div>
          </div>
    </div>
        
@endsection