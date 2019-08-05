<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Uuid;

class Product extends Model
{
    use SoftDeletes;
    // uuid 
    protected static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            try {
                $model->uuid = Uuid::generate()->string;
            } catch (UnsatisfiedDependencyException $e) {
                abort(500, $e->getMessage());
            }
        });
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function wishlist()
    {
        return $this->belongsToMany(WishList::class);
    }
    
    public function promotion()
    {
        return $this->belongsTo(Promotion::class);
    }

    public function cart()
    {
        return $this->belongsToMany(Cart::class);
    }   
}
