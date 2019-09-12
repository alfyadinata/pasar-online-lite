<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Store;
use Alert;
use Auth;
class StoreController extends Controller
{
    public function index()
    {
        $edit  =   Store::where('user_id',auth()->user()->id)->first();
        return view('panel.store.index',compact('edit'));
    }
}
