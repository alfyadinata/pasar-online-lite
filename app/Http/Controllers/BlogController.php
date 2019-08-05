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

        if ($check != null) {
            Alert::error('Ada Data Yang Sama.','Gagal')->autoclose(4500);
            return redirect()->back(); 
        }
        
        $request['user_id'] =   auth()->user()->id;
        $request['slug']    =   str_slug($request->name);
        try {
            Blog::create($request->all());
            Alert::success('Berhasil Membuat Data.','Sukses')->autoclose(4500);
            return redirect()->back();                
        } catch (\Throwable $e) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
            return redirect()->back();                            
        }
    }
}
