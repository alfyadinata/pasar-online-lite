<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\Product;
use App\Cart;
use App\helpers\Logs;
use App\Store;
use DataTables;
use Alert;
use Auth;
use Facades\Yugo\SMSGateway\Interfaces\SMS;

class TransactionController extends Controller
{
    // ==> transaction status <==
    // status 0 =  menunggu respon penjual
    // status 1 =  di acc penjual
    // status 3 =  sedang di proses oleh adminstrator
    // status 4 = barang sedang di kirim
    // status 5 = pesanan sudah sampai 
    // status 6 = dibatalkan penjual
    // status 7 = dibatalkan pembeli
    // ==> payment method <==
    // 0    = bayar di tempat   
    public function api()
    {
        $admin  =   Auth()->User();
        $store  =   Store::where('user_id',$admin->id)->first();
        
        // just for superadmin
        $transactionAll =   Transaction::latest()->get();
        // just for cashir
        $transaction    =   Transaction::where('admin_id',$admin->id)->where('status',1)->orderBy('id','DESC')->get();

        if ($admin->role_id == 1) {
            return DataTables::of($transactionAll)->addIndexColumn()
            ->addColumn('checker', function($row) {
                $checker = '<div class="custom-checkbox custom-control">
                                <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                                <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                            </div>';
                return $checker;
            } )
            ->addColumn('customer', function($row) {
                $customer  =   $row->user->name;
                return $customer;
            })
            ->addColumn('status', function($row) {
                $status =   '';
                if ($row->status == 0) {
                    $status = 'Menunggu Konfirmasi Penjual';
                }
                if ($row->status == 1) {
                    $status =   'Sedang Di Proses Oleh Penjual';
                }
                return $status;
            })
            ->addColumn('action', function($row) {
                $btn    =   '<a data-href="'.route("eTransaction",$row->uuid).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                            '<a data-href="'.route("showTransaction",$row->uuid).'" class="openPopupShow btn btn-warning">Detail</a> || '.
                                '<a href="'.route("delTransaction",$row->uuid).'" class="delete btn btn-danger">
                                Hapus
                            </a>';
                return $btn;
            })->rawColumns(['action','customer','status','checker'])->make(true);
        }
        // cashier
        if ($admin->role_id == 2) {
            return DataTables::of($transaction)->addIndexColumn()
            ->addColumn('checker', function($row) {
                $checker = '<div class="custom-checkbox custom-control">
                                <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                                <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                            </div>';
                return $checker;
            } )
            ->addColumn('customer', function($row) {
                $customer  =   $row->user->name;
                return $customer;
            })
            ->addColumn('status', function($row) {
                $status =   '';
                if ($row->status == 0) {
                    $status = 'Menunggu Konfirmasi Penjual';
                }
                if ($row->status == 1) {
                    $status =   'Sedang Di Proses Oleh Penjual';
                }
                return $status; 
            })
            ->addColumn('action', function($row) {
                $btn    ='<a data-href="'.route("eTransaction",$row->uuid).'" class="openPopupEdit btn btn-warning">Detail</a> || '.
                                '<a href="'.route("delTransaction",$row->uuid).'" class="delete btn btn-danger">
                                Hapus
                            </a>';
                return $btn;
            })->rawColumns(['action','customer','status','checker'])->make(true);
        }
        //  seller
        if ($admin->role_id == 3) {
            // just for seller
            $transactionSeller  =   Transaction::where('store_id',$store->id)->where('status',0)->orderBy('id','DESC')->get();
            return DataTables::of($transactionSeller)->addIndexColumn()
            ->addColumn('checker', function($row) {
                $checker = '<div class="custom-checkbox custom-control">
                                <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                                <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                            </div>';
                return $checker;
            } )
            ->addColumn('customer', function($row) {
                $customer  =   $row->user->name;
                return $customer;
            })
            ->addColumn('status', function($row) {
                $status =   '';
                if ($row->status == 0) {
                    $status = 'Menunggu Konfirmasi Penjual';
                }
                if ($row->status == 1) {
                    $status =   'Sedang Di Proses Oleh Penjual';
                }
                return $status;
            })
            ->addColumn('action', function($row) {
                $btn    =  '<a data-href="'.route("eTransaction",$row->uuid).'" class="openPopupEdit btn btn-warning">Detail</a> || '.
                            '<a href="'.route("acceptTransaction",$row->uuid).'" class="accept btn btn-info">Proses</a> || '.
                            '<a href="'.route("declineTransaction",$row->uuid).'" class="decline btn btn-danger"> Tolak </a>'    ;
                return $btn;
            })->rawColumns(['action','customer','status','checker'])->make(true);
        }

    }

    public function index()
    {
        return view('panel.transaction.index');
    }

    public function show($uuid)
    {
        $detail =   Transaction::where('uuid',$uuid)->firstOrFail();
        return view('panel.transaction.detail',compact('detail'));
    }

    public function edit($uuid)
    {
        $edit   =   Transaction::where('uuid',$uuid)->firstOrFail();
        return view('panel.transaction.edit',compact('edit'));
    }

    public function update(Request $request, $uuid)
    {
        // $transaction
    }

    public function destroy($uuid)
    {
        $transaction   =   Transaction::where('uuid',$uuid)->firstOrFail();
        $transaction->delete();
        Logs::store('Menghapus Transaksi '. $transaction->name);
        Alert::info('Berhasil Menghapus Data.','Terhapus')->autoclose(4500);
        return redirect()->back();
    }

    public function destroyMany(Request $request)
    {
        if ($request->checked == null) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
            return redirect()->back();
        }

        foreach ($request->checked as $key => $value) {
            $data   =   Transaction::where('uuid',$request->checked[$key])->firstOrFail();
            $data->delete();
            Logs::store('Menghapus transaksi '. $data->name);
        }

        Alert::info('Data Terpilih Berhasil Di Hapus.','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function decline($uuid)
    {
        $transaction    =   Transaction::where('uuid',$uuid)->firstOrFail();
        $transaction->update([
            'status'    =>  5
        ]);
        Logs::store('Menolak transaksi, id transaksi='. $transaction->id);
        Alert::info('Transaksi Di Tolak.','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function accept($uuid)
    {
        $transaction    =   Transaction::where('uuid',$uuid)->firstOrFail();
        $transaction->update([
            'status'    =>  1
        ]);
        $message    =   'Hi '.$transaction->user->name.','.'Pesanan kamu dengan invoice:'.
                        $transaction->invoice.' Telah Di Proses Oleh Penjual. #PasarOnline';
        SMS::send([$transaction->user->phone_number], $message);
        Logs::store('Menerima transaksi, id transaksi='. $transaction->id);
        Alert::info('Transaksi Di Terima.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
