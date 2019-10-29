<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\helpers\Visitor;
use App\helpers\Logs;
use App\Blog;
use App\Category;
use DataTables;
use Alert;

class BlogController extends Controller
{
    public function __construct()
    {
        Visitor::create();
    }

    public function api()
    {
        $blogs  =   Blog::latest()->get();
        return DataTables::of($blogs)->addIndexColumn()
        ->addColumn('checker', function($row) {
            $checker = '<div class="custom-checkbox custom-control">
                            <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                            <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                        </div>';
            return $checker;
        } )
        // ->addColumn('category', function($row) {
        //     $category   =   $row->category->name;
        //     return $category;
        // } )
        ->addColumn('author', function($row) {
            // $author =   $row->user->name;
            $author = 'nannaa';
            return $author;
        } )
        ->addColumn('action', function($row) {
            $btn    =   '<a href="'.route("eBlog",$row->uuid).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                            '<a href="'.route("delBlog",$row->uuid).'" class="delete btn btn-danger">
                            Hapus
                        </a>';
            return $btn;
        } )->rawColumns(['checker','category','author','action'])->make(true);        
    }

    public function index()
    {
        return view('panel.blog.index',compact('blogs'));
    }

    public function create()
    {
        $categories =   Category::where('is_product',0)->get();
        return view('panel.blog.create',compact('categories'));
    }

    public function store(Request $request) 
    {
        $check  =   Blog::where('title',$request->title)->first();
        // dd($request->all());
        if ($check != null) {
            Alert::error('Ada Data Yang Sama.','Gagal')->autoclose(4500);
            return redirect()->back(); 
        }

        try {
            $blog   =   new Blog;
            $blog->title    =   $request->title;
            $blog->slug     =   str_slug($request->title);
            $blog->user_id  =   auth()->user()->id;
            $blog->description  =   $request->description;
            $blog->category_id  =   $request->category_id;
            $blog->thumbnail    =   $request->file('thumbnail')->store('blogs');
            $blog->save();
            Logs::store('Membuat blog : '.$request->title);
            Alert::success('Berhasil Membuat Data.','Sukses')->autoclose(4500);
            return redirect()->route('iBlog');                
        } catch (\Throwable $e) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
            return redirect()->back();
        }
    }

    public function edit($uuid)
    {
        $edit   =   Blog::where('uuid',$uuid)->firstOrFail();
        $categories =   Category::where('is_product',0)->get();
        return view('panel.blog.edit', compact('edit','categories'));
    }

    public function update(Request $request, $uuid)
    {
        $blog   =   Blog::where('uuid',$uuid)->firstOrFail();
        $blog->update([
            
        ]);
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
