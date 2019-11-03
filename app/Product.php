<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Uuid;

class Product extends Model
{
    use SoftDeletes;
    protected $fillable =   ['name','slug','price','unit_id','description','category_id','qty','foto','foto_2','foto_3','store_id'];
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

    public function store()
    {
        return $this->belongsTo(Store::class);
    }

    public function wishlist()
    {
        return $this->belongsToMany(WishList::class);
    }
    
    public function transaction()
    {
        return $this->belongsToMany(Transaction::class);
    }   

    public function promotion()
    {
        return $this->belongsTo(Promotion::class);
    }


}
