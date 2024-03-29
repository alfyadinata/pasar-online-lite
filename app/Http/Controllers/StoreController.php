<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Store;
use Alert;
use Auth;
use App\helpers\Visitor;

class StoreController extends Controller
{
    public function __construct()
    {
        Visitor::create();
        if (auth()->check()) {
            if (Auth::user()->role_id == 4) {
                return redirect('/');
            }
        }
    }

    
    public function index()
    {
        $edit  =   Store::where('user_id',auth()->user()->id)->first();
        return view('panel.store.index',compact('edit'));
    }
}
