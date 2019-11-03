<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Promotion;
use App\helpers\Logs;
use Alert;
use DataTables;

class PromotionController extends Controller
{
    public function __construct()
    {
        Visitor::create();
        if (auth()->user()->role_id == 4) {
            return redirect('/');
        }
    }
    
    public function api()
    {
        $promotions =   Promotion::latest()->get();
        return DataTables::of($promotions)->addIndexColumn()
        ->addColumn('checker', function($row) {
            $checker = '<div class="custom-checkbox custom-control">
                            <input type="checkbox" name="checked[]" value="'. $row->uuid.'" class="checks form-control">
                            <label for="checkbox-'.$row->uuid.'" class="custom-control-label">&nbsp;</label>
                        </div>';
            return $checker;
        } )
        ->addColumn('product', function($row) {
             $product = "Beta Test"; 
            // $p  =   \App\Product::where('id',$row->product_id)->first();
            // dd($p);
            // $product0    =   \App\Product::where('id',$row)->first();
            // $product    =   $p->name == null ? 'Ha' : $p->name;
            // dd($product);
            return $product;
        } )
        ->addColumn('start', function($row) {
            $start = $row->start;
            return $start;
        } )
        ->addColumn('finish', function($row) {
            $finish = $row->finish == null ? 'Sekarang' : $row->finish;
            return $finish;
        } )
        ->addColumn('action', function($row) {
            $btn    =   '<a data-href="'.route("eCashier",$row->uuid).'" class="openPopupEdit btn btn-primary">Edit</a> || '.
                            '<a href="'.route("delCashier",$row->uuid).'" class="delete btn btn-danger">
                            Hapus
                        </a>';
            return $btn;
        })->addColumn('status', function($row) {
            $checker = $row->active == 1 ? 'Aktif' : 'Non-Aktif';
            return $checker;
        } )->rawColumns(['action','status','product','checker'])->make(true);
    }
    public function index()
    {
        $promotions =   Promotion::latest()->get();
        return view('panel.promotion.index',compact('promotions'));
    }
    
    public function store(Request $request)
    {
        $promotion  =   new Promotion;
        $productId  =   Product::where('slug',$request->slug)->first();
        $latest =   Promotion::latest()->first();
        try {
            $request['product_id']  =   $productId->id;
            $request['user_id'] =   auth()->user()->id;
            $request['start']   =   date('d M Y');   
            $promotion->create($request->all());
            if ($latest != null) {
                $latest->update([
                    'finish' => date('d M Y')
                ]);
            }

            Logs::store(auth()->user()->email. ' Membuat Promosi Produk, slug produk : '. $request->slug);

            Alert::success('Berhasil Membuat Data','Sukses')->autoclose(4500);
            return redirect()->back();
        } catch (\Throwable $th) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
            return redirect()->back();
        }
    }

    public function edit($uuid)
    {
        $edit   =   Promotion::where('uuid',$uuid)->first();
        return view('panel.promotion.edit',compact('edit'));
    }

    public function update(Request $request, $uuid)
    {
        $promotion  =   Promotion::where('uuid',$uuid)->firstOrFail();   
        try {
            $promotion->update($request->all());
            Logs::store(auth()->user()->email. ' Memperbarui Promosi Produk, slug produk : '. $request->slug);
            Alert::success('Berhasil Memperbarui Data.','Sukses')->autoclose(4500);
            return redirect()->back();
        } catch (\Throwable $th) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
            return redirect()->back();
        }
    }

    public function destroy($uuid)
    {
        $promotion   =   Promotion::where('uuid',$uuid)->firstOrFail();
        $promotion->delete();
        Logs::store('Menghapus Promosi Produk '. $promotion->id);
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
            $data   =   Promotion::where('uuid',$request->checked[$key])->firstOrFail();
            $data->delete();
            Logs::store('Menghapus Promosi Produk '. $data->id);
        }

        Alert::info('Data Terpilih Berhasil Di Hapus.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
