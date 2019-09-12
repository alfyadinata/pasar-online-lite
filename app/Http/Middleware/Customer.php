<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
use Alert;
class Customer
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth()->check()) {
            if (auth()->user()->role_id == 4) {
                return $next($request);
            }
        }
        Alert::error('Akses Ditolak.','Oops')->persistent('Tutup');
        return redirect()->back();
    }
}
