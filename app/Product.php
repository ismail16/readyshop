<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $fillable = [];
    protected $casts = [
        'proPurchaseprice' => 'double',
        'proOldprice' => 'double',
        'proNewprice' => 'double',
        'aditionalshipping' => 'double',
    ];
  

    public function proSizes()
    {
        return $this->belongsToMany('App\Size','productsizes')->withTimestamps();
    }
    public function proColors()
    {
        return $this->belongsToMany('App\Color','productcolors')->withTimestamps();
    }
    public function proImage(){
      return $this->hasOne('App\Productimage','product_id','id');
    }
    public function reviews(){
      return $this->hasMany('App\Review','product_id','id');
    }

    public function proImages(){
      return $this->hasMany('App\Productimage','product_id','id');
    }
    public function category(){
      return $this->hasOne('App\Category','proCategory','id');
    }
    public function categories(){
        return $this->belongsTo('App\Category', 'proCategory');
	}

    
}
