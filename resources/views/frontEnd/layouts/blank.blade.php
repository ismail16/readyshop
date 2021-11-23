<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <title>
        @yield('title')
    </title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <!-- Viewport-->
    <meta name="_token" content="{{csrf_token()}}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="">
    <link rel="icon" type="image/png" sizes="32x32" href="">
    <link rel="icon" type="image/png" sizes="16x16" href="">

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
    <link rel="stylesheet" href="{{asset('backEnd')}}/css/toastr.min.css">
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
<!-- Body-->
<body class="toolbar-enabled">

{{--loader--}}
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="loading" style="display: none;">
                <div style="position: fixed;z-index: 9999; left: 40%;top: 37% ;width: 100%">
                    <img width="200" src="{{asset('public/assets/front-end/img/loader.gif')}}">
                </div>
            </div>
        </div>
    </div>
</div>
{{--loader--}}

<!-- Page Content-->
@yield('content')

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


</body>
</html>
