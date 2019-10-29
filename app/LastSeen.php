<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LastSeen extends Model
{
    protected $fillable = ['user_id','product_id'];
}
