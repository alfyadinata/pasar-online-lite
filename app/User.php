<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Uuid;

class User extends Authenticatable
{
    use Notifiable;
    use SoftDeletes;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','role_id','active','phone_number',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

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

    public function role()
    {
        return $this->belongsTo(Role::class);
    }

    public function wishlist()
    {
        return $this->belongsToMany(WishList::class);
    }

    public function log()
    {
        return $this->hasMany(Log::class);
    }

    public function store()
    {
        return $this->belongsTo(Store::class);
    }

    public function promotion()
    {
        return $this->hasMany(Promotion::class);
    }

    public function cart()
    {
        return $this->belongsToMany(Cart::class);
    }

    public function transaction()
    {
        return $this->hasMany(Transaction::class);
    }
}
