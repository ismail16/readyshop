 @extends('frontEnd.layouts.master')
 @section('title','Login')
 @section('content')
        <!--common html-->
       <div class="custom-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul>
                             @include('frontEnd.layouts.includes.sidebar')  
                            <li><a href="{{url('/')}}"><i class="fa fa-home"></i> Home</a></li>
                            @if(Cart::content())
                            <li><a class="anchor"><i class="fa fa-angle-right"></i></a></li>
                            <li><a class="anchor">Shopping <i class="fa fa-angle-right"></i></a></li>
                            @endif
                            <li><a class="anchor">Login</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--custom breadcrumb end-->
        <section class="section-padding">
           <div class="container">
             <div class="row">
              <div class="col-sm-4"></div>
               <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="login-content">
                        <h2 class="login-title">Login</h2>
                        <p>If you have already account please login here</p>
                        <form action="{{url('customer/panel/login')}}" method="POST">
                            @csrf
                            <div class="from-group">
                                <label for="phoneOremail">Email Or Phone</label>
                                <input type="text" name="phoneOremail" class="form-control {{ $errors->has('phoneOremail') ? ' is-invalid' : '' }}"  value="{{ old('phoneOremail') }}" required="required">
                                @if ($errors->has('phoneOremail'))
                                  <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('phoneOremail') }}</strong>
                                  </span>
                                  @endif
                            </div>
                            <!-- form group -->
                            <div class="form-group">
                              <label for="password">Password</label>
                                <input type="password" name="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" value="{{ old('password') }}" >
                                @if ($errors->has('password'))
                                      <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                  </span>
                                @endif
                            </div>
                            <input class="login-sub" type="submit" value="Login">
                            <a href="{{url('/customer/forget-password')}}" style="margin-left:10px; text-decoration: underline;">Forget Password</a>
                        </form>
                        <div class="scustomer-register">
                           <a href="{{url('customer/register')}}">create new account</a>
                        </div>
                        <div class="socialLogin">
                          <ul>
                                <li><a href="{{url('login/facebook/redirect')}}" class="btn btn-facebook"><i class="fa fa-facebook"></i>Facebook</a></li>
                                <li class="gmail"><a href="{{url('login/google/redirect')}}" class="btn btn-gmail"><i class="fa fa-google"></i>Gmail</a></li>
                          </ul>
                       </div>
                    </div>
                    <!--login content end-->
                </div>
                <!-- col end -->
             </div>
           </div>
        </section>
        
    @endsection