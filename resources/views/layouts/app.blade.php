<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
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
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!--//webfonts--> 
    <!--animate-->
    <link href="{{ asset('css/animate.css')}}" rel="stylesheet" type="text/css" media="all">
    <script src="{{ asset('js/wow.min.js')}}"></script>
        <script>
            new WOW().init();
        </script>
    <script src="{{ asset('js/custom.js')}}"></script>
    <link href="{{ asset('css/custom.css')}}" rel="stylesheet">
</head> 
<body style="background-image: url({{ asset('images/food.jpg') }}); background-size: cover;">
    @yield('content')

    <div class="footer">
		   <p>© 2019 Pasline Admin Panel</p>
		</div>

    <script src="{{ asset('js/classie.js') }}"></script>
    <script src="{{ asset('js/jquery.nicescroll.js')}}"></script>
	<script src="{{ asset('js/scripts.js')}}"></script>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
    <script src="{{ asset('js/bootstrap.js')}}"> </script>
    <script src="{{ asset('js/sweetalert/sweetalert.min.js') }}"></script>
    @include('sweet::alert')
</body>
</html>