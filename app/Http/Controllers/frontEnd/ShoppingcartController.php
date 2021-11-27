<?php

namespace App\Http\Controllers\frontEnd;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use DB;
use App\Shippingaddress;
use App\Couponcode;
use Session;
use Cart;
class ShoppingcartController extends Controller
{
    public function getDistrict(Request $request){
        $area = DB::table("areas")
        ->where("district_id",$request->district_id)
        ->pluck('area','id');
        return $area;
        return response()->json($area);
    }
    
    //======= Add To Cart Product Start=========== 
   public function addTocartGet($id,Request $request){
        $qty=1;
        $productInfo = DB::table('products')->where('id',$id)->first();
        $productImage = DB::table('productimages')->where('product_id',$id)->first();
        $cartinfo=Cart::instance('shopping')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image,'proPurchaseprice'=>$productInfo->proPurchaseprice]]);
        return response()->json($cartinfo);  
    } 


    public function cartContent() {
        return view('frontEnd.layouts.includes.cartcontent');
    }

    public function cartMobileContent() {
        return view('frontEnd.layouts.includes.mobilecontent');
    }
    public function updateCart(Request $request){
         $this->validate($request,[
            'quantity'=>'integer|min:1',
        ]);
         $rowId = $request->rowId;
         $quantity = $request->quantity;
         $cart=Cart::instance('shopping')->update($rowId,$quantity);
         $findcoupon = Couponcode::where('couponcode',Session::get('usecouponcode'))->first();
         if($findcoupon !=NULL){
           $subtotal=Cart::instance('shopping')->subtotal();
            $subtotal=str_replace(',','',$subtotal);
            $subtotal=str_replace('.00', '',$subtotal);
             if($subtotal >= $findcoupon->buyammount){
                  if($findcoupon->offertype==1){
                    $discountammount =  (($subtotal*$findcoupon->amount)/100);
                    Session::forget('couponamount');
                    Session::put('couponamount',$discountammount);
                    Session::put('usecouponcode',$findcoupon->couponcode);
                  }else{
                    Session::put('couponamount',$findcoupon->amount);
                    Session::put('usecouponcode',$findcoupon->couponcode);
                  }
                  
                 Toastr::success('Success! your promo code accepted');
                 return redirect('show-cart');
             }else{
                Session::forget('couponamount');
            } 
        }
        
        Toastr::success('Cart Updated successfully','Thanks');
        return redirect()->back();
    }

     public function deleteCart(Request $request) {
        $rowId = $request->rowId;
        $quantity = $request->quantity;
        $cartinfo= Cart::instance('shopping')->update($rowId,0);
        $findcoupon = Couponcode::where('couponcode',Session::get('usecouponcode'))->first();
         if($findcoupon !=NULL){
           $subtotal=Cart::instance('shopping')->subtotal();
            $subtotal=str_replace(',','',$subtotal);
            $subtotal=str_replace('.00', '',$subtotal);
             if($subtotal >= $findcoupon->buyammount){
                  if($findcoupon->offertype==1){
                    $discountammount =  (($subtotal*$findcoupon->amount)/100);
                    Session::forget('couponamount');
                    Session::put('couponamount',$discountammount);
                    Session::put('usecouponcode',$findcoupon->couponcode);
                  }else{
                    Session::put('couponamount',$findcoupon->amount);
                    Session::put('usecouponcode',$findcoupon->couponcode);
                  }
                  
                 Toastr::success('Success! your promo code accepted');
                 return redirect('show-cart');
             }else{
                Session::forget('couponamount');
            } 
        }
        Toastr::success('Product remove from cart', 'Thanks');
        return redirect()->back();
    }
    public function addToCartPost(Request $request, $id){
        $this->validate($request,[
          'qty'=>'integer|min:1',
        ]);
        $qty = $request->qty;
        $productInfo = DB::table('products')->where('id',$id)->first();
        $productImage = DB::table('productimages')->where('product_id',$id)->first();
         if($request->proColor && $request->proSize){
            Cart::instance('shopping')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image,'size'=>$request->proSize,'color'=>$request->proColor,'proPurchaseprice'=>$productInfo->proPurchaseprice,'extrashipping'=>$productInfo->aditionalshipping]]);
         Toastr::success('Cart added successfully', 'Successfully');
         }
         elseif($request->proSize && $request->proColor==0){
         Cart::instance('shopping')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image,'size'=>$request->proSize,'proPurchaseprice'=>$productInfo->proPurchaseprice,'extrashipping'=>$productInfo->aditionalshipping]]);
         Toastr::success('Cart added successfully', 'Successfully');
         }
         elseif($request->proColor && $request->proSize==0){
            Cart::instance('shopping')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image,'color'=>$request->proColor,'proPurchaseprice'=>$productInfo->proPurchaseprice,'extrashipping'=>$productInfo->aditionalshipping]]);
         Toastr::success('Cart added successfully', 'Successfully');
         }else{
            Cart::instance('shopping')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image,'proPurchaseprice'=>$productInfo->proPurchaseprice,'extrashipping'=>$productInfo->aditionalshipping]]);
             Toastr::success('Cart added successfully', 'Successfully');
         }
         return redirect()->back(); 
    }
    
    
    public function showCart(){

        $cartInfos = Cart::instance('shopping')->content();
        if($cartInfos->count()!=0){
        return view('frontEnd.layouts.pages.showcart',compact('cartInfos'));
             
        }else{
            Toastr::error('Your cart is empty', 'Opps!');
            return redirect('/');
        }
        
    }

    public function cartorderNow($id){
            $qty = 1;
            $productInfo = DB::table('products')->where('id',$id)->first();
            $productImage = DB::table('productimages')->where('product_id',$id)->first();


            $cartinfo=Cart::instance('shopping')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image]]);
             return redirect('checkout'); 
        }

    public function deleteWishlist(Request $request) {
        $totalProduct = Cart::instance('wishlist')->count();
        if ($totalProduct) {
            $rowId =$request->rowId;
            Cart::instance('wishlist')->update($rowId,0);
            Toastr::success('Product remove from wishlist', 'Thanks');
            return redirect()->back();
        }
        else{
            return redirect('/');
        }
        
    }
    
    // =========== Add To Cart Oparation End =============

    // ========wish list oparation end================

        public function addwishlist($id){
             $qty =1;
             $productInfo = DB::table('products')->where('id',$id)->first();
             $productImage = DB::table('productimages')->where('product_id',$id)->first();
             $wishlistinfo = Cart::instance('wishlist')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image]]);
           
            return response()->json($wishlistinfo);
             
        }

        public function wishlistContent() {
            return view('frontEnd.layouts.includes.wishlistcontent');
        }
        public function wishlistProduct() {
            $wishlistproducts = Cart::instance('wishlist')->content();
            if($wishlistproducts->count()){
            return view('frontEnd.layouts.pages.wishlistproduct',compact('wishlistproducts'));
            }else{
                Toastr::info('You have no product in wishlist', 'Opps!');
                return redirect('/');
            }
        }
        public function addcartTowishlist($id,$rowId){
        $totalProduct = Cart::content()->count();
        $qty = 1;
         $productInfo = DB::table('products')->where('id',$id)->first();
         $productImage = DB::table('productimages')->where('product_id',$id)->first();

         $cartinfo= Cart::instance('shopping')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image]]);
             Cart::instance('wishlist')->update($rowId,0);
             Toastr::success('Cart added successfully', 'Added');
        return redirect()->back();  
        }


    // ========compare product oparation end=============
    public function addCompare($id){
             $qty =1;
             $productInfo = DB::table('products')->where('id',$id)->first();
             $productImage = DB::table('productimages')->where('product_id',$id)->first();
             $compareinfo=Cart::instance('compare')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image,'description'=>$productInfo->shortDescription]]);
            return response()->json($compareinfo);
             
        }
        public function compareContent() {
            return view('frontEnd.layouts.includes.comparecontent');
        }
    public function compareproduct() {
        $compareproduct = Cart::instance('compare')->content();
        if($compareproduct->count()){
        return view('frontEnd.layouts.pages.compareproduct',compact('compareproduct'));
        }else{
            Toastr::info('You have no product in compare', 'Opps!');
            return redirect('/');
        }
    }
    public function compareProductadd($id,$rowId){
            $totalProduct = Cart::instance('shopping')->content()->count();
            $qty =1;
             $productInfo = DB::table('products')->where('id',$id)->first();
             $productImage = DB::table('productimages')->where('product_id',$id)->first();
             Cart::instance('shopping')->add(['id'=>$productInfo->id,'name'=>$productInfo->proName,'qty'=>$qty,'price'=>$productInfo->proNewprice,'options' => ['image'=>$productImage->image]]);
             Toastr::success('product add to cart', 'successfully');
             Cart::instance('compare')->update($rowId,0);
             return redirect()->back();
             
        }
    public function removeCompare(Request $request) {
        $compareproduct = Cart::instance('compare')->content();
            if ($compareproduct) {
                $rowId =$request->rowId;
                Cart::instance('compare')->update($rowId,0);
                Toastr::success('Compare product remove successfully', 'successfully');
                return redirect()->back();
            }
            else{
                return redirect('/');
            }
    }
    //=========compare produc end=============

}
