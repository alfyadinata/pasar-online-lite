@extends('layouts.app')
@section('title','Login Page')

@section('content')
    <div >
        <div class="main-page login-page ">
            <div class="widget-shadow">
                <div class="login-top" >
                    <h4> SELAMAT DATANG DI PASAR ONLINE! <br></a></h4>
                </div>
                <div class="login-body">
                    <form method="POST" action="{{ route('postLogin') }}">
                        @csrf
                        <input type="text" class="user" value="{{ old('email') }}" name="name" placeholder="Nama Toko" required="">
                        <input type="text" class="user" value="{{ old('address') }}" name="address" placeholder="Alamat Pemilik Toko" required="">
                        <input type="text" class="user" value="{{ old('address') }}" name="phone_number" placeholder="No Telpon" required="">
                        <div class="forgot-grid">
                            <label class="checkbox"><input type="checkbox" name="checkbox" required><i></i>Remember me</label>
                        </div>
                        <input  type="submit" name="" value="Submit">
                            <div class="clearfix"> </div>
                            <!-- </div> -->
                    </form>
                </div>
            </div>
        </div>
    </div>
@stop