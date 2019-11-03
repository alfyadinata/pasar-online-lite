<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\Product;
use App\Visitor;
use App\helpers\Visitor as Visit;
use App\Category;
use App\Store;


class DashboardController extends Controller
{
    public function __construct()
    {
        Visit::create();
        if (auth()->check()) {
            if (auth()->user()->role_id == 4) {
                return redirect('/');
            }
        }
    }
    
    public function index()
    {
        $user           =   auth()->user();
        $transaction    =   [];
        $product        =   [];
        $category       =   []; 
        $store          =   [];
        $sales          =   [];
        if ($user->role_id <= 2) {
            $store      =   Store::count();
            $transaction    =   Transaction::count();
            $product    =   Product::count();
            $sales  =   Transaction::where('status',4)->count();
        }
        if ($user->role_id == 3) {
            $storeId    =   Store::where('user_id',$user->id)->first();
            $product    =   Product::where('store_id',$storeId->id)->count();
            $sales  =   Transaction::where('status',4)->where('store_id',$storeId->id)->count();
            $transaction    =   Transaction::where('store_id',$storeId->id)->count();
        }
        return view('panel.dashboard.index',
                compact('user','transaction','sales','product','store'));
    }
}
