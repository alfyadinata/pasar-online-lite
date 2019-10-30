<nav class="main_nav">
	<div class="container">
		<div class="row">
			<div class="col">
				
				<div class="main_nav_content d-flex flex-row">

					<!-- Categories Menu -->

					<div class="cat_menu_container">
						<div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
							<div class="cat_burger"><span></span><span></span><span></span></div>
							<div class="cat_menu_text">Kategori</div>
						</div>

						<ul class="cat_menu">
							@foreach(\App\Category::where('is_product',1)->latest()->Limit(6)->get() as $data)
								<li><a href="#">{{ $data->name }} <i class="fas fa-chevron-right"></i></a></li>
							@endforeach
						</ul>
					</div>

					<!-- Main Nav Menu -->

					<div class="main_nav_menu ml-auto">
						<ul class="standard_dropdown main_nav_dropdown">
							<li><a href="index.html">Home<i class="fas fa-chevron-down"></i></a></li>
							<li class="hassubs">
								<a href="#">Pages<i class="fas fa-chevron-down"></i></a>
								<ul>
									<li><a href="cart.html">Cart<i class="fas fa-chevron-down"></i></a></li>
									<li><a href="contact.html">Contact<i class="fas fa-chevron-down"></i></a></li>
								</ul>
							</li>
							<li><a href="{{ url('blogs') }}">Blog<i class="fas fa-chevron-down"></i></a></li>
							<li><a href="contact.html">Contact<i class="fas fa-chevron-down"></i></a></li>
						</ul>
					</div>

					<!-- Menu Trigger -->

					<div class="menu_trigger_container ml-auto">
						<div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
							<div class="menu_burger">
								<div class="menu_trigger_text">menu</div>
								<div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</nav>