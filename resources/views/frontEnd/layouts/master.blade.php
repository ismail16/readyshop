<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>@yield('title','Welcome to Trusted Retail Store')  | Ready Shop</title>
    <!--website title-->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width,height=device-height, initial-scale=1.0, minimum-scale=1.0">
    @foreach($favicon as $key=>$value)
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset($value->image)}}">
    <link rel="icon" rel="apple-touch-icon" sizes="120x120" href="{{asset($value->image)}}"/>
    @endforeach
    <!--faveicon image-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/bootstrap.min.css">
    <!--bootstrap css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/animate.css">
    <!--animate css>-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/font-awesome.min.css">
    <!--font awesome css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/line-awesome.min.css">
    <!--line-awesome.min-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/owl.carousel.min.css">
    <!--owl.carousel.min.css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/owl.theme.default.min.css">
    <!--owl.theme.default.min-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/swiper.min.css">
    <!-- swiper slider -->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/mobile-menu.css">
    <!--mobilemenu css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/jquery.mtree.css">
    <!-- nice select -->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/nice-select.css">
      <!-- toastr css -->
    <link rel="stylesheet" href="{{asset('public/backEnd')}}/css/toastr.min.css">
    <!--mtree css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/mtree.css">
    <!--news.css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/zoom.css">
    <!--zoom.css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/style.css">
    <!--style css-->
    <link rel="stylesheet" href="{{asset('public/frontEnd/')}}/css/responsive.css">
    <!--responsive css-->
    <script src="{{asset('public/frontEnd/')}}/js/jquery-3.3.1.min.js"></script>
    <!--jquery library-->
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
     <!-- ajax library -->
<script>
    $(function(){

    $('.navigation .toggle-wrapper .show').on('click',function(){
      $('.navigation').addClass('open');
    });
    $('.navigation .toggle-wrapper .hide').on('click',function(){
      $('.navigation').removeClass('open');
    });
    $('.navigation .has-menu a').on('click',function(e){
      e.stopPropagation();
    });
    $('.navigation .has-menu').on('click',function(){
      $(this).toggleClass('open');
    });
  
    });
   </script>

</head>

