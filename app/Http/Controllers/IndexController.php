<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category; 
use App\Product;
use App\Store;
use App\Promotion;
use App\LastSeen;
use App\Blog;

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

        // last seen
        if (auth()->check()) {
            LastSeen::create([
                'user_id' => auth()->user()->id,
                'product_id' => $detail->id
            ]);
        }

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

    // wish list
    public function wishlist(Request $request)
    {
        WishList::create([
            'product_id' => $request->product_id,
            'user_id' => auth()->user()->id
        ]);

        return response()->json([
            'status' => 'ok',
            'message' => 'berhasil menambah wishlist'
        ]);
    }

    // delete wish list
    public function destroyWishList($uuid)
    {
        WishList::where('user_id',auth()->user()->id)->where('uuid',$uuid)->delete();
      
        return response()->json([
            'status' => 'ok',
            'message' => 'berhasil menghapus wishlist'
        ]);
    }

    // list blogs
    public function blogs()
    {
        $blogs  =   Blog::latest()->paginate(9);
        return view('blogs',compact('blogs'));
    }

    // detail blog
    public function showBlog($slug)
    {
        $detail =   Blog::where('slug',$slug)->firstOrFail();
        return view('detail-blog',compact('detail'));
    }

}
