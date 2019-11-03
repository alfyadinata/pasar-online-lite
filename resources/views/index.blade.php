@extends('layouts.fe.index')

@section('css')

<link rel="stylesheet" type="text/css" href="{{ asset('fe/plugins/slick-1.8.0/slick.css')}}">
<link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/main_styles.css')}}">
<link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/responsive.css')}}">


@stop

@section('content')

    @include('banner')

    @if(auth()->check())
        @include('lastseen')
    @endif
    @include('latest-product')
    @include('hot-best-seller')
@stop

@section('js')
<script src="{{ asset('fe/plugins/OwlCarousel2-2.2.1/owl.carousel.js')}}"></script>
<script src="{{ asset('fe/plugins/easing/easing.js')}}"></script>
<script src="{{ asset('fe/js/custom.js')}}"></script>
<script src="{{ asset('fe/plugins/slick-1.8.0/slick.js')}}"></script>
@stop