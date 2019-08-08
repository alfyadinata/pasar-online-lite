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
                        <input type="text" class="user" value="{{ old('email') }}" name="email" placeholder="Enter your email" required="">
                        <input type="password" name="password" class="lock" placeholder="Password">
                        <input  type="submit" name="Sign In" value="Sign In">
                        <div class="forgot-grid">
                            <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Remember me</label>
                            <div class="forgot">
                                <a href="#">Forgot password? </a> 
                                <a href="signup.html">Sign Up</a>
                            </div>
                        </div>
                            <div class="clearfix"> </div>
                            <!-- </div> -->
                    </form>
                </div>
            </div>
        </div>
    </div>
@stop