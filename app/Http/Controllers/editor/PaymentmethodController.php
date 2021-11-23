<?php

namespace App\Http\Controllers\editor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use App\Paymentmethod;
use File;
class PaymentmethodController extends Controller
{
   public function add(){
        return view('backEnd.paymentmethod.add');
    }
    public function store(Request $request){
        $this->validate($request,[
            'title'         =>'required',
            'status'        =>'required',
        ]);

        $store_data                  = new Paymentmethod();
        $store_data->title           = $request->title;
        $store_data->text            = $request->text;
        $store_data->store_id        = $request->store_id;
        $store_data->store_password  = $request->store_password;
        $store_data->status          = $request->status;
        $store_data->save();
        Toastr::success('message', 'Payment method  add successfully!');
        return redirect('/editor/payment-method/manage');
    }
    public function manage(){
        $show_data = Paymentmethod::all();
        return view('backEnd.paymentmethod.manage',compact('show_data'));
    }
    public function edit($id){
        $edit_data = Paymentmethod::find($id);
        return view('backEnd.paymentmethod.edit', ['edit_data'=>$edit_data]);
    }
     public function update(Request $request){
       $this->validate($request,[
            'title'         =>'required',
            'status'        =>'required',
        ]);
        $update_data = Paymentmethod::find($request->hidden_id);
        $update_data->title           = $request->title;
        $update_data->text            = $request->text;
        $update_data->store_id        = $request->store_id;
        $update_data->store_password  = $request->store_password;
        $update_data->status          = $request->status;
        $update_data->save();
        Toastr::success('message', 'Payment method  update successfully!');
        return redirect('/editor/payment-method/manage');
    }

    public function inactive(Request $request){
        $unpublish_data         = Paymentmethod::find($request->hidden_id);
        $unpublish_data->status =0;
        $unpublish_data->save();
        Toastr::success('message', 'Payment method  inactive successfully!');
        return redirect('/editor/payment-method/manage');
    }

    public function active(Request $request){
        $publishId = Paymentmethod::find($request->hidden_id);
        $publishId->status=1;
        $publishId->save();
        Toastr::success('message', 'Payment method  active successfully!');
        return redirect('/editor/payment-method/manage');
    }
     public function destroy(Request $request){
        $deleteId = Paymentmethod::find($request->hidden_id);
        $deleteId->delete();
        Toastr::success('message', 'Payment method  delete successfully!');
        return redirect('/editor/payment-method/manage');
    }
}