<body class="gotop">
    @php
        $subtotal=Cart::subtotal();
        $subtotal=str_replace(',','',$subtotal);
        $subtotal=str_replace('.00', '',$subtotal);
        Session::put('totalprice',$subtotal);
        Session::put('setting', \App\Contact::first());
    @endphp 
     <div class="mobile-header-top">
        <div class="container">
             <div class="row">
                <div class="col-2">
                    <div class="mobile-hot-line">
                    <span class="toggle hc-nav-trigger hc-nav-1"><i class="fa fa-bars"></i></span>
                    </div>
                </div>
                <div class="col-10">
                    <div class="mobile-header-right">
                         <ul>
                            <li>
                                <a href="#" class="trackorder" data-toggle="modal" data-target="#myModal"><i class="fa fa-truck"></i> Track Order</a>
                            </li> 
                             @php
                             $customerId = Session::get('customerId');
                             $customerInfo=App\Customer::where(['id'=>$customerId])->first();
                        @endphp
                        @if($customerId!=NULL)

                           <li>
                                <a href="{{url('customer/account')}}">
                               {{$customerInfo->fullName}}
                            </a>
                           </li>
                            @else
                           <li>
                               <a href="{{url('/customer/register')}}"><i class="fa fa-address-book-o"></i> Register</a>
                           </li>
                           <li>
                               <a href="{{url('customer/login')}}"><i class="fa fa-sign-in"></i> Login</a>
                           </li>
                           @endif
                         </ul>
                    </div>
                </div>
            </div>
        </div>
    }
    </div>
   <!-- Mobile header top End -->
   <section class="mobile-header-design hidden-lg hidden-md">
            <div id="mobile-menu">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div id="main-nav" class="mobile-menu">
                                <ul class="first-nav">
                                  <li><a href="{{url('offer')}}">Offers</a>
                                  </li>
                                @foreach($categories as $category)
                                <li class="parent"><a href="{{url('category/'.$category->slug)}}">{{$category->name}}</a>
                                    <ul>
                                    @foreach($category->subcategories as $subcategory)
                                    <li><a href="{{url('subcategory/'.$subcategory->slug)}}">{{$subcategory->subcategoryName}}</a>
                                        <ul>
                                            @foreach($subcategory->childcategories as $childcat)
                                            <li><a href="{{url('products/'.$childcat->slug)}}">{{$childcat->childcategoryName}}</a>
                                            </li>
                                           @endforeach
                                        </ul>
                                    </li>
                                    @endforeach
                                </ul>
                                </li>
                                @endforeach
                            </ul>
                             <ul class="mobile-emenu">
                                <li> <a href="{{url('/brands')}}">Brands</a></li>
                                <li> <a href="{{url('/offer')}}">Offer</a></li>
                                <li> <a href="{{url('/our-blog')}}">Blog</a></li>
                                <li> <a href="{{url('/more-info/about-us')}}">About Us</a></li>
                                <li> <a href="{{url('/contact-us')}}">Contact Us</a></li>
                            </ul>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- mobile header end -->
        <section class="mlogo-cart">
            <div class="container">
                 <div class="row">
                    <div class="col-6">
                        @forelse($mainlogo as $key=>$value)
                        <div class="mlogo logo">
                            <a href="{{url('/')}}"><img src="{{asset($value->image)}}" alt=""></a>
                        </div>
                        @empty
                        <p>No Data Available Here..</p>
                        @endforelse
                    </div>
                    <!--col end-->
                    <div class="col-6">
                       <div class="cartArea">
                       <ul>
                           <li class="compareTable"><a href="{{url('compare-product')}}"><i class="fa fa-signal" aria-hidden="true"></i><span>{{Cart::instance('compare')->content()->count()}}</span></a></li>
                           <li class="wishTable"><a href="{{url('wishlist/product')}}"><i class="fa fa-heart"></i><span>{{Cart::instance('wishlist')->content()->count()}}</span></a></li>
                           <li class="cartTable"><a href="{{url('show-cart')}}"><i class="fa fa-shopping-basket"></i> <span>{{Cart::instance('shopping')->count()}}</span></a></li>
                       </ul>
                   </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                       <div class="main-search">
                            <form action="{{url('search')}}" method="POST">
                                @csrf
                                <input type="text" name="keyword" class="search_data" placeholder="search here...">
                                <button><i class="fa fa-search"></i></button>
                            </form>
                             <div class="search-product-inner search_result" id="live_data_show"></div> 
                       </div>
                    </div>
                </div>
            </div>
        </section>
   <section class="topbar">
       <div class="container">
           <div class="row">
               <div class="col-md-6 col-sm-12">
                   <div class="top-widget">
                        <div class="top-widget-left">
                            <ul>
                                <li>
                                    @foreach($contactinfoes as $key=>$value)
                                    <a href="tel:{{$value->phone}}">
                                    <i class="fa fa-phone"></i> {{$value->phone}}
                                    </a>
                                    @endforeach
                                     @foreach($contactinfoes as $key=>$value)
                                    <a href="mailto:{{$value->email}}">
                                    <i class="fa fa-envelope"></i> {{$value->email}}
                                    </a>
                                     @endforeach
                                </li>
                            </ul>
                        </div>
                   </div>
               </div>
               
               <div class="col-sm-6 col-md-6">
                   <div class="top-widget md-none">
                        <div class="top-widget-right">
                            <ul>
                                
                                <li>
                                    <a href="#" class="trackorder" data-toggle="modal" data-target="#myModal">Track Order</a>
                                </li>                              
                                        @php
                                             $customerId = Session::get('customerId');
                                             $customerInfo=App\Customer::where(['id'=>$customerId])->first();
                                        @endphp
                                        @if($customerId!=NULL)
                                            <li>
                                                <a href="{{url('customer/account')}}">
                                                   <i class="fa fa-user"></i>  {{$customerInfo->fullName}}
                                                </a>
                                            </li>
                                            <li>
                                                <a href="{{url('customer/logout')}}">
                                                   <i class="fa fa-sign-out"></i> Logout
                                                </a>
                                            </li>
                                            @else
                                            <li>
                                           <a href="{{url('/customer/register')}}"><i class="fa fa-user"></i> Register</a>
                                            </li>
                                            <li>
                                           <a href="{{url('customer/login')}}"><i class="fa fa-sign-in"></i> Login</a>
                                            </li>
                                            @endif
                                        
                                </li>
                            </ul>
                        </div>
                   </div>
               </div>
           </div>
       </div>
   </section>

    <!-- Header Top End -->
    <div class="main-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-6">
                    @forelse($mainlogo as $key=>$value)
                    <div class="logo">
                        <a href="{{url('/')}}"><img src="{{asset($value->image)}}" alt=""></a>
                    </div>
                    @empty
                    <p>No Data Available Here..</p>
                    @endforelse
                </div>
                <!--col end-->
                <div class="col-lg-66 col-md-6 col-sm-6 col-xs-12">
                   <div class="main-search">
                        <form action="{{url('search')}}" method="POST">
                            @csrf
                            <input type="text" name="keyword" class="search_data" placeholder="search here...">
                            <button><i class="fa fa-search"></i> Search</button>
                        </form>
                         <div class="search-product-inner search_result" id="live_data_show"></div> 
                   </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-5">
                   <div class="cartArea">
                       <ul>
                           <li class="compareTable"><a href="{{url('compare-product')}}"><i class="fa fa-signal" aria-hidden="true"></i><span>{{Cart::instance('compare')->content()->count()}}</span></a></li>
                           <li class="wishTable"><a href="{{url('wishlist/product')}}"><i class="fa fa-heart"></i><span>{{Cart::instance('wishlist')->content()->count()}}</span></a></li>
                           <li class="cartTable"><a href="{{url('show-cart')}}"><i class="fa fa-shopping-basket"></i> <span>{{Cart::instance('shopping')->count()}}</span></a></li>
                       </ul>
                   </div>
                   </div>
                </div>

            </div>
        </div>
    </div>
    <!--main header end-->
    <section class="main-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="main-menu">
                        <ul>
                            <li>
                                <a class="category anchor" id="hovercategory"> <i class="fa fa-bars"></i>categories  </a>
                            </li>
                            <li> <a href="{{url('/')}}">Home</a></li>
                            <li> <a href="{{url('/brands')}}">Brands</a></li>
                            <li> <a href="{{url('/offer')}}">Offer</a></li>
                            <li> <a href="{{url('/our-blog')}}">Blog</a></li>
                            <li> <a href="{{url('/more-info/about-us')}}">About Us</a></li>
                            <li> <a href="{{url('/contact-us')}}">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--main header end-->
    

    
    <div id="content">
        @yield('content')
    </div>
    <!-- content end -->

