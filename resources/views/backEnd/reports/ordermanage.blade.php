@extends('backEnd.layouts.master')
@section('title','Order  Manage')
@section('main_content')
 <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
            <h3 class="card-title">Order information</h3>
            <div class="short_button">
            </div>
          </div>
          <!-- /.card-header -->
            <div class="card-body">
              <div class="dashboard-filter">
              <form class="form-row">
                    <div class="col-sm-2">
                        <div class="from-group">
                             <label>Status</label>
                              <select name="status" class="form-control">
                                  <option value="">All</option>
                                  @foreach($ordertypes as $orderstatus)
                                  <option value="{{$orderstatus->id}}" {{ $status ==$orderstatus->id  ? 'selected' : '' }} class="form-control">{{$orderstatus->name}}</option>
                                  @endforeach
                             </select>
                         </div>
                     </div>
                    <div class="col-sm-2">
                        <label>Select Filter</label>
                        <select class="form-control" name="filter">
                            <option value="1" {{ $filter== 1 ? 'selected' : '' }}>All</option>
                            <option value="2" {{ $filter == 2 ? 'selected' : '' }}>Today</option>
                            <option value="3" {{ $filter == 3 ? 'selected' : '' }}>Yesterday</option>
                            <option value="4" {{ $filter == 4 ? 'selected' : '' }}>Current Month</option>
                            <option value="5" {{ $filter == 5 ? 'selected' : '' }}>Last Month</option>
                            <option value="6" {{ $filter == 6 ? 'selected' : '' }}>Current Year</option>
                            <option value="7" {{ $filter == 7 ? 'selected' : '' }}>Last Year</option>
                        </select>
                   </div>
                    <div class="col-sm-2">
                        <label>Start (optional)</label>
                        <input class="form-control mydate" name="start" type="date" value="{{old('mydate')}}">
                   </div>
                    <div class="col-sm-2">
                        <label>End (optional)</label>
                        <input class="form-control mydate"name="end" type="date" value="{{old('end')}}">
                   </div>
                    <div class="col-sm-2">
                        <label></label>
                        <input class="btn btn-success" value="Apply" type="submit">
                   </div>
              </form>
          </div>
          @php
            $total = 0;
          @endphp
                <table id="example" class="table table-bordered table-responsive-lg table-striped">
                <thead>
                <tr>
                  <th>Sl</th>
                  <th>Track Id</th>
                  <th>Customer Name</th>
                  <th>Customer Phone</th>
                  <th>Total Price</th>
                  <th>Order Time</th>
                  <th>Cancel Request</th>
                  <th>Order Status</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                  @foreach($show_data as $key=>$value)
                <tr>
                  <td>{{$loop->iteration}}</td>
                  <td>{{$value->trackingId}}</td>
                  <td>{{$value->fullName}}</td>
                  <td>{{$value->phoneNumber}}</td>
                  <td>BDT {{$value->orderTotal}}</td>
                  <td><p><strong>Date: </strong> {{date('F d, Y', strtotime($value->updated_at))}}</p>
                    <p><strong>Time: </strong> {{date('h:i:s a', strtotime($value->updated_at))}}</p></td>
                     <td>{{$value->cancelRequest==1?'Yes':'No'}}</td>
                  <td>
                    @foreach($ordertypes as $orderstatus)
                        @if($orderstatus->id == $value->orderStatus) {{$orderstatus->name}} @endif
                    @endforeach
                  </td>

                  <td>
                    <ul class="action_buttons dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Action Button
                        <span class="caret"></span></button>
                          <ul class="dropdown-menu custom-dropdown">
                            <li><a class="edit_icon" href="{{url('editor/order/details/'.$value->shippingId.'/'.$value->customerId.'/'.$value->orderIdPrimary)}}"><i class="fa fa-eye"></i> Details View </a></li>
                        @foreach($ordertypes as $orderstatus)
                          <li>
                              <a href="{{url('editor/order/status/'.$value->orderIdPrimary.'/'.$orderstatus->id)}}" class="rbox-{{$orderstatus->id}}"  onclick="return confirm('are you want change status?')"> @if($orderstatus->id == $value->orderStatus)<i class="fa fa-check"></i> @endif {{$orderstatus->name}}</a>
                          </li>
                          @endforeach
                        </ul>
                    </ul>
                    </ul>
                  </td>
                  @php
                   $total +=$value->orderTotal; 
                  @endphp
                </tr>
                @endforeach
                </tbody>
                <tfoot>
                  <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><strong>Total</strong></td>
                    <td><strong>{{$total}} BDT</strong></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
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