<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\helpers\Logs;
use App\Product;
use App\Cart;
use App\User;
use Alert;

class CartUserController extends Controller
{
    // status 0 = di keranjang
    // status 1 = di transaksi
    public function index()
    {
        $carts      =   Cart::where('user_id',auth()->user()->id )->where('status',0)->get();
        $admins     =   User::where('role_id',2)->where('active',1)->get();
        $total      =   Cart::where('user_id',auth()->user()->id)->where('status',0)->sum('total');

        return view('cart',compact('carts','total','admins'));
    }

    public function store(Request $request)
    {
        $check  =   Cart::where('product_id',$request->product_id)->where('user_id',auth()->user()->id)->where('status',0)->first();
        $product    =   Product::where('id',$request->product_id)->first();
        $cart   =   new Cart;
        $request['user_id'] =   auth()->user()->id;
        
        if ($check != null) {
            if ($check->qty + $request->qty > $product->qty) {
                Alert::error('Stock Terbatas.','Oops')->autoclose(4500);
                return redirect()->back();
            }

            $productAvailable   =   Product::where('id',$check->product_id)->first();

            $check->update([
                'qty' => $check->qty + $request->qty,
                'total' => $check->total + $request->qty * $productAvailable->price,
            ]);

            Logs::store('Memasukan Produk ke Keranjang, cart id = '.$check->id);
            Alert::success('Berhasil Masuk Ke Keranjang.','Sukses')->autoclose(4500);
            return redirect()->back();
        }       

        try {            
            $request['total']   =   $product->price * $request->qty;
            $cart->create($request->all());
            Logs::store('Memasukan Produk ke Keranjang, cart id = '.$cart->id);
            Alert::success('Berhasil Masuk Ke Keranjang.','Sukses')->autoclose(4500);
            return redirect()->back();
        } catch (\Throwable $th) {
            Alert::error('Ada Kesalahan.','Oops')->autoclose(4500);
            return redirect()->back();
        }
    }

    public function destroy($uuid)
    {
        $cart   =   Cart::where('uuid',$uuid)->firstOrFail();
        Logs::store('Menghapus Keranjang, cart id = '.$check->id);
        $cart->delete();
        Alert::info('Berhasil Menghapus Dari Keranjang.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
