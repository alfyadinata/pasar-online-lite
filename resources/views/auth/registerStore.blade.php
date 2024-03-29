@extends('layouts.app')
@section('title','Buat Toko')

@section('content')
    <div >
        <div class="main-page login-page ">
            <div class="widget-shadow">
                <div class="login-top" >
                    <h4> SELAMAT DATANG DI PASAR ONLINE! <br></a></h4>
                </div>
                <div class="login-body">
                    <form method="POST" onsubmit="return confirm('Anda yakin ingin kehilangan akses sebagai pelanggan ?');" action="{{ route('regStore') }}">
                        @csrf
                        <input type="text" class="store" value="{{ old('name') }}" name="store" placeholder="Nama Toko" required="">
                        <input type="text" class="address" value="{{ old('address') }}" name="address" placeholder="Alamat Pemilik Toko" required="">
                        <input type="text" class="phone" value="{{ old('phone_number') }}" name="phone_number" placeholder="No Telpon" required="">
                        <div class="forgot-grid">
                            <label class="checkbox"><input type="checkbox" name="checkbox" required><i></i>Saya Menyetujui Syarat & Ketentuan aplikasi ini.</label>
                        </div>
                        <input  type="submit" name="" value="Submit">
                            <div class="clearfix"> </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@stop