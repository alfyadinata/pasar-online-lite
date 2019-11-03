@extends('layouts.fe.index')

@section('css')

    <link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/cart_styles.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/cart_responsive.css')}}">
@stop

@section('content')



    <div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10">
                    <form action="{{ route('userTransaction') }}" onsubmit="return confirm('Yakin Ingin Melakukan Pembelian Sekarang ?');" method="post">
                        @csrf
                        <div class="cart_container">
                            <div class="cart_title">Keranjang Belanja</div>
                            <div class="cart_items">
                                <ul class="cart_list">
                                    <div class="table-responsive">
                                        <table class="table " style="width:800px;">
                                            <thead>
                                                <tr>
                                                    <th>checkAll</th>
                                                    <th style="width:40%;">Foto</th>
                                                    <th style="width:25%;">Produk</th>
                                                    <th style="width:25%;">Harga Satuan</th>
                                                    <th style="width:10%;">QTY</th>
                                                    <th style="width:10%;">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($carts as $data)
                                                @php 
                                                    $row    =   \App\Product::where('id',$data->product_id)->first();
                                                @endphp
                                                @if($row != null)
                                                <tr>
                                                <td><input type="checkbox" checked value="{{ $data->id }}" name="cart_id[]" class="form-control"></td>
                                                    <td>
                                                        <img src="{{ asset('images/'.$row->foto) }}" style="width:35%;" alt="">
                                                    </td>
                                                    <td>{{ $row->name }}</td>
                                                    <td>Rp. {{ number_format($row->price,0 * $data->qty,'',',') }} .00</td>
                                                    <td>{{ $data->qty }}</td>
                                                    <td>
                                                        <a href="" onclick="return confirm('Yakin Menghapus ini dari keranjang ?');" class="btn btn-sm btn-danger">X</a>
                                                    </td>
                                                </tr>
                                                @endif
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </ul>
                            </div>
                            
                            <!-- Order Total -->
                            <div class="order_total" style="height:170px;">
                                <div class="container">
                                    <h4>Pembayaran & Pengiriman</h4>                                    
                                    <div class="clearfix">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <label>Alamat Pengiriman</label>
                                                <textarea name="address" cols="30" rows="2" class="form-control" required></textarea>
                                            </div>
                                            <div class="col-lg-3">
                                                <label> Admin Transaksi</label>
                                                <select name="admin_id" id="" class="form-control">
                                                    @foreach($admins as $data)
                                                        @php 
                                                            $counter    =   \App\Transaction::where('status',1)->count();
                                                        @endphp
                                                    <option value="{{ $data->id }}">{{ $data->name }}({{ $counter}} Transaksi)</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-lg-3">
                                                <label>Metode Pembayaran</label>
                                                <select name="payment_method" id="" class="form-control">
                                                    <option value="0">Bayar Di Rumah</option>
                                                    <option value="1">Bayar Dengan Saldo</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-3">
                                                <label>Metode Pengiriman</label>
                                                <select name="shipping_method" id="" class="form-control">
                                                    <option value="0">GoJek</option>
                                                    <option value="1">Grab</option>
                                                    <option value="">Ambil Sendiri</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="order_total_content text-md-right">
                                    <div class="order_total_title">Order Total:</div>
                                    <div class="order_total_amount">Rp. {{ number_format($total,0,'',',') }}</div>
                                </div>
                            </div>

                            <div class="cart_buttons">
                                <!-- <button type="button" class="button cart_button_clear"></button> -->
                                <!-- <a href="" class="button cart_button_clear">Beli Sekarang</a> -->
                                <button class="button cart_button_clear">Beli Sekarang</button>
                            </div>
                        </div>
                    </form>
				</div>
			</div>
		</div>
	</div>


@stop


@section('js')
<script src="{{ asset('fe/plugins/easing/easing.js')}}"></script>
    <script src="{{ asset('fe/js/cart_custom.js')}}"></script>
@stop