<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\Store;
use App\Promotion;

class IndexController extends Controller
{
    public function index()
    {
        $products    =   Product::latest()->get();
        $promotions =   Promotion::latest()->get();
        return view('fe.index',compact('product'));
    }

    public function search(Request $request)
    {
        $q  =   $request->get('q');
        $category   =   $request->category;
                
        // if ( $category != null) {
        //     $products   =   Product::where('category_id',$category)->where('name','LIKE','%'.$q.'%')->get();
        //     return view('fe.product',compact('products','q'));
        // }else {
        //     $products   =   Product::where('name','LIKE','%'.$q.'%')->get();
        //     return view('fe.product',compact('products','q'));
        // }
    }

    public function filter(Request $request)
    {
        $low    =   Product::orderBy('price','DESC')->where('stock','>',0)->get();
        $high   =   Product::orderBy('price','ASC')->where('stock','>',0)->get();
        $popular    =   Product::orderBy('visit','DESC')->where('stock','>',0)->get();
        return view('fe.product',compact('low','high','popular'));
    }

    public function byCategory(Request $request)
    {
        $category   =   $request->category;
        $products   =   Product::where('category_id',$category)->get();
        return view('fe.product',compact('products'));
    }
}
