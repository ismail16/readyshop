<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Category;
use App\Logo;
use App\Product;
use App\Brand;
use App\Customer;
use App\District;
use App\Area;
use App\Productimage;
use App\Location;
use App\Pagecategory;
use App\Socialmedia;
use App\Blogcategory;
use App\Createpage;
use App\Ordertype;
use App\Contact;
use App\Expencecategory;
use App\Paymentmethod;
use DB;
use Session;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
            
        // paymentmethods info here
        $paymentmethods = Paymentmethod::where('status',1)->get();
        view()->share(compact('paymentmethods'));
            
        
        // mainlogo
        $mainlogo=Logo::where(['status'=>1, 'type'=>'Logo'])->orderBy('id','DESC')->limit(1,0)->get(); 

        view()->share(compact('mainlogo'));
        
        $favicon=Logo::where(['status'=>1, 'type'=>'Favicon'])->orderBy('id','DESC')->limit(1,0)->get(); 
        view()->share(compact('favicon'));
        
         // category
        $categories = Category::where('status',1)->orderBy('level')->get();
        view()->share(compact('categories'));

        // contact info
        $contactinfoes = Contact::where('status',1)->get();
        view()->share(compact('contactinfoes'));
        
        // Front category
        $frontcategories = Category::where(['status'=>1,'frontProduct'=>1])->get();
        view()->share(compact('frontcategories'));
        
        
        $hcategories = Category::where('status',1)->orderBy('id','ASC')->get();
        view()->share(compact('hcategories'));

        // category
        $sidebarmenu = Category::where('status',1)->get();
        view()->share(compact('sidebarmenu'));

        // brand
        $brands = Brand::where('status',1)->get();
        view()->share(compact('brands'));

        // product image
        $productimage =Productimage::orderBy('id','DESC')->get();
         view()->share(compact('productimage'));

        // district
         $districts = District::where('status',1)->get();
         view()->share(compact('districts'));

        // area
        $areas = Area::where('status',1)->get();
        view()->share(compact('areas'));

        $shippingCharg=Location::get();
        view()->share(compact('shippingCharg'));

        // all page
        $allpage = Createpage::where(['status'=>1])->get();
        view()->share(compact('allpage'));

        // footrleftmenu
        $footermenuleft = Pagecategory::where(['status'=>1,'menu_id'=>1])->get();
        view()->share(compact('footermenuleft'));

        // footerrightmenu
        $footermenuright = Pagecategory::where(['status'=>1,'menu_id'=>2])->get();
        view()->share(compact('footermenuright'));

        // social icon
        $socialicons = Socialmedia::where(['status'=>1])-> orderBy('id','DESC')->get();
        view()->share(compact('socialicons'));

        // Blog Categories 
        $ordertypes = Ordertype::get();
        view()->share(compact('ordertypes'));

        // order type
        $expencetypes = Expencecategory::where('status',1)->get();
        view()->share(compact('expencetypes'));

        $setting = \App\Contact::first();
        view()->share(compact('setting'));


        Schema::defaultStringLength(191);
            
    }
}
