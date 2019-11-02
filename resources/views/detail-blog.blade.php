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


	<div id="disqus_thread"></div>
@stop

@section('js')
<script src="{{ asset('fe/plugins/OwlCarousel2-2.2.1/owl.carousel.js')}}"></script>
<script src="{{ asset('fe/plugins/parallax-js-master/parallax.min.js')}}"></script>
<script src="{{ asset('fe/plugins/easing/easing.js')}}"></script>
<script src="{{ asset('fe/js/blog_single_custom.js')}}"></script>
<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
/*
var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
*/
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://pasar-online.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>

@stop