<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Unit;
use App\helpers\Visitor;
use App\helpers\Logs;
use Alert;
use DataTables;

class SatuanController extends Controller
{
    public function __construct()
    {
        Visitor::create();
        if (auth()->check()) {
            if (Auth::user()->role_id == 4) {
                return redirect('/');
            }
        }
    }


    public function api(Request $request)
    {
        $categories =   Unit::latest()->get();
        return DataTables::of($categories)->addIndexColumn()
                        ->addColumn('checker', function($row) {
                            $checker = '<div class="custom-checkbox custom-control">
                                            <input type="checkbox" name="checked[]" value="'. $row->id.'" class="checks form-control">
                                            <label for="checkbox-'.$row->id.'" class="custom-control-label">&nbsp;</label>
                                        </div>';
                            return $checker;
                        } )
                        ->addColumn('action', function($row) {
                            $btn    =   '<a data-href="'.route("eSatuan",$row->id).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                                            '<a href="'.route("delSatuan",$row->id).'" class="delete btn btn-danger">
                                            Hapus
                                        </a>';
                            return $btn;
                        })->rawColumns(['action','checker'])->make(true);
    }

    public function index()
    {
        return view('panel.satuan.index');
    } 

    public function create()
    {
        return view('panel.satuan.create');
    }

    public function store(Request $request)
    {
        foreach ($request->name as $key => $value) {
            $check  =   Unit::where('name',$request->name[$key])->count();
            if ($check == 0) {
                $data['name']    = $request->name[$key];

                Logs::store('Membuat Satuan '. $request->name[$key]);
                Unit::create($data);
            }else {
                Alert::error('Ada Data Yang Sama.','Gagal')->autoclose(4500);
                return redirect()->back();                
            }

        }
        Alert::success('Berhasil Membuat Data.','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function edit($id)
    {
        $edit   =   Unit::where('id',$id)->first();
        return view('panel.satuan.edit',compact('edit'));
    }

    public function update($id, Request $request)
    {
        $Unit   =   Unit::where('id',$id)->firstOrFail();
        $request['slug'] = str_slug($request->name);
        $Unit->update($request->all());
        Logs::store('Memperbarui Satuan '. $request->name);
        Alert::success('Berhasil Memperbarui Data.','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function destroy($id)
    {
        $Unit   =   Unit::where('id',$id)->firstOrFail();
        $Unit->delete();
        Logs::store('Menghapus Satuan '. $Unit->name);
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
            $data   =   Unit::where('id',$request->checked[$key])->firstOrFail();
            $data->delete();
            Logs::store('Menghapus Satuan '. $data->name);
        }

        Alert::info('Data Terpilih Berhasil Di Hapus.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
