<div class=" sidebar" role="navigation">
	<div class="navbar-collapse">
		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
				<ul class="nav in" id="side-menu">
				@if(auth()->check())
					@if(auth()->user()->role_id == 1)
						<li>
							<a href="{{ route('iDashboard') }}"><i class="fa fa-home nav_icon"></i>Dashboard</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-archive nav_icon"></i>Post<span class="fa arrow"></span></a>
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
							<a href="#"><i class="fa fa-user nav_icon"></i>User<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="{{ route ('iCashier')}}"><i class="fa fa-table nav_icon"></i>Cashier</a>
								</li>
								<li>
									<a href="{{ route('iSeller') }}"><i class="fa fa-table nav_icon"></i>Seller</a>
								</li>
								<li>
									<a href="{{ route('iCustomer') }}"><i class="fa fa-table nav_icon"></i>Customers</a>
								</li>
								
							</ul>
							<!-- //nav-second-level -->
						</li>
						<li>
							<a href="{{ route('iProduct') }}"><i class="fa fa-briefcase nav_icon"></i>Product</a>
						</li>
						<!-- <li>
							<a href="tables.html"><i class="fa fa-shopping-cart nav_icon"></i>Stores</a>
						</li> -->
						<li>
							<a href="#"><i class="fa fa-credit-card nav_icon"></i>Transaksi<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="{{ route ('iTransaction')}}"><i class="fa fa-table nav_icon"></i>Transaksi Berlangsung</a>
								</li>
								<li>
									<a href="{{ route('historyTransaction') }}"><i class="fa fa-table nav_icon"></i>History</a>
								</li>								
							</ul>
							<!-- //nav-second-level -->
						</li>
						<li>
							<a href="{{ route('iPromotion') }}"><i class="fa fa-thumbs-up nav_icon"></i>Promotion</a>
						</li>
						<li>
							<a href="{{ route('iTopUp') }}"><i class="fa fa-money nav_icon"></i>TopUp Saldo</a>
						</li>
						<li>
							<a href="{{ route('logs') }}"><i class="fa fa-hdd-o nav_icon"></i>Logs</a>
						</li>
						<li>
							<a href="{{ route('iConfig') }}"><i class="fa fa-gears nav_icon"></i>App Configuration</a>
						</li>
					@endif
					@if(auth()->user()->role_id == 2)
						<li>
							<a href=""><i class="fa fa-home nav_icon"></i>Dashboard</a>
						</li>
						<li>
							<a href="{{ route('iProduct') }}"><i class="fa fa-briefcase nav_icon"></i>Product</a>
						</li>
						<li>
							<a href="{{ route('iTopUp') }}"><i class="fa fa-money nav_icon"></i>TopUp Saldo</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-credit-card nav_icon"></i>Transaksi<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="{{ route ('iTransaction')}}"><i class="fa fa-table nav_icon"></i>Transaksi Berlangsung</a>
								</li>
								<li>
									<a href="{{ route('historyTransaction') }}"><i class="fa fa-table nav_icon"></i>History</a>
								</li>
								
							</ul>
							<!-- //nav-second-level -->
						</li>
					
					@endif
					@if(auth()->user()->role_id == 3)
						<li>
							<a href="index.html"><i class="fa fa-home nav_icon nav_icon"></i>Dashboard</a>
						</li>
						<li>
							<a href="{{ route('iProduct') }}"> <i class="fa fa-briefcase nav_icon"></i>Product</a>
						</li>
						<li class="">
							<a href="#"><i class="fa fa-credit-card nav_icon"></i>Transaction <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="{{ route ('iTransaction')}}"><i class="fa fa-table nav_icon"></i>Transaksi Berlangsung</a>
								</li>
								<li>
									<a href="{{ route('historyTransaction') }}"><i class="fa fa-table nav_icon"></i>History</a>
								</li>
							</ul>
							<!-- /nav-second-level -->
						</li>
						<li>
							<a href="{{ route('iSettingStore') }}"> <i class="fa fa-gear nav_icon"></i>Konfigurasi Toko</a>
						</li>
					@endif					
				@endif
				</ul>
			<div class="clearfix"> </div>
			<!-- //sidebar-collapse -->
		</nav>
	</div>
</div>