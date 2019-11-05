@extends('layouts.fe.index')
@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('fe/plugins/jquery-ui-1.12.1.custom/jquery-ui.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/shop_styles.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/shop_responsive.css')}}">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
@stop 

@section('content')

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/shop_background.jpg"></div>
		<div class="home_overlay"></div>
		<div class="home_content d-flex flex-column align-items-center justify-content-center">
			<h2 class="home_title">Hasil untuk "{{ $q }}"</h2>
		</div>
	</div>

	<!-- Shop -->

	<div class="shop">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">

					<!-- Shop Sidebar -->
					<div class="shop_sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">Kategori</div>
							<ul class="sidebar_categories">
                                @foreach($categories as $data)
    								<li><a href="{{ route('filterByCategory',$data->slug) }}">{{ $data->name }}</a></li>
                                @endforeach
							</ul>
						</div>
					</div>

				</div>

				<div class="col-lg-9">
					
					<!-- Shop Content -->

					<div class="shop_content">
						<div class="shop_bar clearfix">
							<div class="shop_product_count"><span>{{ $total }}</span> Produk Ditemukan</div>
							<div class="shop_sorting">
								<span>Sortir :</span>
								<ul>
									<li>
										<span class="sorting_text">default<i class="fas fa-chevron-down"></span></i>
										<ul>
											<!-- <li class="shop_sorting_button" data-isotope-option='{ "sortBy": "original-order" }'>highest rated</li> -->
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "name" }'>name</li>
											<li class="shop_sorting_button"data-isotope-option='{ "sortBy": "price" }'>price</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>

						<div class="product_grid">
							<div class="product_grid_border"></div>
                                @foreach($search as $data)
                                    <!-- Product Item -->
                                    <div class="product_item">
                                        <div class="product_border"></div>
                                        <div class="product_image d-flex flex-column align-items-center justify-content-center"style="padding:4px;"><img src="{{ asset('images/'.$data->foto) }}"></div>
                                        <div class="product_content">
                                            <div class="product_price">{{ number_format($data->price,0,'',',') }}.00</div>
                                            <div class="product_name"><div><a href="{{ route('showProduct',$data->slug) }}" tabindex="0">{{ $data->name }}</a></div></div>
                                        </div>
										<a data-href="{{ route('postWishList',$data->id) }}" class="wishList"><div class="product_fav"><i class="fas fa-heart wishQ"></i></div></a>
                                    </div>
                                @endforeach

						</div>

                        {{ $search->links() }}
                        						<!-- Shop Page Navigation -->

						<!-- <div class="shop_page_nav d-flex flex-row">
							<div class="page_prev d-flex flex-column align-items-center justify-content-center"><i class="fas fa-chevron-left"></i></div>
							<ul class="page_nav d-flex flex-row">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">...</a></li>
								<li><a href="#">21</a></li>
							</ul>
							<div class="page_next d-flex flex-column align-items-center justify-content-center"><i class="fas fa-chevron-right"></i></div>
						</div>
					</div> -->

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
<script>
    // ajax wishList
    $(document).on('click', '.wishList', function() { 
            var dataURL = $(this).attr('data-href');
			$.ajax({
					// data: data,
					type: "GET",
					url: dataUrl,
					success: function(data){
						alert("Data Save: " + data);
					}
			});
            // $('.modal-body').load(dataURL,function(){
            //     $('#myModalEdit').modal({show:true});
            // });
	    });
	});
</script>


@stop