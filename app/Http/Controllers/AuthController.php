<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use App\Store;
use Alert;
use App\Saldo;
class AuthController extends Controller
{
    // 1 = superadmin
    // 2 = kasir
    // 3 = pedagang
    // 4 = pembeli 
    public function register(Request $request)
    {
        try {
            $user = User::create([
                'name' => $request->name,
                'password' => bcrypt($request->password),
                'email' =>  $request->email,
                'active' => 1,
                'phone_number' => $request->phone_number,
                'role_id' => 4,
            ]);
            // generate saldo
            Saldo::create([
                'user_id' => $user->id,
                'saldo' =>  1000,
            ]);            
            alert()->message('Berhasil Membuat Akun','Sukses !')->autoclose(4500);
            return redirect('login');
        } catch (\Throwable $th) {
            alert()->error('Ada Kesalahan.','Gagal !')->autoclose(4500);
            return redirect()->back();        }
    }

    public function login(Request $request)
    {
        $this->validate($request,[
            'email' => 'required|email',
            'password' => 'required'
        ]);
        $email  =   $request->get('email');
        $password = $request->get('password');
        $check  =   User::where('email',$email)->first();
        if ($check != null) {
            if ($check->role_id == 3) {
                if ($check->active == 0) {
                    alert()->error('Akun Tidak Aktif.','Gagal.')->autoclose(4500);
                    return redirect()->back();                    
                }
            }
            if (\Auth::attempt(['email' => $email,'password' => $password])) {
                if ($check->role_id == 4) {
                    alert()->message('Selamat Datang '. $check->name,'Login Berhasil.')->autoclose(4500);
                    return redirect('/');
                } elseif ($check->role_id < 5 && $check->role_id != 4) {
                    alert()->message('Selamat Datang '. $check->name,'Login Berhasil.')->autoclose(4500);
                    return redirect('/panel/dashboard');
                } else {
                    alert()->error('Ada Kesalahan','Gagal !')->autoclose(4500);
                    return redirect()->back()->withInput();
                }
            }elseif ($check->active == 0) {
                alert()->error('Akun Di Non-Aktifkan','Gagal !')->autoclose(4500);                
                return redirect()->back()->withInput();
            }else {
                alert()->error('Ada Kesalahan.','Gagal !')->autoclose(4500);                
                return redirect()->back()->withInput();
            }
        }else {
            alert()->error('Email Atau Password Salah.','Gagal !')->autoclose(4500);
            return redirect()->back()->withInput();
        }
    }

    public function getStoreRegister()
    {
        return view('auth.registerStore');
    }

    public function postStoreRegister(Request $request)
    {
        // dd(time());
        $store  =   new Store;
        try {
            $request['slug']    =   str_slug($request->name.'-'.time());
            $request['user_id'] =   auth()->user()->id;
            $request['name']    =   $request->store;
            if ($store->create($request->all())) {
                $user   =   User::where('id',auth()->user()->id)->first();
                $user->update([
                    'role_id' => 3,
                    'active' => 0
                ]);
                Auth::logout();
                Alert::info('Berhasil Membuat Toko. Silahkan Contact Admin','Sukses')->autoclose(4500);
                return redirect('/');
            }
        } catch (\Throwable $th) {
            alert()->error('Ada Kesalahan. '.$th,'Gagal !')->autoclose(4500);
            return redirect()->back()->withInput();
        }
    }

}
