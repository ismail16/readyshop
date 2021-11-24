<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Logo;
use App\Category;
use App\Subcategory;
use App\Childcategory;
use App\Paymentmethod;
use App\Slider;
use App\Product;
use App\Advertisement;
use App\Brand;
use App\Contact;
use App\Pagecategory;
use App\Socialmedia;
use App\Review;
use App\Createpage;
use App\Blog;
use App\Blogcategory;
use App\Order;
use App\District;
use App\Area;
use Auth;
use Response;
use Cart;
use DB;
class FrontEndController extends Controller
{
    public function index(){
     return response()->json(['status'=>200]);
    }
    public function configapi(){
      $logo = Logo::where('status',1)->limit(1)->get();
      $shopname = 'Ready Shop';
      $paymentmethod=Paymentmethod::where(['status'=>1])->get();
      return response()->json(compact('logo','shopname','paymentmethod'),200);
    }
    public function slider(){
       $sliders = Slider::where('status',1)->get();
       return response()->json(compact('sliders'),200);
    }
    public function bestsale(){
       $products = Product::where(['status'=>1,'bestsell'=>1])->with('proImage')->limit(20)->get();
       return response()->json(compact('products'),200);
    }
    public function category(Request $request,$id){
        $category = Category::find($id);
        if(isset($request->sort)){
            // sorting code
            if($request->sort==1){
               $products = Product::where(['status'=>1,'proCategory'=>$category->id])
                ->orderBy('id','DESC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==2){
               $products = Product::where(['status'=>1,'proCategory'=>$category->id])
                ->orderBy('id','ASC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==3){
               $products = Product::where(['status'=>1,'proCategory'=>$category->id])
                ->orderBy('proNewprice','DESC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==4){
              $products = Product::where(['status'=>1,'proCategory'=>$category->id])
                ->orderBy('proNewprice','ASC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==5){
              $products = Product::where(['status'=>1,'proCategory'=>$category->id])
                ->orderBy('proName','DESC')
                ->with('proImage')
                ->get();
            }else{
                $products = Product::where(['status'=>1,'proCategory'=>$category->id])
                ->orderBy('proName','ASC')
                ->with('proImage')
                ->get();
            }
        }elseif($request->minprice && $request->maxprice){
             $products = Product::where(['status'=>1,'proCategory'=>$category->id])
                ->orderBy('proNewprice','ASC')
                ->where('proNewprice', '<=',$request->maxprice)
                ->where('proNewprice', '>',$request->minprice)
                ->with('proImage')
                ->get();
        }else{
            $products = Product::where(['status'=>1,'proCategory'=>$category->id])
              ->orderBy('id','DESC')
              ->with('proImage')
              ->get();
        }
        return response()->json(compact('products'));  

    }
    public function brands(){
      $brands = Brand::where('status',1)->get();
      return response()->json(compact('brands'),200);
    }
    public function sidebar(){
      $sidecategories = Category::where('status',1)->with('subcategories','subcategories.childcategories')->get();
      return response()->json(compact('sidecategories'),200);
    }
    public function subcategory(Request $request,$id){
        $bredcrumb=Subcategory::find($id);
        if(isset($request->sort)){
            if($request->sort==1){
             $products = Product::where(['status'=>1,'proSubcategory'=>$bredcrumb->id])
              ->orderBy('id','DESC')
              ->with('proImage')
              ->get();
            }elseif($request->sort==2){
              $products = Product::where(['status'=>1,'proSubcategory'=>$bredcrumb->id])
              ->orderBy('products.id','ASC')
              ->select('products.*')
              ->with('proImage')
              ->get();
            }elseif($request->sort==3){
              $products = Product::where(['status'=>1,'proSubcategory'=>$bredcrumb->id])
              ->where('products.proSubcategory',$id)
              ->orderBy('products.proNewprice','DESC')
              ->with('proImage')
              ->get();
            }elseif($request->sort==4){
                $products = Product::where(['status'=>1,'proSubcategory'=>$bredcrumb->id])
                ->orderBy('products.proNewprice','ASC')
                ->select('products.*')
                ->with('proImage')
                ->get();
            }elseif($request->sort==5){
                $products = Product::where(['status'=>1,'proSubcategory'=>$bredcrumb->id])
                ->orderBy('products.proName','DESC')
                ->select('products.*')
                ->with('proImage')
                ->get();
            }else{
                $products = Product::where(['status'=>1,'proSubcategory'=>$bredcrumb->id])
                ->orderBy('products.proName','ASC')
                ->select('products.*')
               ->orderBy('id','DESC')
               ->with('proImage')
               ->get();
            }
        }elseif($request->minprice && $request->maxprice){
              $products = Product::where(['status'=>1,'proSubcategory'=>$bredcrumb->id])
              ->orderBy('id','DESC')
              ->select('products.*')
              ->where('products.proNewprice', '<=',$request->maxprice)
              ->where('products.proNewprice', '>',$request->minprice)
              ->with('proImage')
              ->get();
        }else{
            $products = Product::where(['status'=>1,'proSubcategory'=>$bredcrumb->id])
              ->orderBy('id','DESC')
              ->with('proImage')
              ->get();
        }
        $sort = $request->sort;
        return response()->json(compact('products','bredcrumb','sort'));

    }
    public function products(Request $request,$id){
        $bredcrumb=Childcategory::find($id);
        if(isset($request->sort)){
            if($request->sort==1){
             $products = Product::where(['status'=>1,'proChildCategory'=>$bredcrumb->id])
              ->orderBy('id','DESC')
              ->with('proImage')
              ->get();
            }elseif($request->sort==2){
              $products = Product::where(['status'=>1,'proChildCategory'=>$bredcrumb->id])
              ->orderBy('products.id','ASC')
              ->select('products.*')
              ->with('proImage')
              ->get();
            }elseif($request->sort==3){
              $products = Product::where(['status'=>1,'proChildCategory'=>$bredcrumb->id])
              ->where('proSubcategory',$id)
              ->orderBy('proNewprice','DESC')
              ->with('proImage')
              ->get();
            }elseif($request->sort==4){
                $products = Product::where(['status'=>1,'proChildCategory'=>$bredcrumb->id])
                ->orderBy('proNewprice','ASC')
                ->select('products.*')
                ->with('proImage')
                ->get();
            }elseif($request->sort==5){
                $products = Product::where(['status'=>1,'proChildCategory'=>$bredcrumb->id])
                ->orderBy('proName','DESC')
                ->select('products.*')
                ->with('proImage')
                ->get();
            }else{
                $products = Product::where(['status'=>1,'proChildCategory'=>$bredcrumb->id])
                ->orderBy('proName','ASC')
                ->select('products.*')
               ->orderBy('id','DESC')
               ->with('proImage')
               ->get();
            }
        }elseif($request->minprice && $request->maxprice){
              $products = Product::where(['status'=>1,'proChildCategory'=>$bredcrumb->id])
              ->orderBy('id','DESC')
              ->select('products.*')
              ->where('proNewprice', '<=',$request->maxprice)
              ->where('proNewprice', '>',$request->minprice)
              ->with('proImage')
              ->get();
        }else{
            $products = Product::where(['status'=>1,'proChildCategory'=>$bredcrumb->id])
              ->orderBy('id','DESC')
              ->with('proImage')
              ->get();
        }
        $sort = $request->sort;
        return response()->json(compact('products','bredcrumb','sort'));

    }
    public function offerproduct(Request $request){
        if(isset($request->sort)){
            // sorting code
            if($request->sort==1){
               $products = Product::where(['status'=>1])
                ->whereNotNull('products.proOldprice')
                ->orderBy('id','DESC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==2){
               $products = Product::where(['status'=>1])
                ->whereNotNull('products.proOldprice')
                ->orderBy('id','ASC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==3){
               $products = Product::where(['status'=>1])
                ->whereNotNull('products.proOldprice')
                ->orderBy('proNewprice','DESC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==4){
              $products = Product::where(['status'=>1])
               ->whereNotNull('products.proOldprice')
                ->orderBy('proNewprice','ASC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==5){
              $products = Product::where(['status'=>1])
               ->whereNotNull('products.proOldprice')
                ->orderBy('proName','DESC')
                ->with('proImage')
                ->get();
            }else{
                $products = Product::where(['status'=>1])
                 ->whereNotNull('products.proOldprice')
                ->orderBy('proName','ASC')
                ->with('proImage')
                ->get();
            }
        }elseif($request->minprice && $request->maxprice){
             $products = Product::where(['status'=>1])
              ->whereNotNull('products.proOldprice')
                ->orderBy('proNewprice','ASC')
                ->where('proNewprice', '<=',$request->maxprice)
                ->where('proNewprice', '>',$request->minprice)
                ->with('proImage')
                ->get();
        }else{
            $products = Product::where(['status'=>1])
             ->whereNotNull('products.proOldprice')
              ->orderBy('id','DESC')
              ->with('proImage')
              ->get();
        }
        return response()->json(compact('products'));  

    }
    public function contact(){
      $contact = Contact::where('status',1)->get();
      return response()->json(compact('contact'));
    }
    public function allcategory(){
        $categories = Category::where(['status'=>1])->with('subcategories.childcategories')->get();
        return response()->json(compact('categories'));
    }
    public function brandproduct(Request $request,$id){
        $brand = Brand::find($id);
        if(isset($request->sort)){
            // sorting code
            if($request->sort==1){
               $products = Product::where(['status'=>1])
                ->where('products.proBrand',$brand->id)
                ->whereNotNull('products.proOldprice')
                ->orderBy('id','DESC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==2){
               $products = Product::where(['status'=>1])
                ->where('products.proBrand',$brand->id)
                ->whereNotNull('products.proOldprice')
                ->orderBy('id','ASC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==3){
               $products = Product::where(['status'=>1])
                ->where('products.proBrand',$brand->id)
                ->whereNotNull('products.proOldprice')
                ->orderBy('proNewprice','DESC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==4){
              $products = Product::where(['status'=>1])
                ->where('products.proBrand',$brand->id)
                ->whereNotNull('products.proOldprice')
                ->orderBy('proNewprice','ASC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==5){
              $products = Product::where(['status'=>1])
                ->where('products.proBrand',$brand->id)
                ->whereNotNull('products.proOldprice')
                ->orderBy('proName','DESC')
                ->with('proImage')
                ->get();
            }else{
                $products = Product::where(['status'=>1])
                 ->where('products.proBrand',$brand->id)
                 ->whereNotNull('products.proOldprice')
                 ->orderBy('proName','ASC')
                 ->with('proImage')
                 ->get();
            }
        }elseif($request->minprice && $request->maxprice){
             $products = Product::where(['status'=>1])
                ->where('products.proBrand',$brand->id)
                ->whereNotNull('products.proOldprice')
                ->orderBy('proNewprice','ASC')
                ->where('proNewprice', '<=',$request->maxprice)
                ->where('proNewprice', '>',$request->minprice)
                ->with('proImage')
                ->get();
        }else{
            $products = Product::where(['status'=>1])
              ->where('products.proBrand',$brand->id)
              ->whereNotNull('products.proOldprice')
              ->orderBy('id','DESC')
              ->with('proImage')
              ->get();
        }
        return response()->json(compact('products'));  

    }
    public function allproduct(Request $request){
        if(isset($request->sort)){
            // sorting code
            if($request->sort==1){
               $products = Product::where(['status'=>1])
                ->orderBy('id','DESC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==2){
               $products = Product::where(['status'=>1])
                ->orderBy('id','ASC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==3){
               $products = Product::where(['status'=>1])
                ->orderBy('proNewprice','DESC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==4){
              $products = Product::where(['status'=>1])
                ->orderBy('proNewprice','ASC')
                ->with('proImage')
                ->get();
            }elseif($request->sort==5){
              $products = Product::where(['status'=>1])
                ->orderBy('proName','DESC')
                ->with('proImage')
                ->get();
            }else{
                $products = Product::where(['status'=>1])
                 ->orderBy('proName','ASC')
                 ->with('proImage')
                 ->get();
            }
        }elseif($request->minprice && $request->maxprice){
             $products = Product::where(['status'=>1])
                ->orderBy('proNewprice','ASC')
                ->where('proNewprice', '<=',$request->maxprice)
                ->where('proNewprice', '>',$request->minprice)
                ->with('proImage')
                ->get();
        }else{
            $products = Product::where(['status'=>1])
              ->orderBy('id','DESC')
              ->with('proImage')
              ->get();
        }
        return response()->json(compact('products'));  

    }
    public function details($id){
        $productdetails = Product::where(['status'=>1,'products.id'=>$id])
        ->with('proImages','reviews','reviews.customer','proSizes','proColors')
        ->first();
        $products = Product::where(['status'=>1])
        ->where('proCategory',$productdetails->proCategory)
        ->orderBy('id','DESC')
        ->with('proImage')
        ->get();
        
        if($productdetails){
        return response()->json(compact('productdetails','products'));
        }
        else{
             return response()->json('error','Something wrong');
        }
    }
    public function moreinfo($id){
        $moreinfoes=Createpage::where(['id'=>$id,'status'=>1])->first();
        return response()->json(compact('moreinfoes'),200);
    }
    public function blog(){
        $blogs = Blog::where('status',1)->orderBy('id','DESC')->get();
        return response()->json(compact('blogs'),200);
    }
    public function blogcategories(){
        $blogcategories = Blogcategory::where(['status'=>1,])->get();
        return response()->json(compact('blogcategories'),200);
    }
    public function blogcategory($category_id){
        $blogs = DB::table('blogs')
        ->join('blogcategories','blogs.blogcategory_id','=','blogcategories.id')
        ->select('blogcategories.name','blogs.*')
        ->where('blogs.blogcategory_id',$category_id)
        ->orderBy('blogs.id','DESC')
        ->get();
        return response()->json(compact('blogs'),200);
    }
     public function blogdetails($id){
        $details = DB::table('blogs')
        ->join('blogcategories','blogs.blogcategory_id','=','blogcategories.id')
        ->select('blogcategories.name','blogs.*')
        ->where('blogs.id',$id)
        ->first();
        return response()->json(compact('details'),200);
    }
    public function orderTrack(Request $request){
      $this->validate($request,[
          'track_id'=>'required',
      ]);
      $orderfinds = Order::where('trackingId',$request->track_id)->with('orderstatus')->first();
      if($orderfinds){
          return response()->json(['status'=>'success','orderstatus'=>$orderfinds->orderstatus->name,'trackId'=>$orderfinds->trackingId]);
      }else{
           return response()->json(['status'=>'error']);
      }
          
    }
    public function search(Request $request)
    {
	    $products = Product::where('proName','LIKE','%'.$request->keyword."%")->with('proImage')->get();
	    return response()->json(compact('products'),200);
    }
    public function districts()
    {
	   $districts = District::where('status','1')->get();
	   return response()->json(compact('districts'),200);
    }
    public function areas(Request $request)
    {
	   $areas = Area::where('district_id',$request->district_id)->get();
	   return response()->json(compact('areas'),200);
    }
    public function shippingfee(Request $request)
    {
	  $shippingfee = Area::find($request->area_id)->shippingfee;
	   return response()->json(compact('shippingfee'),200);
    }
}
