<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\helpers\Visitor;
use App\helpers\Logs;
use App\Promotion;
use App\Store;
use Alert;

class PromotionProductController extends Controller
{
    public function index()
    {
        return view('panel.promotion.index');
    }

    public function filter(Request $request)
    {
        $q      =   $request->get('q');
        $store  =   Store::where('name','LIKE','');
    }

    public function store(Request $request)
    {
        if ($request->product_id == null) {
            Alert::error('Ada Kesalahan.','Gagal')->autoclose(4500);
            return redirect()->back();
        }

        $promotion  =   new Promotion;
        $request['user_id'] =   auth()->user()->id;
        foreach ($request->product_id as $key => $value) {
            $promotion->create($request->all()[$key]);
            Logs::store('Membuat Promosi Produk. id = '.$request->product_id[$key]);
        }
    }
}
