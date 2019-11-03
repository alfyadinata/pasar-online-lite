	<!-- Recently Viewed -->

	<div class="viewed">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="viewed_title_container">
						<h3 class="viewed_title">Terahir Di Lihat</h3>
						<div class="viewed_nav_container">
							<div class="viewed_nav viewed_prev"><i class="fas fa-chevron-left"></i></div>
							<div class="viewed_nav viewed_next"><i class="fas fa-chevron-right"></i></div>
						</div>
					</div>

					<div class="viewed_slider_container">
						
						<!-- Recently Viewed Slider -->

						<div class="owl-carousel owl-theme viewed_slider">
							@foreach($lastseen as $data)
								@php
									$product	=	\App\Product::where('id',$data->product_id)->first();

								@endphp
								<!-- Recently Viewed Item -->
								@if($product != null)
									<div class="owl-item">
										<div class="viewed_item d-flex flex-column align-items-center justify-content-center text-center">
											<div class="viewed_image"><img src="{{ asset('images/'.$product->foto) }}" alt=""></div>
											<div class="viewed_content text-center">
												<div class="viewed_price">{{ number_format($product->price,0,'',',') }}</div>
												<div class="viewed_name"><a href="{{ route('showProduct',$product->slug) }}">{{ $product->name }}</a></div>
											</div>
											<ul class="item_marks">
												<!-- <li class="item_mark item_discount">-25%</li>
												<li class="item_mark item_new">new</li> -->
											</ul>
										</div>
									</div>
								@endif
                            @endforeach
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>