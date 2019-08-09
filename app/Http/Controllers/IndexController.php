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

        if ( $category != null) {
            $products   =   Product::where('category_id',$category)->where('name','LIKE','%'.$q.'%')->get();
            return view('fe.product',compact('products'));
        }else {
            $products   =   Product::where('name','LIKE','%'.$q.'%')->get();
            return view('fe.product',compact('products'));
        }
    }

    public function filter(Request $request)
    {
        
    }
}
