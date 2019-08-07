<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Config;
use Alert;

class ConfigController extends Controller
{
    public function index()
    {
        $config =   Config::first();
        return view('panel.config.index',compact('config'));
    }

    public function update(Request $request)
    {
        $config =   Config::firstOrCreate([
            'app_name'  =>  $request->app_name,
            'logo'  => $request->logo,
            'logo_2'    =>  $request->logo_2,
            'phone_number'  =>  $request->phone_number,
            'address'   => $request->address,
            'email' =>  $request->email,
            'facebook'  =>  $request->facebook,
            'instagram' =>  $request->instagram,
            'slogan'    =>  $request->slogan,
        ]);
        Alert::info('Berhasil Memperbarui Data.','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
