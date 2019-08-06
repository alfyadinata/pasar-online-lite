<div class=" sidebar" role="navigation">
	<div class="navbar-collapse">
		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
				<ul class="nav in" id="side-menu">
				@if(auth()->check())
					@if(auth()->user()->role_id == 1)
						<li>
							<a href="index.html"><i class="fa fa-home nav_icon"></i>Dashboard</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-cogs nav_icon"></i>Post<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="{{ route('iCategory') }}"><i class="fa fa-table nav_icon"></i>Category</a>
								</li>
								<li>
									<a href="{{ route('iBlog') }}"><i class="fa fa-table nav_icon"></i>Blog</a>
								</li>
							</ul>
							<!-- /nav-second-level -->
						</li>
						<li>
							<a href="#"><i class="fa fa-envelope nav_icon"></i>User<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="{{ route ('iCashier')}}"><i class="fa fa-table nav_icon"></i>Cashier</a>
								</li>
								<li>
									<a href="compose.html"><i class="fa fa-table nav_icon"></i>Seller</a>
								</li>
								<li>
									<a href="compose.html"><i class="fa fa-table nav_icon"></i>Customers</a>
								</li>
								
							</ul>
							<!-- //nav-second-level -->
						</li>
						<li>
							<a href="tables.html"><i class="fa fa-table nav_icon"></i>Stores</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-check-square-o nav_icon"></i>Promotion</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-check-square-o nav_icon"></i>App Configuration</a>
						</li>
					@endif
					@if(auth()->user()->role_id == 3)
						<li class="">
							<a href="#"><i class="fa fa-book nav_icon"></i>Transaction <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="general.html">History<span class="nav-badge-btm">08</span></a>
								</li>
								<li>
									<a href="typography.html">Transaction</a>
								</li>
							</ul>
							<!-- /nav-second-level -->
						</li>
						<li>
							<a href="" class="fa fa-book nav_icon">Product</a>
						</li>						
					@endif
				@endif
				</ul>
			<div class="clearfix"> </div>
			<!-- //sidebar-collapse -->
		</nav>
	</div>
</div>