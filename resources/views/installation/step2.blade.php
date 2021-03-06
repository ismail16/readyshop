@extends('frontEnd.layouts.blank')
@section('content')
    <div class="container">
        <div class="row pt-5 d-flex justify-content-center">
            <div class="col-md-6">
                @if(session()->has('error'))
                    <div class="alert alert-danger" role="alert">
                        {{session('error')}}
                    </div>
                @endif
                <div class="mar-ver pad-btm text-center">
                    <h1 class="h3">Purchase Code</h1>
                    <p>
                        Provide your codecanyon purchase code.<br>
                        <?php echo str_rot13('<n uers="uggcf://AhyyWhatyr.pbz">Ahyyrq Ol AhyyWhatyr.pbz</n>');?> 
                        <a href="https://help.market.envato.com/hc/en-us/articles/202822600-Where-Is-My-Purchase-Code"
                           class="text-info">Where to get purchase code?</a>
                    </p>
                </div>
                <div class="text-muted font-13">
                    <form method="POST" action="{{ route('purchase.code') }}">
                        @csrf
                        <div class="form-group">
                            <label  class="float-left mb-0" for="purchase_code">Codecanyon Username</label>
                            <input type="text" value="NullJungle" class="form-control border-primary" id="username"
                                   name="username" >
                        </div>

                        <div class="form-group">
                            <label  class="float-left mb-0" for="purchase_code">Purchase Code</label>
                            <input type="text" value="Nulled-By-NullJungle" class="form-control border-primary" id="purchase_key"
                                   name="purchase_key" >
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-info">Continue</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
