 @extends('frontEnd.layouts.master')
@section('title','Customer Profile')
@section('content')
    <!--common html-->
        <section class="mainbreadcrumb" style="background: url({{asset('public/frontEnd/images/breadcrumb.jpg')}});background-position: center;background-size: cover;background-repeat: no-repeat;" >
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
                                        <p class="account-title">Shipping Address</p>
                                      @if($shippingAddress==NULL)
                                      <form action="{{url('customer/set/shipping-address')}}" method="POST" class="form-row">
                                          @csrf
                                          <div class="col-sm-6">
                                              <div class="from-group">
                                                  <label for="recipient">Name</label>
                                                  <input type="text" name="recipient" class="form-control {{ $errors->has('recipient') ? ' is-invalid' : '' }}"  value="{{ old('recipient') }}" required="required">
                                                  @if ($errors->has('recipient'))
                                                    <span class="invalid-feedback" role="alert">
                                                      <strong>{{ $errors->first('recipient') }}</strong>
                                                    </span>
                                                    @endif
                                              </div>
                                          </div>


                                          <div class="col-sm-6">
                                              <div class="from-group">
                                                  <label for="shippingPhone">Phone Number</label>
                                                  <input type="text" name="shippingPhone" class="form-control {{ $errors->has('shippingPhone') ? ' is-invalid' : '' }}"  value="{{ old('shippingPhone') }}" required="required">
                                                  @if ($errors->has('shippingPhone'))
                                                    <span class="invalid-feedback" role="alert">
                                                      <strong>{{ $errors->first('shippingPhone') }}</strong>
                                                    </span>
                                                    @endif
                                              </div>
                                          </div>
                                          <!-- form col end -->
                                          <!-- form col end -->
                                          <div class="col-sm-12">
                                              <div class="from-group">
                                                  <label for="recipient">Shipping Address</label>
                                                  <textarea name="shippingAddress" class="form-control {{ $errors->has('shippingAddress') ? ' is-invalid' : '' }}"  required="required">{{ old('shippingAddress') }}</textarea>
                                                  @if ($errors->has('shippingAddress'))
                                                    <span class="invalid-feedback" role="alert">
                                                      <strong>{{ $errors->first('shippingAddress') }}</strong>
                                                    </span>
                                                    @endif
                                              </div>
                                          </div>
                                          <!-- form col end -->

                                        <div class="col-sm-6">
                                             <div class="form-group">
                                                  <label for="district">District</label>
                                                  <select class="form-control{{ $errors->has('district') ? ' is-invalid' : '' }} district" value="{{ old('district') }}" id="district" name="district">
                                                      <option value="">Choose...</option>
                                                      @foreach($districts as $key=>$value) 
                                                      <option value="{{$value->id}}" required>{{$value->name}}</option>
                                                      @endforeach
                                                  </select>
                                                    @if ($errors->has('district'))
                                                    <span class="invalid-feedback" role="alert">
                                                      <strong>{{ $errors->first('district') }}</strong>
                                                    </span>
                                                    @endif
                                           </div>
                                      </div>
                                     <!-- /.form-group -->
                                      <div class="col-sm-6">
                                          <div class="form-group">
                                              <label for="area">Area </label>
                                              <select name="area" id="area" class="form-control {{ $errors->has('area') ? ' is-invalid' : '' }}" value="{{ old('area') }}" required>
                                              </select>
                                               @if ($errors->has('area'))
                                                <span class="invalid-feedback" role="alert">
                                                  <strong>{{ $errors->first('area') }}</strong>
                                                </span>
                                                @endif
                                          </div>
                                      </div>
                                    <!-- /.form-group -->
                                      <div class="col-sm-12">
                                          <div class="form-group">
                                              <input class="btn btn-primary" type="submit" value="Save">
                                           <div>
                                      </div>
                                          
                                      </form>
                                      @else
                                      <form action="{{url('customer/set/shipping-address')}}" method="POST" class="form-row" name="editForm">
                                          @csrf
                                          <div class="col-sm-6">
                                              <div class="from-group">
                                                  <label for="recipient">Name</label>
                                                  <input type="text" name="recipient" class="form-control {{ $errors->has('recipient') ? ' is-invalid' : '' }}"  value="{{$shippingAddress->recipient}}" required="required">
                                                  @if ($errors->has('recipient'))
                                                    <span class="invalid-feedback" role="alert">
                                                      <strong>{{ $errors->first('recipient') }}</strong>
                                                    </span>
                                                    @endif
                                              </div>
                                          </div>


                                          <div class="col-sm-6">
                                              <div class="from-group">
                                                  <label for="shippingPhone">Phone Number</label>
                                                  <input type="text" name="shippingPhone" class="form-control {{ $errors->has('shippingPhone') ? ' is-invalid' : '' }}"  value="{{$shippingAddress->shippingPhone}}" required="required">
                                                  @if ($errors->has('shippingPhone'))
                                                    <span class="invalid-feedback" role="alert">
                                                      <strong>{{ $errors->first('shippingPhone') }}</strong>
                                                    </span>
                                                    @endif
                                              </div>
                                          </div>
                                          <!-- form col end -->
                                          <!-- form col end -->
                                          <div class="col-sm-12">
                                              <div class="from-group">
                                                  <label for="recipient">Shipping Address</label>
                                                  <textarea name="shippingAddress" class="form-control {{ $errors->has('shippingAddress') ? ' is-invalid' : '' }}"  required="required">{{$shippingAddress->shippingAddress}}</textarea>
                                                  @if ($errors->has('shippingAddress'))
                                                    <span class="invalid-feedback" role="alert">
                                                      <strong>{{ $errors->first('shippingAddress') }}</strong>
                                                    </span>
                                                    @endif
                                              </div>
                                          </div>
                                          <!-- form col end -->

                                        <div class="col-sm-6">
                                             <div class="form-group">
                                                  <label for="district">District</label>
                                                  <select class="form-control{{ $errors->has('district') ? ' is-invalid' : '' }} district" value="{{ old('district') }}" id="district" name="district">
                                                      <option value="">Choose...</option>
                                                      @foreach($districts as $key=>$value) 
                                                      <option value="{{$value->id}}" required>{{$value->name}}</option>
                                                      @endforeach
                                                  </select>
                                                    @if ($errors->has('district'))
                                                    <span class="invalid-feedback" role="alert">
                                                      <strong>{{ $errors->first('district') }}</strong>
                                                    </span>
                                                    @endif
                                           </div>
                                      </div>
                                     <!-- /.form-group -->
                                      <div class="col-sm-6">
                                          <div class="form-group">
                                              <label for="area">Area </label>
                                              <select name="area" id="area" class="form-control {{ $errors->has('area') ? ' is-invalid' : '' }}" value="{{ old('area') }}" required>
                                                @foreach($saveareas as $savearea)
                                                  <option value="{{$savearea->id}}">{{$savearea->area}}</option>
                                                  @endforeach
                                              </select>
                                               @if ($errors->has('area'))
                                                <span class="invalid-feedback" role="alert">
                                                  <strong>{{ $errors->first('area') }}</strong>
                                                </span>
                                                @endif
                                          </div>
                                      </div>
                                    <!-- /.form-group -->
                                      <div class="col-sm-12">
                                          <div class="form-group">
                                              <input class="btn btn-primary" type="submit" value="Save">
                                           <div>
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
        </section>
         @if($shippingAddress!=NULL)
        <script type="text/javascript">
            document.forms['editForm'].elements['district'].value="{{$shippingAddress->district}}"
            document.forms['editForm'].elements['area'].value={{$shippingAddress->area}}
        </script>
        @endif
      </section>
@endsection