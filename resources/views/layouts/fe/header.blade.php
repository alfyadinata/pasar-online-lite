@php 
	$config	=	\App\Config::first();
@endphp

<div class="top_bar">
    <div class="container">
        <div class="row">
            <div class="col d-flex flex-row">
                <div class="top_bar_contact_item"><div class="top_bar_icon"><img src="{{ asset('fe/images/phone.png')}}" alt=""></div>{{ $config->phone_number }}</div>
                <div class="top_bar_contact_item"><div class="top_bar_icon"><img src="{{ asset('fe/images/mail.png')}}" alt=""></div><a href="mailto:{{ $config->email }}">{{ $config->email }}</a></div>
                <div class="top_bar_content ml-auto">
                    <!-- <div class="top_bar_menu">
                        <ul class="standard_dropdown top_bar_dropdown">
                            <li>
                                <a href="#">English<i class="fas fa-chevron-down"></i></a>
                                <ul>
                                    <li><a href="#">Italian</a></li>
                                    <li><a href="#">Spanish</a></li>
                                    <li><a href="#">Japanese</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">$ US dollar<i class="fas fa-chevron-down"></i></a>
                                <ul>
                                    <li><a href="#">EUR Euro</a></li>
                                    <li><a href="#">GBP British Pound</a></li>
                                    <li><a href="#">JPY Japanese Yen</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div> -->
                    <div class="top_bar_user">
                        @if(auth()->check())
                        <form action="{{ route('logout') }}" method="post">
                                @csrf
                            <button class="btn btn-default">Logout</button>
                            <div><a href="{{ url('store-register') }}" class="btn btn-default">Buat Toko</a></div>
                        </form>
                        @else
                        <div class="user_icon"><img src="{{ asset('fe/images/user.svg')}}" alt=""></div>
                            <div><a href="{{ url('register') }}">Register</a></div>
                            <div><a href="{{ url('login') }}">Sign in</a></div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>		
</div>

<!-- Header Main -->

<div class="header_main">
    <div class="container">
        <div class="row">
            <!-- Logo -->
            <div class="col-lg-2 col-sm-3 col-3 order-1">
                <div class="logo_container">
                    <div class="logo"><a href="{{ url('/') }}"><img src="{{ asset('logo.png') }}" alt="" style="width:45%;"></a></div>
                </div>
            </div>

            <!-- Search -->
            <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
                <div class="header_search">
                    <div class="header_search_content">
                        <div class="header_search_form_container">
                            <form action="{{ route('search') }}" class="header_search_form clearfix">
                                <input type="search" name="q" required="required" class="header_search_input" placeholder="Cari Produk ...">
                                <div class="custom_dropdown">
                                    <div class="custom_dropdown_list">
                                        <span class="custom_dropdown_placeholder clc">All Categories</span>
                                        <i class="fas fa-chevron-down"></i>
                                        <ul class="custom_list clc">
                                            <li><a class="clc" href="#">All Categories</a></li>
                                            <li><a class="clc" href="#">Computers</a></li>
                                            <li><a class="clc" href="#">Laptops</a></li>
                                            <li><a class="clc" href="#">Cameras</a></li>
                                            <li><a class="clc" href="#">Hardware</a></li>
                                            <li><a class="clc" href="#">Smartphones</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <button type="submit" class="header_search_button trans_300" value="Submit"><img src="{{ asset('fe/images/search.png')}}" alt=""></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Wishlist -->
            <div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
                <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
                    <div class="wishlist d-flex flex-row align-items-center justify-content-end">
                        <div class="wishlist_icon"><img src="{{ asset('fe/images/heart.png')}}" alt=""></div>
                        <div class="wishlist_content">
                            <div class="wishlist_text"><a href="#">Wishlist</a></div>
                            <div class="wishlist_count">115</div>
                        </div>
                    </div>

                    <!-- Cart -->
                    <div class="cart">
                        <div class="cart_container d-flex flex-row align-items-center justify-content-end">
                            <div class="cart_icon">
                                <img src="{{ asset('fe/images/cart.png')}}" alt="">
                                    @if(auth()->check())
                                        <div class="cart_count"><span>{{ \App\Cart::where('user_id',auth()->user()->id)->where('status',0)->count() }}</span></div>
                                        @else
                                        <div class="cart_count"><span>0<span></div>                                        
                                    @endif
                            </div>
                            <div class="cart_content">
                                <div class="cart_text"><a href="{{ url('cart') }}">Cart</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>