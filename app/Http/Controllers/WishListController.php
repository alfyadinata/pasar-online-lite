<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\WishList;

class WishListController extends Controller
{
    public function store(Request $request)
    {
        $wList  =   new WishList;
        $request['user_id'] =   auth()->user()->id;
        try {
            $wList->create($request->all());
            // Alert::success('');
        } catch (\Throwable $th) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
        }
    }
}
