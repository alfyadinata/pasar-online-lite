<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\Product;
use App\Visitor;
use App\Category;
use App\Store;


class DashboardController extends Controller
{
    public function index()
    {
        $user           =   auth()->user();
        $transaction    =   [];
        $product        =   [];
        $category       =   [];
        $store          =   [];
        if ($user->role_id <= 2) {
            $store      =   Store::count();
            $transaction    =   Transaction::count();
            $product    =   Product::count();
        }
        if ($user->role_id == 3) {
            $storeId    =   Store::where('user_id',$user->id)->count();
            $product    =   Product::where('store_id',$storeId->id)->count();
            $transaction    =   Transaction::where('store_id',$storeId->id)->count();
        }
        // dd($transaction);
        return view('panel.dashboard.index',
                compact('user','transaction','product','store'));
    }
}
