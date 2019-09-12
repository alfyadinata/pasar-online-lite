<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Uuid;

class Cart extends Model
{
    use SoftDeletes;
    protected $fillable =   ['uuid','product_id','user_id','message','qty','total','message','status'];
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

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function product()
    {
        return $this->belongsToMany(Product::class);
    }
}