<footer>
        <div class="footer-top-area">
            <div class="container">
                <div class="row">
                    <!-- footer-widget start -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget">
                            <h3>contact us</h3>
                            @foreach($contactinfoes as $key=>$value)
                              <ul class="footer-contact">
                                    <li>
                                        <i class="fa fa-map-marker"></i>
                                         <p>{{$value->address}}</p>
                                    </li>
                                    
                                    <li>
                                         <i class="fa fa-envelope"></i>
                                         <a href="mailto:{{$value->email}}">{{$value->email}}</a>
                                    </li>
                                    <li>
                                         <i class="fa fa-phone"></i>
                                         <a href="tel:{{$value->phone}}">{{$value->phone}}</a>
                                    </li>
                                </ul>
                                @endforeach
                                <div class="social">
                                    @foreach($socialicons as $value)
                                    <a href="{{$value->link}}" target="_blank" class="facebook"><i class="{{$value->icon}}"></i></a>
                                   @endforeach
                                </div>
                        </div>
                    </div>
                    <!-- footer-widget start -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget">
                            <h3>Information</h3>
                            <ul class="footer-contact">
                                @foreach($footermenuleft as $value)
                                <li><a href="{{url('more-info/'.$value->slug)}}">{{$value->pagename}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <!-- footer-widget start -->
                    <div class="col-lg-3 col-md-6  col-sm-6 col-12">
                        <div class="footer-widget">
                            <h3>More Information</h3>
                            <ul class="footer-contact">
                                @foreach($footermenuright as $value)
                                <li><a href="{{url('more-info/'.$value->slug)}}">{{$value->pagename}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <!-- footer-widget start -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget">
                            <div class="widget">
                                <h3>Account & Shipping</h3>
                                <ul class="footer-contact">
                                    @if(session::get('customerId')==NULL)
                                    <li><a href="{{url('customer/login')}}">Login</a></li>
                                    @else
                                    <li><a href="{{url('customer/account')}}">Profile Info</a></li>
                                    @endif
                                    <li><a href="{{url('wishlist/product')}}">Wishlist</a></li>
                                    <li><a href="#" data-toggle="modal" data-target="#myModal">Track Order</a></li>
                                    <li><a href="{{url('contact-us')}}">Address</a></li>
                                    <li><a href="{{url('contact-us')}}">Support Tickets</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <!-- footer-widget end -->
                </div>
            </div>
        </div>
        
       
    </footer>
    <!--footer end-->
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <p style="color:#fff">
                            Copyright ©  @php  echo date('Y') @endphp website.com. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
<section>
       <div id="myModal" class="modal fade" role="dialog">
          <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>
              <div class="modal-body">
                 <h3>Order Tracking Form</h3>
                 <form action="{{url('customer/order-track')}}" method="POST">
                     @csrf
                     <div class="form-group">
                         <label>Track Id</label>
                         <input type="text" name="trackId" required="required">
                     </div>
                     <div class="form-group">
                         <button type="submit">Submit</button>
                     </div>
                 </form>
              </div>
            </div>
          </div>
      </div>
   </section>
 <div class="scrolltop" style="display: block;">
    <div class="scroll icon"><i class="fa fa-angle-up"></i></div>
</div>
<!-- main add to cart ajax end -->
<script src="{{asset('public/frontEnd/')}}/js/bootstrap.min.js"></script>
<!--bootstrap js-->
<script src="{{asset('public/frontEnd/')}}/js/owl.carousel.min.js"></script>
<!--owl carousel js-->
<script src="{{asset('public/frontEnd/')}}/js/swiper.min.js"></script>
<!--swiper js-->
<script src="{{asset('public/frontEnd/')}}/js/jquery.sticky.js"></script>
<!-- sticky js -->
<script src="{{asset('public/frontEnd/')}}/js/jquery.nice-select.js"></script>
<!-- nice-select js -->
<script src="{{asset('public/frontEnd/')}}/js/jquery.scrollUp.js"></script>
<!--scrollUp js-->
<script src="{{asset('public/frontEnd/')}}/js/mobile-menu.js"></script>
<!--mobile menu js-->
<script src="{{asset('public/frontEnd/')}}/js/zoomsl.min.js"></script>
<!--jqzoom.js js-->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload.js"></script>
<script type="text/javascript">
    	$("img").lazyload({
    	    effect : "fadeIn"
    	});
    </script>
    <script>
    $(document).ready(function () {
        $(".block__pic").imagezoomsl({
            zoomrange: [3, 3]
        });
    });
</script>
<script>
    $(document).ready(function() {
      $('.sort-form select').niceSelect();
    });
</script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/0.2.1/jquery.velocity.min.js'></script>
<script src="{{asset('public/frontEnd/')}}/js/mtree.js"></script>
    <!--scrollUp js-->
<script src="{{asset('public/backEnd')}}/js/toastr.min.js"></script>
<!-- toastr js -->
{!! Toastr::message() !!}
<!--parallax js-->
<script src="{{asset('public/frontEnd/')}}/js/script.js"></script>

<script>
      $('#area').on('change',function(){
        var id = $(this).val();
        if(id){
            $.ajax({
               cache: 'false',
               type:"GET",
               url:"{{url('shipping-charge')}}/"+id,
               dataType: "json",
                success: function(shippingfee){
                return shippingContent();
                }
            });
        }
       });
       
       function shippingContent(){
         $.ajax({
           type:"GET",
           cache: 'false',
           url:"{{url('/shipping/content')}}",
           dataType: "html",
           success: function(shippingfee){
             $('.shippingContent').html(shippingfee);
           }
            });
        };
        
  </script>


<script type="text/javascript">
    $("#hidemenu" ).hide();
    $('#hovercategory').click(function() {
      $('#hidemenu').slideToggle('slow', function() {
      });
    });
</script>
<script>
     $(document).ready(function(){
        var quantitiy=0;
        $('#quantity-right').click(function(e){
        e.preventDefault();
        var quantity = parseInt($('#quantity').val());
            $('#quantity').val(quantity + 1);
        });
        $('#quantity-left').click(function(e){
        e.preventDefault();
        var quantity = parseInt($('#quantity').val());
            if(quantity>1){
            $('#quantity').val(quantity - 1);
            }
        });

    });
</script>
<script type="text/javascript">
    $(".search_data").on('keyup', function(){
       var keyword = $(this).val();
       $.ajax({
        type: "GET",
        url: "{{url('/')}}/search_data/" +keyword,
        data: { keyword: keyword },
        success: function (data) {
          console.log(data);
          $(".search_result").html('');
          $(".search_result").html(data);
        }
       });
    });
</script>
<script type="text/javascript">
    $(".mycatclose").on('click', function(){
      $('.navigation').removeClass('open');
    });
</script>
<script type="text/javascript">
    $(".mycatopen").on('click', function(){
      $('.navigation').addClass('open');
    });
</script>
<script>
   $(".MenuOpen").on('click', function(){
      $('.hc-offcanvas-nav').addClass('nav-open').css('visibility','visible');
    });
  
</script>
<script>
   $(".subcatsort").change(function(e){
    var sort = $(this).val();
      $.ajax({
           cache: false, 
           type:"GET",
           url:"",
           dataType: "html",
           data : "sort="+sort,
         success: function(products){
             console.log(products);
            $('.updateDiv').html(products);
        }
      });
});
</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script type="text/javascript">
        $('#proSubcategory').on('change',function(){
        var ajaxId = $(this).val();  
        if(ajaxId){
            $.ajax({
               type:"GET",
               url:"{{url('ajax-product-childsubcategory')}}?category_id="+ajaxId,
               success:function(res){               
                if(res){
                    $("#proChildcategory").empty();
                     $("#proChildcategory").append('<option value="0">===select childcategory===</option>');
                    $.each(res,function(key,value){
                        $("#proChildcategory").append('<option value="'+key+'">'+value+'</option>');
                    });
               
                }else{
                   $("#proChildcategory").empty();
                }
               }
            });
        }else{
            $("#proChildcategory").empty();
        }
            
       });
    </script>
     <script>
        var galleryThumbs = new Swiper('.gallery-thumbs', {
          spaceBetween: 10,
          slidesPerView: 4,
          freeMode: true,
          watchSlidesVisibility: true,
          watchSlidesProgress: true,
        });
        var galleryTop = new Swiper('.gallery-top', {
          spaceBetween: 10,
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          },
          thumbs: {
            swiper: galleryThumbs
          }
        });
      </script>

      <script>
          
            function myFunction() {
              document.getElementById("myDropdown").classList.toggle("show");
            }

            // Close the dropdown menu if the user clicks outside of it
            window.onclick = function(event) {
              if (!event.target.matches('.dropbtn')) {
                var dropdowns = document.getElementsByClassName("dropdown-content");
                var i;
                for (i = 0; i < dropdowns.length; i++) {
                  var openDropdown = dropdowns[i];
                  if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                  }
                }
              }
            } 
      </script>
     <script type="text/javascript">
        $('#district').on('change',function(){
        var ajaxId = $(this).val();  
        if(ajaxId){
            $.ajax({
               type:"GET",
               url:"{{url('ajax-district')}}?district_id="+ajaxId,
               success:function(res){               
                if(res){
                    $("#area").empty();
                     $("#area").append('<option value="0">Select...</option>');
                    $.each(res,function(key,value){
                        $("#area").append('<option value="'+key+'" class="area">'+value+'</option>');
                    });
               
                }else{
                   $("#area").empty();
                }
               }
            });
        }else{
            $("#area").empty();
        }
            
       });
    </script> 
        <script>
            $('.mpcatshow').on("click", function(){  
                 jQuery('.mpcatcontent').toggle('show');
            });
        </script>
        <script>
            $(document).ready(function(){
                // Add minus icon for collapse element which is open by default
                $(".collapse.show").each(function(){
                	$(this).prev(".card-header").find(".fa").addClass("fa-caret-down").removeClass("fa-caret-up");
                });
                
                // Toggle plus minus icon on show hide of collapse element
                $(".collapse").on('show.bs.collapse', function(){
                	$(this).prev(".card-header").find(".fa").removeClass("fa-caret-up").addClass("fa-caret-down");
                }).on('hide.bs.collapse', function(){
                	$(this).prev(".card-header").find(".fa").removeClass("fa-caret-down").addClass("fa-caret-up");
                });
            });
        </script>

