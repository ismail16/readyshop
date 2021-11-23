<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orderdetails extends Model
{
    public function invoiceimage(){
      return $this->hasOne('App\Productimage','product_id','ProductId');
    }
}
