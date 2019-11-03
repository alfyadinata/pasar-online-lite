<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\helpers\Visitor;
use App\helpers\Logs;
use App\User;
use Alert;
use DataTables;

class CashierController extends Controller
{
    public function __construct()
    {
        Visitor::create();
        if (auth()->user()->role_id == 4) {
            return redirect('/');
        }
    }

    public function api()
    {
        $cashiers   =   User::where('role_id',2)->latest()->get();
        return DataTables::of($cashiers)->addIndexColumn()
        ->addColumn('checker', function($row) {
            $checker = '<div class="custom-checkbox custom-control">
                            <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                            <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                        </div>';
            return $checker;
        } )
        ->addColumn('action', function($row) {
            $btn    =   '<a data-href="'.route("eCashier",$row->uuid).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                            '<a href="'.route("delCashier",$row->uuid).'" class="delete btn btn-danger">
                            Hapus
                        </a>';
            return $btn;
        })->addColumn('status', function($row) {
            $checker = $row->active == 1 ? 'Aktif' : 'Non-Aktif';
            return $checker;
        } )->rawColumns(['action','status','checker'])->make(true);
    }

    public function index()
    {
        return view('panel.cashier.index');
    }    

    public function create()
    {
        return view('panel.cashier.create');
    }

    public function store(Request $request)
    {

        foreach ($request->name as $key => $value) {
            $check  =   User::where('email',$request->email[$key])->first();    
            if ($check == null ) {
                Alert::error('Ada Data Yang Sama.','Gagal')->autoclose(4500);
            }
            
            User::create([
                'name' => $request->name[$key],
                'email' => $request->email[$key],
                'password' => bcrypt($request->password[$key]),
                'phone_number' => $request->phone_number[$key],
                'role_id'   => 2                
            ]);

            Logs::store(auth()->user()->email. ' Membuat Kasir '. $request->email[$key]);
        }

        Alert::success('Berhasil Membuat Data','Sukses')->autoclose(4500);
        return redirect()->back();

    }

    public function edit($uuid)
    {
        $edit   =   User::where('uuid',$uuid)->firstOrFail();
        // dd($edit);
        return view('panel.cashier.edit',compact('edit'));
    }

    public function update($uuid, Request $request)
    {
        $cashier    =   User::where('uuid',$uuid)->firstOrFail();
        $password = $request->password;
        $cashier->update([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($password == null ? $cashier->password : $password),
            'phone_number' => $request->phone_number,
            'active' => $request->active
        ]);
        Logs::store('Memperbarui Kasir '. $cashier->email);
        Alert::info('Berhasil Memperbarui Data','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function destroy($uuid)
    {
        $cashier    =   User::where('uuid',$uuid)->firstOrFail();
        $cashier->delete();
        Logs::store('Menghapus Kasir '. $cashier->email);
        Alert::info('Berhasil Menghapus Data','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function destroyMany(Request $request)
    {
        if ($request->checked == null) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
            return redirect()->back();
        }

        foreach ($request->checked as $key => $value) {
            $data   =   User::where('uuid',$request->checked[$key])->firstOrFail();
            $data->delete();
            Logs::store('Menghapus Kasir '. $data->email);
        }

        Alert::info('Data Terpilih Berhasil Di Hapus.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
