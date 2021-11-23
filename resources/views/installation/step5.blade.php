@extends('frontEnd.layouts.blank')
@section('content')
    <div class="container">
        <div class="row pt-5 d-flex justify-content-center">
            <div class="col-md-6">
                <div class="mar-ver pad-btm text-center">
                    <h1 class="h3">Admin Account Settings <i class="fa fa-cogs"></i></h1>
                    <p>Provide your information.</p>
                </div>
                <div class="text-muted font-13">
                    <form method="POST" action="{{ route('system_settings') }}">
                        @csrf

                        <div class="form-group">
                            <label class="float-left mb-0" for="name">Admin Name</label>
                            <input type="text" class="form-control border-primary" id="name" name="name" required>
                        </div>

                        <div class="form-group">
                            <label class="float-left mb-0" for="email">Admin Email</label>
                            <input type="email" class="form-control border-primary" id="email" name="email" required>
                        </div>

                        <div class="form-group">
                            <label class="float-left mb-0" for="phone">Admin Phone</label>
                            <input type="number" class="form-control border-primary" id="phone" name="phone" required>
                        </div>

                        <div class="form-group">
                            <label class="float-left mb-0" for="password">Admin Password (At least 6 characters)</label>
                            <input type="text" class="form-control border-primary" id="password" name="password" required>
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
