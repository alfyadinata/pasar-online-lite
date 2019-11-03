<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Store;
use App\Category;
use App\User;
use App\Unit;
use App\helpers\Visitor;
use App\helpers\Logs;
use Alert;
use DataTables;

class ProductController extends Controller 
{
    public function __construct()
    {
        Visitor::create();
        if (auth()->check()) {
            if (Auth::user()->role_id == 4) {
                return redirect('/');
            }
        }
    }

    public function api()
    {
        $user   =   User::where('id',auth()->user()->id)->first();
        $store  =   Store::where('user_id',$user->id)->first();
        // dd($store);
        // get khusus seller
        if (auth()->user()->role_id == 3) {
            $products   =   Product::where('store_id',$store->id)->get();
            return DataTables::of($products)->addIndexColumn()
            ->addColumn('checker', function($row) {
                $checker = '<div class="custom-checkbox custom-control">
                                <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                                <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                            </div>';
                return $checker;
            } )
            ->addColumn('price', function($row) {
                $price  =   'Rp. '.number_format($row->price,0,'',',').'.00';
                return $price;
            })
            ->addColumn('action', function($row) {
                $btn    =   '<a href="'.route("eProduct",$row->uuid).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                                '<a href="'.route("delProduct",$row->uuid).'" class="delete btn btn-danger">
                                Hapus
                            </a>';
                return $btn;
            })->rawColumns(['action','price','checker'])->make(true);
        }else {
            $productAll =   Product::all();
            return DataTables::of($productAll)->addIndexColumn()
            ->addColumn('checker', function($row) {
                $checker = '<div class="custom-checkbox custom-control">
                                <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                                <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                            </div>';
                return $checker;
            })
            ->addColumn('price', function($row) {
                $price  =   'Rp. '.number_format($row->price,0,'',',').'.00';
                return $price;
            })
            ->addColumn('action', function($row) {
                $btn    =   '<a href="'.route("eProduct",$row->uuid).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                                '<a href="'.route("delProduct",$row->uuid).'" class="delete btn btn-danger">
                                Hapus
                            </a>';
                return $btn;
            })->rawColumns(['action','price','checker'])->make(true);
        }        
    }

    public function index()
    {
        return view('panel.product.index');
    }

    public function create()
    {
        $categories =   Category::where('is_product',1)->get();
        $units   =   Unit::orderBy('name','ASC')->get();
        return view('panel.product.create',compact('categories','units'));
    }

    public function store(Request $request)
    {
        // dd($request->all());
        if (auth()->user()->role_id != 3) {
            return abort(404);
        }
        $user   =   User::where('id',auth()->user()->id)->first();
        $store  =   Store::where('user_id',$user->id)->first();
        $product    =   new Product;
        try {
            $product->create([
                'name' => $request->name,
                'description'   =>  $request->description,
                'slug'  => str_slug($request->name).'-'.time(),
                'category_id'   =>  $request->category_id,
                'unit_id'   =>  $request->unit_id,
                'price' => $request->price,
                'store_id'  =>  $store->id,
                'qty' => $request->qty,
                'foto' => $request->file('foto')->store('product'),
                'foto_2' => $request->foto_2 == null ? null : $request->file('foto_2')->store('product'),
                'foto_3' => $request->foto_3 == null ? null : $request->file('foto_3')->store('product'),
            ]);
            Logs::store('Membuat Product '.$request->name);
            Alert::success('Berhasil Membuat Data.','Sukses')->autoclose(4500);
            return redirect()->route('iProduct');
        } catch (\Throwable $th) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
            return redirect()->back();
        }
    }

    public function edit($uuid)
    {
        $edit   =   Product::where('uuid',$uuid)->firstOrFail();
        $categories =   Category::where('is_product',1)->get();
        $units  =   Unit::orderBy('name','ASC')->get();
        return view('panel.product.edit',compact('edit','units','categories'));
    }

    public function update(Request $request,$uuid)
    {
        $product    =   Product::where('uuid',$uuid)->firstOrFail();
        try {
            $foto = $request->foto == null ? $product->foto : $request->file('foto')->store('product');
            $foto_2 = $request->foto_2 == null ? $product->foto_2 : $request->file('foto_2')->store('product');
            $foto_3 = $request->foto_3 == null ? $product->foto_3 : $request->file('foto_3')->store('product');
            $product->update([
                'name' => $request->name,
                'description'   =>  $request->description,
                'slug'  => str_slug($request->name).'-'.time(),
                'category_id'   =>  $request->category_id,
                'unit_id'   =>  $request->unit_id,
                'price' => $request->price,
                'qty' => $request->qty,
                'foto' => $foto,
                'foto_2' => $foto_2,
                'foto_3' => $foto_3,
            ]);
            Logs::store('Memperbarui Product '.$product->name.' id = '. $product->id);
            Alert::info('Berhasil Memperbarui Data.','Sukses')->autoclose(4500);
            return redirect()->route('iProduct');
        } catch (\Throwable $th) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
            return redirect()->back();
        }
    }

    public function destroy($uuid)
    {
        $product    =   Product::where('uuid',$uuid)->firstOrFail();
        $product->delete();
        Logs::store('Menghapus Product '.$product->name.' id = '. $product->id);
        Alert::info('Berhasil Menghapus Data.','Sukses')->autoclose(4500);
        return redirect()->back();
    }

    public function destroyMany(Request $request)
    {
        foreach ($request->checked as $key => $value) {
            $check = Product::where('uuid',$request->checked[$key])->first();
            if ($check != null) {
                $check->delete();
                Logs::store('Menghapus Product '.$check->name.' id = '. $check->id);
            }else {
                Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
                return redirect()->back();
            }
        }
        Alert::info('Berhasil Menghapus Data.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
