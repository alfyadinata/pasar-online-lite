@extends('layouts.panel.index')

@section('css')

@stop 

@section('content')


<div id="page-wrapper" style="min-height: 335px;">
    <div class="main-page">
        
                <div class="row-one">
					<div class="col-md-4 widget states-last">
						<div class="stats-left ">
							<h5>total</h5>
							<h4>Penjualan</h4>
						</div>
						<div class="stats-right">
							<label>{{ $sales }}</label>
						</div>
						<div class="clearfix"> </div>	
					</div>
					<div class="col-md-4 widget states-last">
						<div class="stats-left ">
							<h5>total</h5>
							<h4>Transaksi</h4>
						</div>
						<div class="stats-right">
							<label>{{ $transaction }}</label>
						</div>
						<div class="clearfix"> </div>	
					</div>
					<div class="col-md-4 widget states-last">
						<div class="stats-left ">
							<h5>total</h5>
							<h4>Produk</h4>
						</div>
						<div class="stats-right">
							<label>{{ $product }}</label>
						</div>
						<div class="clearfix"> </div>	
					</div>
					<div class="clearfix"> </div>	
				</div>

    </div>
</div>

@stop