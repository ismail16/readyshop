<?php
namespace App\Http\Controllers\frontEnd;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use App\Slider;
use App\Brand;
use App\Product;
use App\Category;
use App\Subcategory;
use App\Childcategory;
use App\Customer;
use App\Contact;
use App\Createpage;
use App\Blog;
use App\Blogcategory;
use App\Advertisement;
use App\Shippingaddress;
use App\Area;
use App\Pagecategory;
use App\Review;
use App\Productimage;
use DB;
use Cart;
use Session;
class frontEndController extends Controller
{

    public function index(){
        $mainslider=Slider::where(['status'=>1])
        ->orderBy('id','DESC')
        ->limit(10,0)
        ->get();
        $sidecategories = Category::where('status',1)->orderBy('level')->limit(11)->get();
        $frontcategories = Category::where(['frontProduct'=>1,'status'=>1])->orderBy('level')->get();
        $bestproducts = Product::where(['status'=>1,'bestsell'=>1])->limit(20)->get();
        $bottomads = Advertisement::where(['status'=>1,'adcategory_id'=>1])->limit('3')->get();
        $productimage =Productimage::orderBy('id','DESC')->get();

        return view('frontEnd.index',compact('mainslider','bottomads','sidecategories','frontcategories','bestproducts', 'productimage'));
    }
    public function offerproduct(Request $request){
         if(isset($request->sort)){
            // sorting code
            if($request->sort==1){
               $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->whereNotNull('products.proOldprice')
                ->orderBy('products.id','DESC')
                ->select('products.*','categories.name')
                ->paginate(12);
                 $links = $products->appends(['sort' => '1'])->links();
            }elseif($request->sort==2){
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->whereNotNull('products.proOldprice')
                ->orderBy('products.id','DESC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '2'])->links();
            }elseif($request->sort==3){
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->whereNotNull('products.proOldprice')
                ->orderBy('products.proNewprice','DESC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '3'])->links();
            }elseif($request->sort==4){
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->whereNotNull('products.proOldprice')
                ->orderBy('products.proNewprice','ASC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '4'])->links();
            }elseif($request->sort==5){
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->whereNotNull('products.proOldprice')
                ->orderBy('products.proName','DESC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '1'])->links();
            }else{
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->whereNotNull('products.proOldprice')
                ->orderBy('products.proName','ASC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '1'])->links();
            }
        }elseif($request->minprice && $request->maxprice){
            $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->whereNotNull('products.proOldprice')
                ->where('products.proNewprice', '<=',$request->maxprice)
                ->where('products.proNewprice', '>',$request->minprice)
                ->orderBy('products.id','DESC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->links();  
        }else{
          $products = DB::table('products')
            ->join('categories','products.proCategory','=','categories.id')
             ->whereNotNull('products.proOldprice')
            ->orderBy('products.id','DESC')
            ->select('products.*','categories.name')
            ->paginate(12);
            $links = $products->appends(['sort' => '1'])->links();
              
        }
        $sort = $request->sort;
        return view('frontEnd.layouts.pages.offerproduct',compact('products','links','sort')); 
        
    }
    public function allcategory(){
        return view('frontEnd.layouts.pages.allcategory');
    }
    public function complain(){
        return view('frontEnd.layouts.pages.complain');
    }
    public function howtoorder(){
        return view('frontEnd.layouts.pages.howtoorder');
    }
    public function category(Request $request,$slug){
        $category = Category::where('slug',$slug)->first();
        if(isset($request->sort)){
            // sorting code
            if($request->sort==1){
               $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->where('products.proCategory',$category->id)
                ->orderBy('products.id','DESC')
                ->select('products.*','categories.name')
                ->paginate(12);
               $links = $products->appends(['sort' => '1'])->links();
            }elseif($request->sort==2){
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->where('products.proCategory',$category->id)
                ->orderBy('products.id','ASC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '2'])->links();
            }elseif($request->sort==3){
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->where('products.proCategory',$category->id)
                ->orderBy('products.proNewprice','DESC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '3'])->links();
            }elseif($request->sort==4){
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->where('products.proCategory',$category->id)
                ->orderBy('products.proNewprice','ASC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '4'])->links();
            }elseif($request->sort==5){
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->where('products.proCategory',$category->id)
                ->orderBy('products.proName','DESC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '5'])->links();
            }else{
                $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->where('products.proCategory',$category->id)
                ->orderBy('products.proName','ASC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->appends(['sort' => '6'])->links();
            }
        }elseif($request->minprice && $request->maxprice){
            $products = DB::table('products')
                ->join('categories','products.proCategory','=','categories.id')
                ->where('products.proCategory',$category->id)
                ->where('products.proNewprice', '<=',$request->maxprice)
                ->where('products.proNewprice', '>',$request->minprice)
                ->orderBy('products.proNewprice','ASC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->links(); 
        }else{
          $products = DB::table('products')
            ->join('categories','products.proCategory','=','categories.id')
            ->where('products.proCategory',$category->id)
            ->orderBy('products.id','DESC')
            ->select('products.*','categories.name')
            ->paginate(12);
            $links = $products->links();
        }
        $sort = $request->sort;
        $subcategories = Subcategory::where(['category_id'=>$category->id,'status'=>1])->get();
        return view('frontEnd.layouts.pages.category',compact('products','subcategories','category','links','sort'));  

    }   
    
    public function brandproduct(Request $request,$slug){
        $brand = Brand::where('slug',$slug)->first();
        if(isset($request->sort)){
            // sorting code
            if($request->sort==1){
               $products = DB::table('products')
                ->join('brands','products.proBrand','=','brands.id')
                ->where('products.proBrand',$brand->id)
                ->orderBy('products.id','DESC')
                ->select('products.*')
                ->paginate(12);
                $links = $products->appends(['sort' => '1'])->links();
            }elseif($request->sort==2){
                $products = DB::table('products')
                ->join('brands','products.proBrand','=','brands.id')
                ->where('products.proBrand',$brand->id)
                ->orderBy('products.id','ASC')
                ->select('products.*')
                ->paginate(12);
                $links = $products->appends(['sort' => '2'])->links();
            }elseif($request->sort==3){
                $products = DB::table('products')
                ->join('brands','products.proBrand','=','brands.id')
                ->where('products.proBrand',$brand->id)
                ->orderBy('products.proNewprice','DESC')
                ->select('products.*')
                ->paginate(12);
                $links = $products->appends(['sort' => '3'])->links();
            }elseif($request->sort==4){
                $products = DB::table('products')
                ->join('brands','products.proBrand','=','brands.id')
                ->where('products.proBrand',$brand->id)
                ->orderBy('products.proNewprice','ASC')
                ->select('products.*')
                ->paginate(12);
                $links = $products->appends(['sort' => '4'])->links();
            }elseif($request->sort==5){
                $products = DB::table('products')
                ->join('brands','products.proBrand','=','brands.id')
                ->where('products.proBrand',$brand->id)
                ->orderBy('products.proName','DESC')
                ->select('products.*')
                ->paginate(12);
                $links = $products->appends(['sort' => '5'])->links();
            }else{
                $products = DB::table('products')
                ->join('brands','products.proBrand','=','brands.id')
                ->where('products.proBrand',$brand->id)
                ->orderBy('products.proName','ASC')
                ->select('products.*')
                ->paginate(12);
                $links = $products->appends(['sort' => '6'])->links();
            }
        }elseif($request->minprice && $request->maxprice){
            $products = DB::table('products')
                ->join('brands','products.proBrand','=','brands.id')
                ->where('products.proBrand',$brand->id)
                ->where('products.proNewprice', '<=',$request->maxprice)
                ->where('products.proNewprice', '>',$request->minprice)
                ->orderBy('products.id','DESC')
                ->select('products.*','categories.name')
                ->paginate(12);
                $links = $products->links();
        }else{
          $products = DB::table('products')
            ->join('brands','products.proBrand','=','brands.id')
            ->where('products.proBrand',$brand->id)
            ->orderBy('products.id','DESC')
            ->select('products.*')
            ->paginate(12);
            $links = $products->links();  
        }
        $sort = $request->sort;
        return view('frontEnd.layouts.pages.brandproduct',compact('products','brand','links','sort')); 

    }

    public function subcategory(Request $request,$slug){
         $id = Subcategory::where('slug',$slug)->first()->id;
         $bredcrumb=Subcategory::find($id);
        if(isset($request->sort)){
            // sorting code
            if($request->sort==1){
               $products = DB::table('products')
                ->join('subcategories','products.proSubcategory','=','subcategories.id')
                ->where('products.proSubcategory',$id)
                ->orderBy('products.id','DESC')
                ->select('products.*','subcategories.subcategoryName')
                ->paginate(12);
                $links = $products ->appends(['sort' => '1'])->links();
            }elseif($request->sort==2){
                $products = DB::table('products')
               ->join('subcategories','products.proSubcategory','=','subcategories.id')
                ->where('products.proSubcategory',$id)
                ->orderBy('products.id','ASC')
                ->select('products.*','subcategories.subcategoryName')
                ->paginate(12);
                $links = $products ->appends(['sort' => '2'])->links();
            }elseif($request->sort==3){
                $products = DB::table('products')
                ->join('subcategories','products.proSubcategory','=','subcategories.id')
                ->where('products.proSubcategory',$id)
                ->orderBy('products.proNewprice','DESC')
                ->select('products.*','subcategories.subcategoryName')
                ->paginate(12);
                $links = $products ->appends(['sort' => '3'])->links();
            }elseif($request->sort==4){
                $products = DB::table('products')
               ->join('subcategories','products.proSubcategory','=','subcategories.id')
                ->where('products.proSubcategory',$id)
                ->orderBy('products.proNewprice','ASC')
                ->select('products.*','subcategories.subcategoryName')
                ->paginate(12);
                $links = $products ->appends(['sort' => '4'])->links();
            }elseif($request->sort==5){
                $products = DB::table('products')
                ->join('subcategories','products.proSubcategory','=','subcategories.id')
                ->where('products.proSubcategory',$id)
                ->orderBy('products.proName','DESC')
                ->select('products.*','subcategories.subcategoryName')
                ->paginate(12);
                $links = $products ->appends(['sort' => '5'])->links();
            }else{
                $products = DB::table('products')
                ->join('subcategories','products.proSubcategory','=','subcategories.id')
                ->where('products.proSubcategory',$id)
                ->orderBy('products.proName','ASC')
                ->select('products.*','subcategories.subcategoryName')
                ->paginate(12);
                $links = $products->appends(['sort' => '6'])->links();
            }
        }elseif($request->minprice && $request->maxprice){
              $products = DB::table('products')
              ->join('subcategories','products.proSubcategory','=','subcategories.id')
              ->where('products.proSubcategory',$id)
              ->orderBy('products.id','DESC')
              ->select('products.*','subcategories.subcategoryName')
              ->where('products.proNewprice', '<=',$request->maxprice)
              ->where('products.proNewprice', '>',$request->minprice)
              ->select('products.*','subcategories.subcategoryName')
              ->paginate(12);
              $links = $products->links();
        }else{
           $products = DB::table('products')
           ->join('subcategories','products.proSubcategory','=','subcategories.id')
            ->where('products.proSubcategory',$id)
            ->orderBy('products.id','DESC')
            ->select('products.*','subcategories.subcategoryName')
            ->paginate(12);
            $links = $products->links();
        }
        $sort = $request->sort;
    	return view('frontEnd.layouts.pages.subcategory',compact('products','bredcrumb','links','sort'));
    }
    
    public function products($slug,Request $request){
        $bredcrumb=Childcategory::where('slug',$slug)->first();
         $id = Childcategory::where('slug',$slug)->first()->id;
        if(isset($request->sort)){
            // sorting code
            if($request->sort==1){
               $products = DB::table('products')
                ->join('childcategories','products.proChildCategory','=','childcategories.id')
                ->select('products.*','childcategories.childcategoryName')
                ->where('products.proChildCategory',$bredcrumb->id)
                ->orderBy('products.id','DESC')            
                ->paginate(12);
                $links = $products ->appends(['sort' => '1'])->links();
            }elseif($request->sort==2){
                $products = DB::table('products')
                ->join('childcategories','products.proChildCategory','=','childcategories.id')
                ->select('products.*','childcategories.childcategoryName')
                ->where('products.proChildCategory',$bredcrumb->id)
                ->orderBy('products.id','ASC')            
                ->paginate(12);
                $links = $products ->appends(['sort' => '2'])->links();
            }elseif($request->sort==3){
                $products = DB::table('products')
                ->join('childcategories','products.proChildCategory','=','childcategories.id')
                ->select('products.*','childcategories.childcategoryName')
                ->where('products.proChildCategory',$bredcrumb->id)
                ->orderBy('products.proNewprice','DESC')            
                ->paginate(12);
                $links = $products ->appends(['sort' => '3'])->links();
            }elseif($request->sort==4){
                $products = DB::table('products')
                ->join('childcategories','products.proChildCategory','=','childcategories.id')
                ->select('products.*','childcategories.childcategoryName')
                ->where('products.proChildCategory',$bredcrumb->id)
                ->orderBy('products.proNewprice','ASC')            
                ->paginate(12);
                $links = $products ->appends(['sort' => '4'])->links();
            }elseif($request->sort==5){
                $products = DB::table('products')
                ->join('childcategories','products.proChildCategory','=','childcategories.id')
                ->select('products.*','childcategories.childcategoryName')
                ->where('products.proChildCategory',$bredcrumb->id)
                ->orderBy('products.proName','DESC')            
                ->paginate(12);
                $links = $products ->appends(['sort' => '5'])->links();
            }else{
                $products = DB::table('products')
                ->join('childcategories','products.proChildCategory','=','childcategories.id')
                ->select('products.*','childcategories.childcategoryName')
                ->where('products.proChildCategory',$bredcrumb->id)
                ->orderBy('products.proName','ASC')            
                ->paginate(12);
                $links = $products->appends(['sort' => '6'])->links();
            }
        }elseif($request->minprice && $request->maxprice){
            $products = DB::table('products')
            ->join('childcategories','products.proChildCategory','=','childcategories.id')
            ->select('products.*','childcategories.childcategoryName')
            ->where('products.proChildCategory',$bredcrumb->id)
            ->where('products.proNewprice', '<=',$request->maxprice)
            ->where('products.proNewprice', '>',$request->minprice)
            ->orderBy('products.id','DESC')            
            ->paginate(12);
            $links = $products->links();
        }else{
            $products = DB::table('products')
            ->join('childcategories','products.proChildCategory','=','childcategories.id')
            ->select('products.*','childcategories.childcategoryName')
            ->where('products.proChildCategory',$bredcrumb->id)
            ->orderBy('products.id','DESC')            
            ->paginate(12);
            $links = $products->links();
        }
        $sort = $request->sort;
        $subcategories = Childcategory::where(['subcategory_id'=>$bredcrumb->id,'status'=>1])->get();
    	return view('frontEnd.layouts.pages.childproduct',compact('products','bredcrumb','subcategories','sort','links'));

    }
    public function search(Request $request){
        $keyword= $request->keyword;
        $products = DB::table('products')
        ->join('categories','products.proCategory','=','categories.id')
        ->select('products.*','categories.name')
        ->where('proName','LIKE','%'.$keyword."%")
        ->orderBy('products.id','DESC')            
        ->paginate(12);
        return view('frontEnd.layouts.pages.searchproduct',compact('products','keyword'));
    }
    public function details($id,$slug){
        $productdetails = Product::where(['status'=>1,'products.id'=>$id])
        ->with('proImages')
        ->first();
       
        $selectcolors = DB::table('productcolors')
          ->join('colors','productcolors.color_id','=','colors.id')
            ->where('productcolors.product_id',$id)
            ->orderBy('id','DESC')
            ->select('productcolors.*','colors.colorName','colors.color')
            ->get();
            $selectsizes = DB::table('productsizes')
          ->join('sizes','productsizes.size_id','=','sizes.id')
            ->where('productsizes.product_id',$id)
            ->orderBy('id','DESC')
            ->select('productsizes.*','sizes.sizeName')
            ->get();

        $relatedproduct = DB::table('products')
        ->where('products.proCategory',$productdetails->proCategory)
        ->orderBy('products.id','DESC')
        ->paginate(9);
        // return $relatedproduct;
        
        if($productdetails){
        $productbrand = DB::table('products')
        ->join('brands','products.proBrand','=','brands.id')
        ->where('products.id',$id)
        ->select('products.*','brands.brandName')
        ->first();

        $allReview=Review::where('product_id',$productdetails->id)
            ->get();
        return view('frontEnd.layouts.pages.details',compact('productdetails','relatedproduct','selectcolors','selectsizes','allReview'));
        }
        else{
             return view('errors.404');
        }
    }


    public function shipping(){
        if(Session::get('customerId')){
          if(Cart::instance('shopping')->content()->count() != 0){
            $shippingAddress = Shippingaddress::where('customerId',Session::get('customerId'))->orderBy('id','DESC')->first();
                // shopping fee
              if($shippingAddress!=NULL){
                $shippingfee = Area::find($shippingAddress->area);
                 $saveareas = Area::where('district_id',$shippingAddress->district)->get();
                Session::put('shippingfee',$shippingfee->shippingfee);
                  return view('frontEnd.layouts.pages.shipping',compact('shippingAddress','saveareas'));
              }else{
                $shippingAddress ='';
                $saveareas = '';
                 return view('frontEnd.layouts.pages.shipping',compact('shippingAddress','saveareas'));
              }
          }else{
            Toastr::error('Opps', 'Your cart empty');
            return redirect('/');
          }
           
        }else{
            Toastr::error('message', 'Sorry! please login first');
            return redirect('customer/login');
        }
    }

   public function moreinfo($slug){
        $pagecategory = Pagecategory::where('slug',$slug)->first();
        $moreinfoes=Createpage::where(['id'=>$pagecategory->id,'status'=>1])->first();
        return view('frontEnd.layouts.pages.moreinfo',compact('moreinfoes'));
    }
    public function errorpage(){
        return view('errors.404');
    }
    public function contact(){
        return view('frontEnd.layouts.pages.contact');
    }
    public function blog(){
        $blogcategories = Blogcategory::where(['status'=>1,])->get();
        $blogs = Blog::where('status',1)->orderBy('id','DESC')->get();
        return view('frontEnd.layouts.pages.blog',compact('blogs','blogcategories'));
    }
    public function blogcategory($slug, $id){
        $blogs = DB::table('blogs')
        ->join('blogcategories','blogs.blogcategory_id','=','blogcategories.id')
        ->select('blogcategories.name','blogs.*')
        ->where('blogs.blogcategory_id',$id)
        ->orderBy('blogs.id','DESC')
        ->get();
        $blogcategories = Blogcategory::where(['status'=>1,])->get();
        return view('frontEnd.layouts.pages.blogcategory',compact('blogs','blogcategories'));
    }

    public function blogdetails($slug,$id){
        $blogs = DB::table('blogs')
        ->join('blogcategories','blogs.blogcategory_id','=','blogcategories.id')
        ->select('blogcategories.name','blogs.*')
        ->where('blogs.id',$id)
        ->first();
        $blogcategories = Blogcategory::where(['status'=>1,])->get();
        return view('frontEnd.layouts.pages.blogdetails',compact('blogs','blogcategories'));
    }
    public function allproduct(){
        $products = Product::where('status',1)->orderBy('id','DESC')->paginate(20);;
        return view('frontEnd.layouts.pages.allproduct',compact('products'));
    }
    public function brands(){
        $brands = Brand::where('status',1)->orderBy('id','DESC')->paginate(30);
        return view('frontEnd.layouts.pages.brands',compact('brands'));
    }

    //=============== Pages Controller ===================
    
}
