@extends('layouts.fe.index')
@section('css')

<link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/product_styles.css')}}">
<link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/product_responsive.css')}}">

@stop
@section('content')
    <div class="single_product">
		<div class="container">
			<div class="row">

				<!-- Images -->
				<div class="col-lg-2 order-lg-1 order-2">
					<ul class="image_list">
						<li data-image="{{ asset('images/'.$detail->foto) }}"><img src="{{ asset('images/'.$detail->foto) }}" alt="{{ $detail->name }}"></li>
						@if($detail->foto_2 != null)
							<li data-image="{{ asset('images/'.$detail->foto_2) }}"><img src="{{ asset('images/'.$detail->foto_2) }}" alt="{{ $detail->name }}"></li>
						@endif
						@if($detail->foto_3 != null)
							<li data-image="{{ asset('images/'.$detail->foto_3) }}"><img src="{{ asset('images/'.$detail->foto_3) }}" alt="{{ $detail->name }}"></li>
						@endif
					</ul>
				</div>

				<!-- Selected Image -->
				<div class="col-lg-5 order-lg-2 order-1">
					<div class="image_selected"><img src="{{ asset('images/'.$detail->foto) }}" alt="{{ $detail->name }}"></div>
				</div>

				<!-- Description -->
				<div class="col-lg-5 order-3">
					<div class="product_description">
						<div class="product_category">{{ $detail->visit }} kali dilihat</div>
						<div class="product_name">{{ $detail->name }}</div>
						<div class="rating_r rating_r_4 product_rating"><i></i><i></i><i></i><i></i><i></i></div>
						<div class="product_text"><p>{{ $detail->description }}</p></div>
						<div class="order_info d-flex flex-row">
							<form action="{{ route('postCart') }}" method="POST">
								@csrf
								<div class="clearfix" style="z-index: 1000;">
									<!-- Product Quantity -->
									<div class="product_quantity clearfix">
										<span>Quantity : </span>
										<input id="quantity_input" name="qty" min="1" max="{{ $detail->qty }}" type="number" value="1">
										<div class="quantity_buttons">
											<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
											<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
											<input type="hidden" name="product_id" value="{{ $detail->id }}">
										</div>
									</div><br/>
									<div class="clearfix">
										<label for="message">Catatan untuk Penjual (Opsional)</label>
										<textarea name="message" id="message" rows="3" class="form-control"></textarea>
									</div>

									<!-- Product Color -->
									<!-- <ul class="product_color">
										<li>
											<span>Color: </span>
											<div class="color_mark_container"><div id="selected_color" class="color_mark"></div></div>
											<div class="color_dropdown_button"><i class="fas fa-chevron-down"></i></div>

											<ul class="color_list">
												<li><div class="color_mark" style="background: #999999;"></div></li>
												<li><div class="color_mark" style="background: #b19c83;"></div></li>
												<li><div class="color_mark" style="background: #000000;"></div></li>
											</ul>
										</li>
									</ul> -->

								</div>

								<div class="product_price">Rp. {{ number_format($detail->price,0,'',',') }}.00</div>
								<div class="button_container">
									<button class="button cart_button">Add to Cart</button>
									<div class="product_fav" onclick="return addWL();"><i class="fas fa-heart"></i></div>
								</div>
								
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>



@stop


@section('js')
<script src="{{ asset('fe/plugins/OwlCarousel2-2.2.1/owl.carousel.js')}}"></script>
<script src="{{ asset('fe/plugins/easing/easing.js')}}"></script>
<script src="{{ asset('fe/js/custom.js')}}"></script>
	<script>
		
	</script>

@stop