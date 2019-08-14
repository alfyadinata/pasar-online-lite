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
                       <form method="POST" action="{{ route('register') }}">
                        @csrf
                        
                        <input type="text" class="user" value="{{ old('name') }}" name="name" placeholder="Full Name" required="">
                        <input type="text" class="user" value="{{ old('email') }}" name="email" placeholder="Email" required="">
                        <input type="text" class="phone" value="{{ old('phone_number') }}" name="phone_number" placeholder="Phone Number">
                        <input type="password" name="password" class="lock" placeholder="Password">
                        <input type="password" name="password" class="lock" placeholder="Re-password">
                        <input type="submit" name="Sign In" value="Sign In">
                        <div class="forgot-grid">
                            <div class="clearfix"> </div>
                        </div>
                        <a href="signup.html">Sign Up</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
@stop