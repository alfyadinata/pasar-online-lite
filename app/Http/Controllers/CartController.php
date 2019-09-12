<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\helpers\Visitor;
use App\Cart;
use Alert;

class CartController extends Controller
{
    public function __constructor()
    {
        Visitor::create();
    }
    
    public function store(Request $request)
    {
        $cart   =   new Cart;
        dd($request->all());
        try {
            $request['user_id'] =   auth()->user()->id;
            $cart->create($request->all());        
            Alert::info('Berhasil Masuk Ke Keranjang','Sukses')->autoclose(4500);
            return redirect()->back();
        } catch (\Throwable $th) {
            Alert::error('Ada Kesalahan','Gagal')->autoclose(4500);
        }
    }

    public function update(Request $request)
    {
        if ($request->product_id == null) {
            Alert::error('Ada Kesalahan','Gagal')->autoclose(4500);
            return redirect()->back();            
        }   

        foreach ($request->product_id as $key => $value) {
            # code...
        }
    }
}
