<?php
// alfy muhammad adinata
// 2019
// alfymuhammad7@gmail.com
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\helpers\Visitor;
use App\helpers\Logs;
use App\Transaction;
use App\Product;
use App\Cart;
use Alert;
use Uuid;
use Illuminate\Support\Facades\DB;

class TransactionUserController extends Controller
{
    // ==> transaction status <==
    // status 0 =  waiting response seller
    // status 1 = in proses by admin
    // status 3 = in delivery
    // status 4 = complete
    // status 5 = cancel by seller
    // status 6 = cancel by customer(before process by seller, customers can cancel order)
    // ==> payment method <==
    // 0    = bayar di tempat
    public function __construct()
    {
        Visitor::create();
    }

    public function store(Request $request)
    {
        $transaction    =   new Transaction;
        try {
           // database transaction
            DB::beginTransaction();
            foreach ($request->cart_id as $key => $value) {
                // generate invoice, validate user
                $latestTransaction  =   Transaction::orderBy('id','DESC')->withTrashed()->first();
                $latestId   =   $latestTransaction == null ? 0+1 : $latestTransaction->id+1;
                $userId   =   auth()->user()->id;
                $uuid   =   Uuid::generate()->string;
                // dd($uuid);
                $invoice    =   date('Y').date('m').date('d').$latestId;
                // generate store id 
                $cart    =   Cart::where('user_id',$userId)->where('id',$request->cart_id[$key])->where('status',0)->first();
                $product    =   Product::where('id',$cart->product_id)->first();
                // dd($product->id);
                // processing insert transaction
                $transaction->create([
                    'product_id' => $product->id,
                    'user_id' => $userId,
                    'date' => date('Y-m-d'),
                    'payment_method' => $request->payment_method,
                    'admin_id'  => $request->admin_id,
                    'invoice'   =>  $invoice,
                    'message'   => $cart->message,
                    'store_id'  => $product->store->id,
                    'status'    => 0,
                    'shipping_costs'    => 0,
                    'receiver_address'  => $request->address,
                    'total' =>  $cart->total,
                ]);
                // processing update cart
                $cart->update([
                    'status' => 1
                ]);
                
                $idTransaction  =   $latestTransaction->id+1;
                Logs::store('Melakukan Transaksi, id='.$idTransaction. ' , cart_id='.$request->cart_id[$key]);
            }
            DB::commit();
            Alert::success('Silahkan Tunggu Respon Penjual.','Sukses')->autoclose(4500);
            return redirect()->back();
        } catch (\Throwable $th) {
            DB::rollback();
            Alert::error('Ada Kesalahan.','Gagal.')->persistent('Tutup');
            return redirect()->back();
        }
    }

    public function destroy(Request $request)
    {
        
    }
}
