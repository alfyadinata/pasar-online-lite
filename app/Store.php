<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Uuid;

class Store extends Model
{
    use SoftDeletes;
    protected $fillable =   ['name','slug','user_id','phone_number','address'];
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
        return $this->hasOne(User::class);
    }

    public function product()
    {
        return $this->hasMany(Product::class);
    }
}
