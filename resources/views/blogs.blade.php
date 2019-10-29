@extends('layouts.fe.index')

@section('css')
    <link rel="stylesheet" href="{{ asset('fe/styles/blog_styles.css') }}">
    <link rel="stylesheet" href="{{ asset('fe/styles/blog_responsive.css') }}">
@stop

@section('content')

    <div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/shop_background.jpg"></div>
		<div class="home_overlay"></div>
		<div class="home_content d-flex flex-column align-items-center justify-content-center">
			<h2 class="home_title">Blogs</h2>
		</div>
	</div>

	<!-- Blog -->

	<div class="blog">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="blog_posts d-flex flex-row align-items-start justify-content-between">
						@foreach($blogs as $data)
                            <!-- Blog post -->
                            <div class="blog_post">
                                <div class="blog_image" style="background-image:url({{ asset('images/'.$data->thumbnail) }})"></div>
                                <div class="blog_text">{{ $data->title }}</div>
                                <div class="blog_button"><a href="{{ route('showBlog',$data->slug) }}">Continue Reading</a></div>
                            </div>
                        @endforeach
					</div>
                </div>
                

					
            </div>
            <center>
                {{ $blogs->links() }}
            </center>
        </div>
	</div>


@stop