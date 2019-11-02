@extends('layouts.app')
@section('title','Register Page')

@section('content')
    <div >
        <div class="main-page login-page ">
            <div class="widget-shadow">
                <div class="register-top">
                    <h4>SELAMAT DATANG DI PASLINE!</h4>
                </div>
                <div class="register-body">
                       <form method="POST" action="{{ route('register') }}" >
                        @csrf
                        
                        <input type="text" class="user" value="{{ old('name') }}" autocomplete = "off" name="name" placeholder="Full Name" required="">
                        <input type="text" class="email" value="{{ old('email') }}" autocomplete = "off" name="email" placeholder="Email" required="">
                        <input type="text" class="phone" value="{{ old('phone_number') }}" name="phone_number" placeholder="Phone Number">
                        <input type="password" name="password" class="lock" placeholder="Password">
                        <input type="password" name="password" class="lock" placeholder="Re-password">
                        <input type="submit" name="Sign In" value="Register">
                        <div class="forgot-grid">
                            <div class="clearfix"> </div>
                        </div>
                        <a href="{{ url('login') }}">Sign In</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
@stop