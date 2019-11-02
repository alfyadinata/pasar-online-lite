@extends('layouts.fe.index')
@section('css')

<!-- <link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/product_styles.css')}}">
<link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/product_responsive.css')}}"> -->
<link rel="stylesheet" type="text/css" href="{{ asset('fe/plugins/jquery-ui-1.12.1.custom/jquery-ui.css')}}">
<link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/shop_styles.css')}}">
<link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/shop_responsive.css')}}">
@stop
@section('content')
    <hr/>
    <div class="single_product">
		<div class="container">
			<div class="row">
                <div class="container">
                    <h4>{{ $detail->name }}</h4>
                    <h3>Pemilik : {{ $detail->user->name }}</h3>
                    <h3>No Telpon : {{ $detail->phone_number }}</h3>
                    <hr/>
                    <div class="container">
                        <h4>Produk :</h4>
                        <br/>

						<div class="product_grid">
							<div class="product_grid_border"></div>
                                @foreach($products as $data)
                                    <!-- Product Item -->
                                    <div class="product_item">
                                        <div class="product_border"></div>
                                        <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset('images/'.$data->foto) }}" alt=""></div>
                                        <div class="product_content">
                                            <div class="product_price">Rp. {{ number_format($data->price,0,'',',') }}.00</div>
                                            <div class="product_name"><div><a href="{{ route('showProduct',$data->slug) }}" tabindex="0">{{ $data->name }}</a></div></div>
                                        </div>
                                        <div class="product_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                @endforeach
                        </div>
                        
                        {{ $products->links() }}

                    </div>
                </div>

			</div>
		</div>
	</div>



@stop


@section('js')
<script src="{{ asset('fe/plugins/OwlCarousel2-2.2.1/owl.carousel.js') }}"></script>
<script src="{{ asset('fe/plugins/easing/easing.js') }}"></script>
<script src="{{ asset('fe/plugins/Isotope/isotope.pkgd.min.js') }}"></script>
<script src="{{ asset('fe/plugins/jquery-ui-1.12.1.custom/jquery-ui.js') }}"></script>
<script src="{{ asset('fe/plugins/parallax-js-master/parallax.min.js') }}"></script>
<script src="{{ asset('fe/js/shop_custom.js') }}"></script>
@stop