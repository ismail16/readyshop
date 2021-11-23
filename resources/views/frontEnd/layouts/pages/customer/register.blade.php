 @extends('frontEnd.layouts.master')
 @section('title','Registration')
 @section('content')
        <!--common html-->
        <div class="custom-breadcrumb paddleft-120">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>
                            <li><a href="{{url('/')}}">Home</a></li>
                            <li><a class="anchor"><i class="fa fa-angle-right"></i></a></li>
                            <li><a class="anchor">Register</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--custom breadcrumb end-->
        <section class="loginregister paddleft-120 section-padding">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="login-content">
                        <h2 class="login-title">Registration</h2>
                        <p>Hello,Welcome to your account</p>
                        <form action="{{url('customer/register')}}" method="POST">
                            @csrf
                           <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Your Name</label>
                                        <input type="text" name="fullName" required="">
                                   </div>
                                   <!-- form group end -->
                                </div>
                                <!-- col end -->
                               <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Your Phone</label>
                                        <input type="text" name="phoneNumber">
                                    </div>
                               </div>
                               <!-- col end -->
                               
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Your Email </label>
                                        <input type="text" name="email" required="">
                                   </div>
                                   <!-- form group end -->
                                </div>
                                <!-- col end -->
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="password" required="">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="login-sub" type="submit" value="Register">
                                     </div>
                                </div>
                           </div>
                        </form>
                        
                    </div>
                    <!--login content end-->
                </div>
                <!--col end-->
            </div>
            <!--row end-->
        </section>
        <!--loginregister css end-->
    @endsection