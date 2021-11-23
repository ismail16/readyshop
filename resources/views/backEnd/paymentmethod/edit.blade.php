@extends('backEnd.layouts.master')
@section('title','Payment Method')
@section('main_content')
<section class="content">
  <div class="container-fluid">
    <div class="card card-default">
      <div class="card-header">
          <h3 class="card-title">Edit Blog information</h3>
          <div class="short_button">
            <a href="{{url('/editor/payment-method/manage')}}"><i class="fa fa-cogs"></i>Manage</a>
          </div>
      </div>
      <!--card-header -->
            <div id="form_body" class="card-body">
              <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-md-8">
                  <div class="custom-bg">
                    <form action="{{url('/editor/payment-method/update')}}" method="POST" enctype="multipart/form-data" name="editForm">
                      @csrf
                      <div class="row">
                        <input type="hidden" value="{{$edit_data->id}}" name="hidden_id">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="title">Title</label>
                                <input type="text" name="title" class="form-control{{ $errors->has('title') ? ' is-invalid' : '' }}" value="{{$edit_data->title}}">
                                @if ($errors->has('title'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('title') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>
                        <!-- form-group end -->
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="store_id">Store ID</label>
                                <input type="text" name="store_id" class="form-control{{ $errors->has('store_id') ? ' is-invalid' : '' }}" value="{{$edit_data->store_id}}">
                                @if ($errors->has('store_id'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('store_id') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>
                        <!-- form-group end -->
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="store_password">Store ID</label>
                                <input type="text" name="store_password" class="form-control{{ $errors->has('store_password') ? ' is-invalid' : '' }}" value="{{$edit_data->text}}">
                                @if ($errors->has('store_password'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('store_password') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>
                        <!-- form-group end -->
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="text">Description</label>
                                <textarea name="text" class="summernote form-control{{ $errors->has('text') ? ' is-invalid' : '' }}">{!!$edit_data->text!!}</textarea>

                                @if ($errors->has('text'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('text') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>
                        <!-- form-group end -->
                      <div class="col-sm-12">
                         <label for="">Publication Status <span>*</span></label>
                        <div class="box-body pub-stat display-inline">
                            <input class="form-control{{ $errors->has('status') ? ' is-invalid' : '' }}" type="radio" id="active" name="status" value="1" title="published">
                            <label for="active">Active</label>
                            @if ($errors->has('status'))
                            <span class="invalid-feedback">
                              <strong>{{ $errors->first('status') }}</strong>
                            </span>
                            @endif
                        </div>

                        <div class="box-body pub-stat display-inline">
                            <input class="form-control{{ $errors->has('status') ? ' is-invalid' : '' }}" type="radio" name="status" value="0" id="inactive" title="unpublished">
                            <label for="inactive">Inactive</label>
                            @if ($errors->has('status'))
                            <span class="invalid-feedback">
                              <strong>{{ $errors->first('status') }}</strong>
                            </span>
                            @endif
                        </div>
                      </div>
                      </div>
                      <!-- /.form-group -->
                      <div class="col-sm-6">
                          <div class="form-group mrt-30">
                              <button type="submit" class="btn submit-button">submit</button>
                              <button type="reset" class="btn btn-default">clear</button>
                          </div>
                      </div>
                      <!-- /.form-group -->
                 </div>
                </div>
              </div>
            <!-- /.col -->
              </form>
          </div>
        <!--card-body-->
      </div>
      <!--card-->
    </div>
  <!--container-fluid-->
  </section>
  <!-- /.content -->
  <script type="text/javascript">
      document.forms['editForm'].elements['blogcategory_id'].value={{$edit_data->blogcategory_id}}
      document.forms['editForm'].elements['status'].value={{$edit_data->status}}
    </script>
@endsection