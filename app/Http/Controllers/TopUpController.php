<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Saldo;
use App\User;
use Alert;
use App\helpers\Logs;
use App\helpers\Visitor;

class TopUpController extends Controller
{
    public function __construct()
    {
        Visitor::create();
        if (auth()->user()->role_id == 4) {
            return redirect('/');
        }
    }
    
    public function index()
    {
        return view('panel.top-up.index');
    }

    public function update(Request $request)
    {
        $user   =   User::where('email',$request->email)->firstOrFail();
        $saldo  =   Saldo::where('user_id',$user->id)->first();
        $saldo->update([
            'saldo' => $saldo->saldo + $request->nominal
        ]);
        Logs::store('melakukan top up ke akun :'.$user->email.', nominal : '.$request->nominal);
        Alert::info('Berhasil Melakukan Top Up','Sukses')->autoclose(4500);
        return redirect()->back();
    }
}
