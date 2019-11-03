<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\WishList;

class WishListController extends Controller
{
    public function store(Request $request, $id)
    {
        $wList  =   new WishList;
        $request['user_id'] =   auth()->user()->id;
        $request['product_id']  =   $id;
        try {
            $wList->create($request->all());
            // Alert::success('');
        } catch (\Throwable $th) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
        }
    }
}
