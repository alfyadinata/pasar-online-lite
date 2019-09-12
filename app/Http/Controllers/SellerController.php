<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\helpers\Visitor;
use App\helpers\Logs;
use App\User;
use Alert;
use DataTables;

class SellerController extends Controller
{
    public function __construct()
    {
        Visitor::create();
    }

    public function api()
    {
        $sellers   =   User::where('role_id',3)->latest()->get();
        return DataTables::of($sellers)->addIndexColumn()
        ->addColumn('checker', function($row) {
            $checker = '<div class="custom-checkbox custom-control">
                            <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                            <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                        </div>';
            return $checker;
        } )
        ->addColumn('action', function($row) {
            $btn    =   '<a data-href="'.route("eSeller",$row->uuid).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                            '<a href="'.route("delSeller",$row->uuid).'" class="delete btn btn-danger">
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
        return view('panel.seller.index');
    }    

    public function create()
    {
        return view('panel.seller.create');
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

            Logs::store(auth()->user()->email. ' Membuat penjual '. $request->email[$key]);
        }

        Alert::success('Berhasil Membuat Data','Sukses')->autoclose(4500);
        return redirect()->back();

    }

    public function edit($uuid)
    {
        $edit   =   User::where('uuid',$uuid)->firstOrFail();
        // dd($edit);
        return view('panel.seller.edit',compact('edit'));
    }

    public function update($uuid, Request $request)
    {
        $seller    =   User::where('uuid',$uuid)->firstOrFail();
        $password = $request->password;
        $seller->update([
            'name' => $request->name,
            'email' => $request->email,
            'password' => $password == null ? $seller->password : $password,
            'phone_number' => $request->phone_number,
            'active' => $request->active
        ]);
        Logs::store('Memperbarui penjual '. $seller->email);
        Alert::info('Berhasil Memperbarui Data','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function destroy($uuid)
    {
        $seller    =   User::where('uuid',$uuid)->firstOrFail();
        $seller->delete();
        Logs::store('Menghapus penjual '. $seller->email);
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
            Logs::store('Menghapus penjual '. $data->email);
        }

        Alert::info('Data Terpilih Berhasil Di Hapus.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