<!--End of Tawk.to Script-->
    <script type="text/javascript">
    $(document).ready(function(){

    // ============checkout ajax==============
    $('.addcartbutton').on('click',function(){
        var id = $(this).data('id');
        var qty = 1;
        if(id){
            $.ajax({
               cache: 'false',
               type:"GET",
               url:"{{url('add-to-cart')}}/"+id+'/'+qty,
               dataType: "json",
            success: function(cartinfo){
                return cartContent()+mobileContent();
                }
            });
        }
       });
    // get type
      // cart qty increment to cart start
    $(".incrementqty").click(function(e){
        var id = $(this).val();
        // alert(id);
        if(id){
              $.ajax({
               cache: false,
               type:"GET",
               url:"{{url('increment-cart')}}/"+id,
               dataType: "json",
            success: function(cartinfo){
                return cartContent()+mobileContent();
            }
          });
        }
   });
    // cart qty increment to cart end

    // cart qty increment to cart start
    $(".decrementqty").click(function(e){
        var id = $(this).val();
        // alert(id);
        // alert(newQuantity);
        if(id){
              $.ajax({
               cache: false, 
               type:"GET",
               url:"{{url('decrement-cart')}}/"+id,
               dataType: "json",
            success: function(cartinfo){
                return cartContent()+mobileContent();
            }
          });
        }
   });
    // cart qty increment to cart end
    $('.remove').click(function(){
        var id = $(this).data("id");
        // alert(id);
        if(id){
            $.ajax({
               cache: 'false',
               type:"GET",
               url:"{{url('delete-cart')}}/"+id,
               dataType: "json",
            success: function(cartinfo){
                return cartContent()+mobileContent();
                }
            });
        }
       
       });
         function cartContent(){
           $.ajax({
             type:"GET",
             cache: 'false',
             url:"{{url('/cart/content')}}",
             dataType: "html",
             success: function(cartinfo){
                toastr.success('Thanks', 'Product add to cart');
               $('.cartTable').html(cartinfo);
             }
              });
          };
          function mobileContent(){
           $.ajax({
             cache: 'false',
             type:"GET",
             url:"{{url('/cart/mobile-content')}}",
             dataType: "html",
             success: function(cartinfo){
               $('.mobileTable').html(cartinfo);
             }
              });
          };
          $('.wishcartbutton').click(function(){
        var id = $(this).data('id');
        if(id){
            $.ajax({
               cache: 'false',
               type:"GET",
               url:"{{url('add-to-wishlist')}}/"+id,
               dataType: "json",
                success: function(wishlistinfo){
                return wishContent();
                }
            });
        }
       
       });
     function wishContent(){
     $.ajax({
       type:"GET",
       url:"{{url('wishlist/content')}}",
       dataType: "html",
       success: function(wishlistinfo){
         toastr.success('Product add in wishlist', '');
         $('.wishTable').html(wishlistinfo);
       }
        });
    }
    // get type
    $('.comparecartbutton').click(function(){
        var id = $(this).data('id');
        if(id){
            $.ajax({
               cache: 'false',
               type:"GET",
               url:"{{url('add-to-compare')}}/"+id,
               dataType: "json",
            success: function(compareinfo){
                return compareContent();
                }
            });
        }
       
       });
     function compareContent(){
     $.ajax({
       type:"GET",
       url:"{{url('compare/content')}}",
       dataType: "html",
       success: function(compareinfo){
         toastr.success('Product add in compare', '');
         $('.compareTable').html(compareinfo);
       }
        });
    }
    // get type
  });
