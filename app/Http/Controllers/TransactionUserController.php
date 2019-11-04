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
use App\Saldo;
use Alert;
use Uuid;
use DataTables;
use Illuminate\Support\Facades\DB;

class TransactionUserController extends Controller
{
    // ==> transaction status <==
    // status 0 =  menunggu respon penjual
    // status 1 =  di acc penjual
    // status 3 =  sedang di proses oleh adminstrator
    // status 4 = barang sedang di kirim
    // status 5 = pesanan sudah sampai(selesai)
    // status 6 = dibatalkan penjual
    // status 7 = dibatalkan pembeli
    // ==> payment method <==
    // 0    = saldo
    public function __construct()
    {
        Visitor::create();
    }

    public function store(Request $request)
    {
        $transaction    =   new Transaction;
        try {
        //    database transaction
            DB::beginTransaction();
            foreach ($request->cart_id as $key => $value) {
                // generate invoice, validate user
                $latestTransaction  =   Transaction::orderBy('id','DESC')->withTrashed()->first();
                $latestId   =   $latestTransaction == null ? 0+1 : $latestTransaction->id+1;
                $userId   =   auth()->user()->id;
                $uuid   =   Uuid::generate()->string;
                // dd($uuid);
                $invoice    =   date('Y').date('m').date('d').$latestId;
                // tampung cart
                $cart    =   Cart::where('user_id',$userId)->where('id',$request->cart_id[$key])->where('status',0)->first();
                $product    =   Product::where('id',$cart->product_id)->first();
                // check saldo
                $saldo  =   Saldo::where('user_id',$userId)->first();
                if ($saldo->saldo < $cart->total) {
                    Alert::info('Saldo Tidak Cukup.','Gagal')->autoclose(4500);
                    return redirect()->back();                    
                }
                // kurangi saldo user
                $saldo->update([
                    'saldo' => $saldo->saldo - $cart->total
                ]);
                // kurangi stock
                $stockProduct   =   Product::where('id',$cart->product_id)->first();
                $stockProduct->update([
                    'qty'   =>  $stockProduct->qty - $cart->qty,
                ]);
                Logs::store('Saldo di kurangi : '.number_format($cart->total,0,'',','));                
                $transaction->create([
                    'product_id' => $product->id,
                    'user_id' => $userId,
                    'date' => date('Y-m-d'),
                    'payment_method' => 0,
                    'admin_id' => $request->admin_id,
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

    public function index()
    {
        $transactions    =   Transaction::where('status','<=',4)->where('user_id',auth()->user()->id)->get();
        return view('transaction',compact('transactions'));        
    }

    public function history()
    {
        $transactions    =   Transaction::where('status','>',4)->where('user_id',auth()->user()->id)->get();
        return view('transaction-history',compact('transactions'));
    }

    public function historyJson()
    {
        $transaction    =   Transaction::where('user_id',auth()->user()->id)->where('status','>',3)->get();
        return DataTables::of($transaction)->addIndexColumn()
        ->addColumn('date', function($row) {
            $date   =   $row->date;
            return $date;
        })
        ->addColumn('status', function($row) {
            $status =   '';
            if ($row->status == 4) {
                $status = 'Selesai Di Lakukan';
            }
            if ($row->status == 5) {
                $status =   'Di Batalkan Penjual';
            }
            if ($row->status == 6) {
                $status =   'Di Batalkan Pembeli';
            }
            return $status;
        })
        ->addColumn('product', function($row) {
            $productId  =   Product::where('id',$row->product_id)->first();
            $product =   $productId->name;
            return $product;
        })
        ->addColumn('invoice', function($row) {
            $invoice =   $row->invoice;
            return $invoice;
        })
        ->rawColumns(['status','date','product','invoice'])->make(true);
    }
}
