<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Saldo extends Model
{
    protected $fillable =   ['user_id','saldo'];
    protected $table    =   'saldo';
    public function user()
    {
        return $this->hasOne(User::class);
    }
}
