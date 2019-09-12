<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\helpers\Visitor;
use App\helpers\Logs;
use Alert;
use DataTables;

class CategoryController extends Controller
{
    //  product == 1
    //  blog category == 0
    public function __construct()
    {
        Visitor::create();
    }

    public function api(Request $request)
    {
        $categories =   Category::latest()->get();
        return DataTables::of($categories)->addIndexColumn()
                        ->addColumn('checker', function($row) {
                            $checker = '<div class="custom-checkbox custom-control">
                                            <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                                            <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                                        </div>';
                            return $checker;
                        } )
                        ->addColumn('is_product', function($row) {
                            $is_product   =  $row->is_product == 1 ? 'Produk' : 'Blog';
                            return $is_product;
                        })
                        ->addColumn('action', function($row) {
                            $btn    =   '<a data-href="'.route("eCategory",$row->uuid).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                                            '<a href="'.route("delCategory",$row->uuid).'" class="delete btn btn-danger">
                                            Hapus
                                        </a>';
                            return $btn;
                        })->rawColumns(['action','is_product','checker'])->make(true);
    }

    public function index()
    {
        return view('panel.category.index');
    } 

    public function create()
    {
        return view('panel.category.create');
    }

    public function store(Request $request)
    {
        foreach ($request->name as $key => $value) {
            $check  =   Category::where('name',$request->name[$key])->count();
            if ($check == 0) {
                $data['slug']    = str_slug($request->name[$key]);
                $data['name']    = $request->name[$key];
                $data['is_product'] = $request->is_product[$key];

                Logs::store('Membuat kategori '. $request->name[$key]);
                Category::create($data);
            }else {
                Alert::error('Ada Data Yang Sama.','Gagal')->autoclose(4500);
                return redirect()->back();                
            }

        }
        Alert::success('Berhasil Membuat Data.','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function edit($uuid)
    {
        $edit   =   Category::where('uuid',$uuid)->first();
        return view('panel.category.edit',compact('edit'));
    }

    public function update($uuid, Request $request)
    {
        // dd($request->all());
        $category   =   Category::where('uuid',$uuid)->firstOrFail();
        $request['slug'] = str_slug($request->name);
        $category->update($request->all());
        Logs::store('Memperbarui kategori '. $request->name);
        Alert::success('Berhasil Memperbarui Data.','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function destroy($uuid)
    {
        $category   =   Category::where('uuid',$uuid)->firstOrFail();
        $category->delete();
        Logs::store('Menghapus kategori '. $category->name);
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
            $data   =   Category::where('uuid',$request->checked[$key])->firstOrFail();
            $data->delete();
            Logs::store('Menghapus kategori '. $data->name);
        }

        Alert::info('Data Terpilih Berhasil Di Hapus.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
