<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Uuid;

class Transaction extends Model
{
    use SoftDeletes;
    protected $fillable =   ['uuid','product_id', 'message', 'date',	'payment_method',	'store_id',	'invoice',	'user_id',
                        	'admin_id',	'total',	'status',	'receiver_address',	',shipping_costs'];
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

    public function admin()
    {
        return $this->belongsTo(User::class, 'admin_id');
    }

    public function product()
    {
        return $this->belongsToMany(Product::class);
    }
}
