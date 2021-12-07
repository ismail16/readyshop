@extends('backEnd.layouts.master')
@section('title','Product Add')
@section('main_content')
<section class="content">
  <div class="container-fluid">
    <div class="card card-default">
      <div class="card-header">
          <h3 class="card-title">Product information</h3>
          <div class="short_button">
            <a href="{{url('/editor/product/manage')}}"><i class="fa fa-cogs"></i>Manage</a>
          </div>
      </div>
      <!--card-header -->
            <div id="form_body" class="card-body">
              <div class="row">
                <div class="col-sm-12">
                  <div class="custom-bg">
                    <form action="{{url('/editor/product/update')}}" method="POST" enctype="multipart/form-data" name="editForm">
                      @csrf
                      <div class="row">
                        <input type="hidden" value="{{$edit_data->id}}" name="hidden_id">
                        <div class="col-sm-4">
                               <div class="form-group">
                                <label for="title">Category <span>*</span></label>
                                <select class="form-control select2{{ $errors->has('proCategory') ? ' is-invalid' : '' }}" value="{{ old('proCategory') }}" id="proCategory" name="proCategory">
                                    <option value="">====Select your category====</option>
                                    @foreach($category as $key=>$value) 
                                    <option value="{{$value->id}}" required>{{$value->name}}</option>
                                    @endforeach
                                </select>
                                  @if ($errors->has('proCategory'))
                                  <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('proCategory') }}</strong>
                                  </span>
                                  @endif
                             </div>
                        </div>
                      <!-- /.form-group -->
                        <div class="col-sm-4">
                           <div class="form-group">
                                <label for="title">Subcategory</label>
                                <select name="proSubcategory" id="proSubcategory" class="form-control {{ $errors->has('proSubcategory') ? ' is-invalid' : '' }}" value="{{ old('proSubcategory') }}">
                                   @foreach($subcategory as $key=>$value)
                                     <option value="{{$value->id}}">{{$value->subcategoryName}}</option>
                                  @endforeach
                                </select>
                                 @if ($errors->has('proSubcategory'))
                                  <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('proSubcategory') }}</strong>
                                  </span>
                                  @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                        <div class="col-sm-4">
                           <div class="form-group">
                            <label for="title">Child Category  (Optional)</label>
                                <select name="proChildcategory" id="proChildcategory" class="form-control{{ $errors->has('proChildcategory') ? ' is-invalid' : '' }}" value="{{ old('proChildcategory') }}">
                                  @foreach($childcategory as $key=>$value)
                                     <option value="{{$value->id}}">{{$value->childcategoryName}}</option>
                                  @endforeach
                                </select>
                                @if ($errors->has('proChildcategory'))
                                  <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('proChildcategory') }}</strong>
                                  </span>
                                  @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                        <div class="col-sm-4">
                           <div class="form-group">
                            <label for="title">Brand  (Optional)</label>
                                <select name="proBrand" id="proBrand" class="select2 form-control{{ $errors->has('proBrand') ? ' is-invalid' : '' }}" >
                                  <option value="">====Select Brand====</option>
                                  @foreach($brands as $key=>$value)
                                  <option value="{{$value->id}}">{{$value->brandName}}</option>
                                  @endforeach
                                </select>
                                @if ($errors->has('proBrand'))
                                  <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('proBrand') }}</strong>
                                  </span>
                                  @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                      <!-- /.form-group -->
                        <div class="col-sm-8">
                            <div class="form-group">
                              <label>Product Name <span>*</span></label>
                              <input type="text" name="proName" class="form-control{{ $errors->has('proName') ? ' is-invalid' : '' }}" value="{{ $edit_data->proName}}">

                              @if ($errors->has('proName'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proName') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                      <div class="col-sm-4">
                            <div class="form-group">
                              <label>Purchase Price <span>*</span></label>
                              <input type="number" step="any" name="proPurchaseprice" class="form-control{{ $errors->has('proPurchaseprice') ? ' is-invalid' : '' }}" value="{{$edit_data->proPurchaseprice}}">

                              @if ($errors->has('proPurchaseprice'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proPurchaseprice') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                        
                        <div class="col-sm-4">
                            <div class="form-group">
                              <label>Old Product (Optional)</label>
                              <input type="number" step="any" name="proOldprice" class="form-control{{ $errors->has('proOldprice') ? ' is-invalid' : '' }}" value="{{ $edit_data->proOldprice}}">

                              @if ($errors->has('proOldprice'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proOldprice') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!-- /.form-group -->

                      <div class="col-sm-4">
                        <div class="form-group">
                          <label>New Price <span>*</span></label>
                          <input type="number" step="any" name="proNewprice" class="form-control{{ $errors->has('proNewprice') ? ' is-invalid' : '' }}" value="{{$edit_data->proNewprice}}">

                          @if ($errors->has('proNewprice'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('proNewprice') }}</strong>
                          </span>
                          @endif
                        </div>
                    </div>
                  <!-- /.form-group -->
                   <div class="col-sm-4">
                        <div class="form-group">
                          <label for="image"> Product Image <span>*</span></label>

                            <div class="clone hide" style="display: none;">
                              <div class="control-group input-group" >
                                <input type="file" name="image[]" class="form-control">
                                <div class="input-group-btn"> 
                                  <button class="btn btn-danger" type="button"><i class="fa fa-trash"></i></button>
                                </div>
                              </div>
                            </div>

                            <div class="input-group control-group increment" >
                              <input type="file" name="image[]" class="form-control">
                              <div class="input-group-btn"> 
                                <button class="btn btn-success" type="button"><i class="fa fa-plus"></i></button>
                              </div>
                            </div>
                            @foreach($productimage as $image)
                               @if($edit_data->id==$image->product_id) 
                                <div class="edit-img">
                                  <input type="hidden" class="form-control" value="{{$image->id}}" name="hidden_img">
                                 <img src="{{asset($image->image)}}" class="editimage" alt="">
                                  <a href="{{url('editor/product/image/delete/'.$image->id)}}" class="btn btn-danger">Delete</a>
                                </div>
                               @endif
                            @endforeach
                          @if ($errors->has('image'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('image') }}</strong>
                          </span>
                          @endif
                        </div>
                      </div>
                      <!-- col end -->

                      <div class="col-sm-4">
                            <div class="form-group">
                              <label>Product Quantity <span>optional</span></label>
                              <input type="number" name="proQuantity" class="form-control{{ $errors->has('proQuantity') ? ' is-invalid' : '' }}" value="{{$edit_data->proQuantity}}" min="1">

                              @if ($errors->has('proQuantity'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proQuantity') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                      <div class="col-sm-4">
                            <div class="form-group">
                              <label>Product Unit <span>optional</span></label>
                              <input type="text" name="unit" class="form-control{{ $errors->has('unit') ? ' is-invalid' : '' }}" value="{{$edit_data->unit}}" min="1">

                              @if ($errors->has('unit'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('unit') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                      <div class="col-sm-4">
                            <div class="form-group">
                              <label>Product Code (Optional)</label>
                              <input type="text" name="proCode" class="form-control{{ $errors->has('proCode') ? ' is-invalid' : '' }}" value="{{ $edit_data->proCode}}">

                              @if ($errors->has('proCode'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proCode') }}</strong>
                              </span>
                              @endif
                            </div>
                        </div>
                      <!-- /.form-group -->
                      <div class="col-sm-4">
                        <div class="form-group">
                        <label for="title">Product size (Optional)</label>
                            <select name="proSize[]" class="form-control select2{{ $errors->has('proSize') ? ' is-invalid' : '' }}"  multiple="multiple">
                              @foreach($totalsizes as $totalsize)
                                  <option value="{{$totalsize->id}}" @foreach($selectsizes as $selectsize) @if($totalsize->id == $selectsize->size_id)selected="selected"@endif @endforeach>{{$totalsize->sizeName}}</option>
                              @endforeach
                            </select>
                            @if ($errors->has('proSize'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proSize') }}</strong>
                              </span>
                              @endif
                        </div>
                      </div>
                        <!-- form group end -->
                      <div class="col-sm-4">
                        <div class="form-group">
                        <label for="title">Product color (Optional)</label>
                            <select name="proColor[]" class="form-control select2{{ $errors->has('proColor') ? ' is-invalid' : '' }}"  multiple="multiple">
                              @foreach($totalcolors as $totalcolor)
                                  <option value="{{$totalsize->id}}" @foreach($selectcolors as $selectcolor) @if($totalcolor->id == $selectcolor->color_id)selected="selected"@endif @endforeach>{{$totalcolor->colorName}}</option>
                              @endforeach
                            </select>
                            @if ($errors->has('proColor'))
                              <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('proColor') }}</strong>
                              </span>
                              @endif
                        </div>
                      </div>
                        <!-- form group end -->
                      <div class="col-sm-12">
                        <div class="form-group ">
                                <label for="Picture">Short Description <span>*</span></label>
                                    <textarea name="shortDescription" class="summernote form-control{{ $errors->has('shortDescription') ? ' is-invalid' : '' }}" value="{{ old('shortDescription') }}" rows="10">{{$edit_data->shortDescription}}</textarea>
                                @if ($errors->has('shortDescription'))
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('shortDescription') }}</strong>
                                   </span>
                                   @endif
                              </div>
                            <!-- form-group end -->
                      </div>
                      <!-- /.form-group -->
                      <div class="col-sm-12">
                        <div class="form-group ">
                                <label for="Picture">Product Description <span>*</span></label>
                                    <textarea name="proDescription" class="summernote form-control{{ $errors->has('proDescription') ? ' is-invalid' : '' }}" value="{{ old('proDescription') }}" rows="10">{{$edit_data->proDescription}}</textarea>
                                @if ($errors->has('proDescription'))
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('proDescription') }}</strong>
                                   </span>
                                   @endif
                              </div>
                            <!-- form-group end -->
                      </div>
                      <!-- /.form-group -->
                  <div class="col-sm-4">
                        <div class="form-group">
                          <label>Video <span>(Optional)</span></label>
                          <input type="text" name="video" class="form-control{{ $errors->has('video') ? ' is-invalid' : '' }}" value="{{ $edit_data->video }}" min="1">

                          @if ($errors->has('video'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('video') }}</strong>
                          </span>
                          @endif
                        </div>
                    </div>
                  <!-- /.form-group -->
                  <div class="col-sm-4">
                        <div class="form-group">
                          <label>Aditional Shipping <span>(Optional)</span></label>
                          <input type="text" name="aditionalshipping" class="form-control{{ $errors->has('aditionalshipping') ? ' is-invalid' : '' }}" value="{{ $edit_data->aditionalshipping }}" min="1">

                          @if ($errors->has('aditionalshipping'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('aditionalshipping') }}</strong>
                          </span>
                          @endif
                        </div>
                    </div>
                  <!-- /.form-group -->
                  <!-- <div class="col-sm-4">
                        <div class="form-group">
                          <label>Deal Date <span>(Optional)</span></label>
                          <input type="date" name="dealdate" class="form-control{{ $errors->has('dealdate') ? ' is-invalid' : '' }}" value="{{ $edit_data->dealdate }}" min="1">

                          @if ($errors->has('dealdate'))
                          <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('dealdate') }}</strong>
                          </span>
                          @endif
                        </div>
                    </div> -->
                  <!-- /.form-group -->

                      <!-- <div class="col-sm-3">
                          <div class="form-group">
                            <label class="custom-label" for="fullpaid"> Full Paid (Optional)</label>
                             <input type="checkbox" class="{{ $errors->has('fullpaid') ? ' is-invalid' : '' }}" value="1" name="fullpaid" id="fullpaid" @if($edit_data->fullpaid) checked @endif>
                             @if ($errors->has('fullpaid'))
                                <span class="invalid-feedback">
                                  <strong>{{ $errors->first('fullpaid') }}</strong>
                                </span>
                              @endif
                          </div>
                        </div> -->

                     <!--  <div class="col-sm-3">
                          <div class="form-group">
                            <label class="custom-label" for="deal"> Deal (Optional)</label>
                             <input type="checkbox" class="{{ $errors->has('deal') ? ' is-invalid' : '' }}" value="1" name="deal" id="deal" @if($edit_data->deal) checked @endif>
                             @if ($errors->has('deal'))
                                <span class="invalid-feedback">
                                  <strong>{{ $errors->first('deal') }}</strong>
                                </span>
                              @endif
                          </div>
                        </div> -->
                       <!--  <div class="col-sm-3">
                          <div class="form-group">
                            <label class="custom-label" for="feature">Hot Sell (Optional)</label>
                             <input type="checkbox" class="{{ $errors->has('feature') ? ' is-invalid' : '' }}" value="1" name="feature" id="feature" @if($edit_data->feature) checked @endif>
                             @if ($errors->has('feature'))
                                <span class="invalid-feedback">
                                  <strong>{{ $errors->first('feature') }}</strong>
                                </span>
                              @endif
                          </div>
                        </div> -->
                      <div class="col-sm-3">
                          <div class="form-group">
                            <label class="custom-label" for="bestsell">Top Sell (Optional)</label>
                             <input type="checkbox" class="{{ $errors->has('bestsell') ? ' is-invalid' : '' }}" value="1"  name="bestsell" id="bestsell" @if($edit_data->bestsell) checked @endif>
                             @if ($errors->has('bestsell'))
                                <span class="invalid-feedback">
                                  <strong>{{ $errors->first('bestsell') }}</strong>
                                </span>
                              @endif
                          </div>
                        </div>
                        <div class="col-sm-12">
                          <div class="form-group">
                            <div class="custom-cart-title">
                                <label>Product Status <span>*</span></label>
                              </div>
                               <ul>
                                  <li><input type="radio" id="active" class="{{ $errors->has('status') ? ' is-invalid' : '' }}" value="1" name="status">
                                    <label for="active">Active</label>
                                  </li>
                  
                                  <li><input type="radio" id="inactive" class="{{ $errors->has('status') ? ' is-invalid' : '' }}" value="2" name="status">
                                    <label for="inactive">Inactive</label>
                                  </li>
                              </ul>
                                @if ($errors->has('status'))
                                <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('status') }}</strong>
                                </span>
                                @endif
                            </div>
                            <!-- form group -->
                        </div>

                            <div class="col-sm-6 mrt-15">
                                <div class="form-group">
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
      <script type="text/javascript">
          document.forms['editForm'].elements['proSubcategory'].value="{{$edit_data->proSubcategory}}"
          document.forms['editForm'].elements['proCategory'].value="{{$edit_data->proCategory}}"
          document.forms['editForm'].elements['proBrand'].value="{{$edit_data->proBrand}}"
          document.forms['editForm'].elements['status'].value="{{$edit_data->status}}"
       </script>
  </section>
  <!-- /.content -->
@endsection