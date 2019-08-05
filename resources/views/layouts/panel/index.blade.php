<!DOCTYPE HTML>
<html>
<head>
<title>Panel Pasar-Online</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="{{ asset('css/bootstrap.css')}}" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="{{ asset('css/style.css')}}" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="{{ asset('css/font-awesome.cs')}}s" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="{{ asset('js/jquery-1.11.1.min.js')}}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="{{ asset('js/modernizr.custom.js')}}"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="{{ asset('css/animate.css')}}" rel="stylesheet" type="text/css" media="all">
<script src="{{ asset('js/wow.min.js')}}"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="{{ asset('js/metisMenu.min.js')}}"></script>
<script src="{{ asset('js/custom.js')}}"></script>
<link href="{{ asset('css/custom.css')}}" rel="stylesheet">
@yield('css')
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
    <!--left-fixed -navigation-->
    @include('layouts.panel.sidebar')
		<!--left-fixed -navigation-->
		<!-- header-starts -->
    @include('layouts.panel.header')
		<!-- //header-ends -->
		<!-- main content start-->
    @yield('content')
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2019 Pasar-Online. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts</a></p>
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="{{ asset('js/classie.js')}}"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>

	<!-- datatable -->
	<script src="{{ asset('jquery-datatable/jquery.dataTables.js')}}"></script>
	<script src="{{ asset('jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js') }}"></script>

	<script src="{{ asset('tables/jquery-dataTable.js')}}"></script>
	<!--scrolling js-->
	<script src="{{ asset('js/jquery.nicescroll.js')}}"></script>
	<script src="{{ asset('js/scripts.js')}}"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
  <script src="{{ asset('js/bootstrap.js')}}"> </script>
  @yield('js')
  <script>
     $(document).ready(function() {
        $("#checkAll").click(function() {
			$(".checks").prop("checked", this.checked);

			if ($('.checks:checked').length > 0) {
				$('#checkAll').prop('checked', true);
				$('#btnDel').show();
			}else{
				$('#btnDel').hide();
			}
        });

        $('.checks').click(function() {
            if ($('.checks:checked').length === $('.checks').length) {
				$('#checkAll').prop('checked', true);
				$('#btnDel').show();
            } else {
				if ($('.checks:checked').length > 0) {
					$('#checkAll').prop('checked', false);
					$('#btnDel').show();
				}else{
					$('#btnDel').hide();
				}
            }
        });
    }); 
  </script>
  <script src="{{ asset('js/sweetalert/sweetalert.min.js') }}"></script>
  @include('sweet::alert')

  
</body>
</html>