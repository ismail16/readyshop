@extends('backEnd.layouts.master')
@section('title','Payment Method Manage')
@section('main_content')
 <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
            <h3 class="card-title">Payment Method Manage</h3>
          </div>
          <!-- /.card-header -->
            <div class="card-body user-border">
              <table id="example" class="table table-responsive-sm table-bordered table-striped">
                <thead>
                <tr>
                  <th>Sl</th>
                  <th>Title</th>
                  <th>Text</th>
                  <th>Store Id</th>
                  <th>Store Password</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                	@foreach($show_data as $key=>$value)
                <tr>
                  <td>{{$loop->iteration}}</td>
                  <td>{{$value->title}}</td>
                  <td>{!!$value->text!!}</td>
                  <td>{{$value->store_id}}</td>
                  <td>{{$value->store_password}}</td>
                  <td> {{$value->status==1?'Active':'Inactive'}}</td>
                  
                  <td>
                  	<ul class="action_buttons dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Action Button
                        <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                          <li>
                        @if($value->status==1)
                        <form action="{{url('editor/payment-method/inactive')}}" method="POST">
                          @csrf
                          <input type="hidden" name="hidden_id" value="{{$value->id}}">
                          <button type="submit" class="thumbs_up" title="inactive"><i class="fa fa-thumbs-up"></i> Active</button> 
                        </form>
                        @else
                          <form action="{{url('editor/payment-method/active')}}" method="POST">
                            @csrf
                            <input type="hidden" name="hidden_id" value="{{$value->id}}">
                            <button type="submit" class="thumbs_down" title="active"><i class="fa fa-thumbs-down"></i> Inactive</button>
                          </form>
                        @endif
                      </li>
                          <li>
                        <a class="edit_icon" href="{{url('editor/payment-method/edit/'.$value->id)}}" title="Edit"><i class="fa fa-edit"></i> Edit</a>
                      </li>
                        </ul>
                    </ul>
                  </td>
                </tr>
                @endforeach
                </tfoot>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
@endsection