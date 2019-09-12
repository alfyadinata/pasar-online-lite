<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Uuid;

class Role extends Model
{
    // 1 = superadmin
    // 2 = kasir
    // 3 = penjual
    // 4 = pembeli
    use SoftDeletes;
    protected $fillable = ['name'];
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
        return $this->hasMany(User::class);
    }
}
