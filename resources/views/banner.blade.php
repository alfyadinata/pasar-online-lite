@php 
	$promo	=	App\Promotion::latest()->first();
@endphp
<form action="{{ route('postCart') }}" onsubmit="return confirm('Masukan Ke Cart ?');" method="post">
	@csrf 
	<input name="qty" type="hidden" value="1">
	<input name="product_id" type="hidden" value="{{ $promo->product->id }}">
	<div class="banner">
		<div class="banner_background" style="background-image:url({{ asset('images/'.$promo->product->foto) }})"></div>
		<div class="container fill_height">
			<div class="row fill_height">
				<!-- <div class="banner_product_image"><img src="{{ asset('images/'.$promo->product->foto) }}" alt=""></div> -->
				<div class="col-lg-5 offset-lg-4 fill_height">
					<div class="banner_content">
						<h1 class="banner_text">{{ $promo->message }}</h1>
						<div class="banner_price">Rp. {{ number_format($promo->product->price,0,'',',') }}.00</div>
						<!-- <div class="banner_product_name" style="color:blue;">{{ $promo->product->name }}</div> -->
						<button class="btn btn-primary">
							Masukan ke Cart
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
	<hr/>