<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category; 
use App\Product;
use App\Store;
use App\Promotion;
use App\LastSeen;
use App\Blog;
use DB;

class IndexController extends Controller
{
    public function index()
    {
        $products    =   Product::latest()->Limit(20)->get();
        $lastseen   =   [];
        if (auth()->check()) {
            $lastseen    =  DB::table('last_seens')->where('user_id',auth()->user()->id)->Limit(5)->latest()->distinct('product_id')->get();
        }
        $stores     =   Store::latest()->get();
        return view('index',compact('products','promotions','stores','lastseen'));
    }

    public function showProduct($slug)
    {
        $detail    =   Product::where('slug',$slug)->firstOrFail();
        $detail->visit += 1;

        // last seen
        if (auth()->check()) {
            $last   =   LastSeen::where('user_id',auth()->user()->id)->where('product_id',$detail->id)->latest()->Limit(15)->first();
            if ($last == null) {
                LastSeen::create([
                    'user_id' => auth()->user()->id,
                    'product_id' => $detail->id
                ]);
            }
        }
        $detail->save();
        return view('detail-product',compact('detail'));
    }

    public function showStore($slug)
    {
        $detail =   Store::where('slug',$slug)->firstOrFail();
        $products   =   Product::where('store_id',$detail->id)->latest()->paginate(15);
        return view('show-store',compact('detail','products'));
        
    }

    public function search(Request $request)
    {
        $q  =   $request->get('q');
        $search =   [];

        $search    =   Product::where('name','like', '%'.$q.'%')->orderBy('id','DESC')->paginate(15);
        // if ($search == "") {
        //     $search =   Store::where('name','like', '%'.$q.'%')->orderBy('id','DESC')->paginate(3);
        // }
        // dd($search);


        $total      =   Product::where('name','like', '%'.$q.'%')->count();
        $categories =   Category::where('is_product',1)->get();
        // dd($search);
        return view('search',compact('search','total','categories','q'));
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
    
    // product by category
    public function filterByCategory($slug)
    {
        $q   =   Category::where('slug',$slug)->firstOrFail();
        $search   =   Product::where('category_id',$q->id)->paginate(15);
        $total   =   Product::where('category_id',$q->id)->count();
        $categories =   Category::where('is_product',1)->get();
        $q  =   $q->name;
        return view('search',compact('search','q','total','categories'));
    }
}
