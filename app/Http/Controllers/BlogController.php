<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\helpers\Visitor;
use App\helpers\Logs;
use App\Blog;
use App\Category;
use Alert;

class BlogController extends Controller
{
    public function __construct()
    {
        Visitor::create();
    }

    public function index()
    {
        $blogs  =   Blog::latest()->get();
        // dd($)
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
        
        $request['user_id'] =   auth()->user()->id;
        $request['slug']    =   str_slug($request->name);
        try {
            Blog::create($request->all());
            Logs::store('Membuat blog : '.$request->name);
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
}
