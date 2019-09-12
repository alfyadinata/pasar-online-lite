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
    public function index()
    {
        $userId     =   User::where('id',auth()->user()->id)->first();
        $carts      =   Cart::where('user_id',$userId->id)->where('status',0)->get();
        $products   =   Product::where($carts);
        $admins     =   User::where('role_id',2)->where('active',1)->get();
        $total      =   Cart::sum('total');

        return view('cart',compact('carts','products','admins'));
    }

    public function store(Request $request)
    {
        $check  =   Cart::where('product_id',$request->product_id)->where('user_id',auth()->user()->id)->first();
        $product    =   Product::where('id',$request->product_id)->first();
        $cart   =   new Cart;
        $request['user_id'] =   auth()->user()->id;
        // dd($request->all());
        if ($check != null) {
            if ($check->qty + $request->qty > $product->qty) {
                Alert::error('Stock Terbatas.','Oops')->autoclose(4500);
                return redirect()->back();
            }
            // dd($check->id);
            $productAvailable   =   Product::where('id',$check->product_id)->first();
            // dd($productAvailable);
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
        $cart->delete();
        Logs::store('Menghapus Keranjang, cart id = '.$check->id);
        Alert::info('Berhasil Menghapus Dari Keranjang.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
