<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Uuid;

class Category extends Model
{
    use SoftDeletes;
    protected $fillable =   ['name','is_product','uuid','slug'];
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

    public function blog()
    {
        return $this->hasMany(Blog::class);
    }

    public function product()
    {
        return $this->hasMany(Product::class);
    }
}
