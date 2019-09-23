<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="">
					<!-- <a href="index.html">
						<h1>Pasar</h1>
						<span>Panel</span>
					</a> -->
					<img src="{{ asset('logo.png') }}" style="width:75px; margin-top:5px;" alt="">
				</div>
				<!--//logo-->
				<!--search-box-->
			</div>
			<div class="header-right">
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="{{ asset('images/a.png')}}" alt=""> </span> 
									<div class="user-name">
										<p>
											{{ auth()->user()->name }}
										</p>
										<span>{{ auth()->user()->role->name }}</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<!-- <div class="clearfix"></div>	 -->
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<form action="{{ route('logout') }}" method="post">
									@csrf
									<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
									<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
									<button class="btn btn-default"><i class="fa fa-sign-out"></i>Logout</button>
								</form>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>