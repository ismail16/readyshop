<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use App\Cart;
use App\Wishlist;
use App\Compare;
use DB;
use Response;
class ShoppingCartController extends Controller
{
    // Shopping Cart
    public function cartshow(Request $request)
    {
        $customer_id = getallheaders()['customer_id'];
        $cart =  Cart::with('product')
            ->where('customer_id',$customer_id) 
            ->orderBy('created_at', 'desc')
            ->get();
        return response()->json(['status'=>'success','cart'=>$cart]);
    }
    public function cartstore(Request $request)
    {
        $customer_id = getallheaders()['customer_id'];
        $item = Cart::where(['product_id'=>$request->product_id,
            'customer_id'=>$customer_id]);
        if ($item->count()) {
            $item->increment('quantity');
            $item = $item->first();
        } else {
            $item = Cart::forceCreate([
                'product_id'    => $request->product_id,
                'product_size'  => $request->product_size,
                'product_color' => $request->product_color,
                'customer_id'   => $customer_id,
                'quantity'      => $request->quantity?$request->quantity:1,
            ]);
        }
        return response()->json([
            'quantity' => $item->quantity,
            'product' => $item->product
        ]);
    }
    public function cartincrement($product_id)
    {
        $customer_id = getallheaders()['customer_id'];
        $item = Cart::where(['product_id'=>$product_id,'customer_id'=>$customer_id]);
        if ($item->count()) {
            $item->increment('quantity');
            $item = $item->first();
        }
        return response()->json([
            'quantity' => $item->quantity,
            'product' => $item->product
        ]);
    }
    public function cartdecrement($product_id)
    {
        $customer_id = getallheaders()['customer_id'];
        $item = Cart::where(['product_id'=>$product_id,'customer_id'=>$customer_id]);
        if ($item->count()) {
            $item->decrement('quantity');
            $item = $item->first();
        }
        return response()->json([
            'quantity' => $item->quantity,
            'product' => $item->product
        ]);
    }
    public function cartdestroy($product_id)
    {
        $customer_id = getallheaders()['customer_id'];
        $item = Cart::where(['product_id'=>$product_id,'customer_id'=>$customer_id])->delete();
        return response(['status'=>'success','message'=>'cart item delete']);
    }
    
    // Wishlist  manage
    public function wishshow()
    {
        return Wishlist::with('product')
                ->orderBy('created_at', 'desc')
                ->get();
    }
    public function wishstore(Request $request)
    {
        $item = Wishlist::where('product_id', $request->product_id);
        if ($item->count()) {
            $item->increment('quantity');
            $item = $item->first();
        }else{
            $item = Wishlist::forceCreate([
                'product_id' => $request->product_id,
                'quantity' => 1,
            ]);
        }
        return response()->json([
            'quantity' => $item->quantity,
            'product' => $item->product
        ]);
    }
    public function wishdestroy($productId)
    {
        $item = Wishlist::where('product_id', $productId)->delete();
        return response(null, 200);
    }
    

     // Compare  manage
    public function compareshow()
    {
        return Compare::with('product')
                ->orderBy('created_at', 'desc')
                ->get();
    }
    public function comparestore(Request $request)
    {
        $item = Compare::where('product_id', $request->product_id);
        if ($item->count()) {
            $item->increment('quantity');
            $item = $item->first();
        }else{
            $item = Compare::forceCreate([
                'product_id' => $request->product_id,
                'quantity' => 1,
            ]);
        }
        return response()->json([
            'quantity' => $item->quantity,
            'product' => $item->product
        ]);
    }
    public function comparedestroy($productId)
    {
        $item = Compare::where('product_id', $productId)->delete();
        return response(null, 200);
    }

}
