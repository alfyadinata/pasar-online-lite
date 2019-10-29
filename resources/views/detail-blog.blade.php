@extends('layouts.fe.index')

@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/blog_single_styles.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/blog_single_responsive.css')}}">
@stop

@section('content')

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="{{ asset('images/'.$detail->thumbnail) }}" data-speed="0.8"></div>
	</div>

	<!-- Single Blog Post -->

	<div class="single_post">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2">
					<div class="single_post_title">{{ $detail->title }}</div>
					<div class="single_post_text">
                        {!! $detail->description !!}
					</div>
				</div>
			</div>
		</div>
	</div>

@stop