<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use Alert;

class AuthController extends Controller
{
    // 1 = superadmin
    // 2 = kasir
    // 3 = pedagang
    // 4 = pembeli
    public function register(Request $request)
    {
        $this->validate($request,[
            'name' => 'required|string|min:6',
            'password' =>'required|string|min:6',
            'email' => 'required|string|email',
        ]);

        $user = User::create([
            'name' => $request->name,
            'password' => bcrypt($request->password),
            'email' =>  $request->email,
            'active' => 1,
            'phone_number' => $request->phone_number,
            'role_id' => 4,
        ]);
        if ($user) {
            alert()->success('Berhasil Membuat Akun','Sukses !')->autoclose(4500);
            return redirect('login');
        }else {
            alert()->error('Ada Kesalahan.','Gagal !')->autoclose(4500);
            return redirect()->back();
        }
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
            if (\Auth::attempt(['email' => $email,'password' => $password])) {
                if ($check->role_id == 4) {
                    alert()->info('Selamat Datang '. $check->name,'Login Berhasil.')->autoclose(4500);
                    return redirect('/');
                }elseif ($check->role_id == 3) {
                    alert()->info('Selamat Datang '. $check->name,'Login Berhasil.')->autoclose(4500);
                    return redirect('/panel');
                }elseif ($check->role_id == 2) {
                    alert()->info('Selamat Datang '. $check->name,'Login Berhasil.')->autoclose(4500);
                    return redirect('/panel');
                }elseif ($check->role_id == 1) {
                    alert()->info('Selamat Datang '. $check->name,'Login Berhasil.')->autoclose(4500);
                    return redirect('/panel/category');
                }else {
                    alert()->error('Ada Kesalahan','Gagal !')->autoclose(4500);                
                    return redirect()->back()->withInput();
                }
            }elseif ($check->active == 0) {
                alert()->error('Akun Di Non-Aktifkan','Gagal !')->autoclose(4500);                
                return redirect()->back()->withInput();
            }
            else {
                alert()->error('Email Atau Password Salah.','Gagal !')->autoclose(4500);                
                return redirect()->back()->withInput();
            }
        }else {
            alert()->error('Tidak Ada Email Yang Cocok.','Gagal !')->autoclose(4500);
            return redirect()->back()->withInput();
        }
    }

}
