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
        $stores     =   Store::latest()->get();
        return view('index',compact('products','promotions','stores'));
    }

    public function showProduct($slug)
    {
        $detail    =   Product::where('slug',$slug)->firstOrFail();
        $detail->visit += 1;
        $detail->save();
        // dd($detail);
        return view('detail-product',compact('detail'));
    }

    public function showStore($slug)
    {
        $detail =   Store::where('slug',$slug)->firstOrFail();
        
    }

    public function search(Request $request)
    {
        $q  =   $request->get('q');
        $products    =   Product::latest()->get();
        // dd($products);

        return view('product',compact('products'));
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
