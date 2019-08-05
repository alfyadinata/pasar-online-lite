<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\helpers\Visitor;
use App\helpers\Logs;
use Alert;

class CategoryController extends Controller
{
    //  product == 1
    //  blog category == 0
    public function __construct()
    {
        Visitor::create();
    }

    public function index()
    {
        $categories =   Category::latest()->get();
        return view('panel.category.index',compact('categories'));
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
        $category   =   Category::where('uuid',$uuid)->firstOrFail();
        $request['slug'] = str_slug($request->name);
        $category->update($request->all());
        Logs::store('Menghapus kategori '. $request->name);
        Alert::success('Berhasil Membuat Data.','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function destroy($uuid)
    {
        $category   =   Category::where('uuid',$uuid)->firstOrFail();
        $category->delete();
        Logs::store('Memperbarui kategori '. $category->name);
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
