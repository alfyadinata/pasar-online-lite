<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Alert;

class CashierController extends Controller
{
    public function index()
    {
        $cashiers   =   User::where('role_id',2)->get();
        return view('panel.cashier.index',compact('cashiers'));
    }    

    public function create()
    {
        return view('panel.cashier.create');
    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required|string',
            'email' => 'email',
            'password' => 'required'
        ]);
        
        foreach ($request->name as $key => $value) {
            $check  =   User::where('email',$request->email[$key])->first();    
            if ($check == null ) {
                Alert::error('Ada Data Yang Sama.','Gagal')->autoclose(4500);
            }
            
            User::create([
                'name' => $request->name[$key],
                'email' => $request->email[$key],
                'password' => $request->password[$key],
                'role_id'   => 2                
            ]);

        }

        return Alert::success('Berhasil Membuat Data','Sukses')->autoclose(4500);

    }
}