</script>
<script>
$('.mpcatshow').on("click", function(){  
     jQuery('.mpcatcontent').toggle('show');
});
</script>
<script>
    $(document).ready(function(){
        // Add minus icon for collapse element which is open by default
        $(".collapse.show").each(function(){
        	$(this).prev(".card-header").find(".fa").addClass("fa-caret-down").removeClass("fa-caret-up");
        });
        
        // Toggle plus minus icon on show hide of collapse element
        $(".collapse").on('show.bs.collapse', function(){
        	$(this).prev(".card-header").find(".fa").removeClass("fa-caret-up").addClass("fa-caret-down");
        }).on('hide.bs.collapse', function(){
        	$(this).prev(".card-header").find(".fa").removeClass("fa-caret-down").addClass("fa-caret-up");
        });
    });
</script>
<!--Start of Tawk.to Script-->
<script>
   $(".MenuOpen").on('click', function(){
      $('.hc-offcanvas-nav').addClass('nav-open').css('visibility','visible');
    });
  
</script>
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5edb90ac2b31b3f0"></script>

<script>
$(window).scroll(function() {
    if ($(this).scrollTop() > 50 ) {
        $('.scrolltop:hidden').stop(true, true).fadeIn();
    } else {
        $('.scrolltop').stop(true, true).fadeOut();
    }
});
$(function(){$(".scroll").click(function(){$("html,body").animate({scrollTop:$(".gotop").offset().top},"1000");return false})})
</script>
<script>
  if( localStorage.getItem('wuid') ==''){
      let uniqueId = Date.now().toString(36) + Math.random().toString(36).substring(2);
      localStorage.setItem('wuid',uniqueId);
    }
</script>
</body>

</html>
