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
                            <div class="cart_title">Transaksi</div>
                            <div class="cart_items">
                                <ul class="cart_list">
                                    <div class="table-responsive">
                                    <table class="table " style="width:800px;">
                                            <thead>
                                                <tr>
                                                    <th style="width:20%;">Foto</th>
                                                    <th style="width:20%;">Produk</th>
                                                    <th style="width:20%;">Harga Satuan</th>
                                                    <th style="width:10%;">Total</th>
                                                    <th style="width:20%;">Status</th>
                                                    <th style="width:20%;">Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($transactions as $data)
                                                @php 
                                                    $row    =   \App\Product::where('id',$data->product_id)->first();
                                                @endphp
                                                @if($row != null)
                                                <tr>
                                                    <td>
                                                        <img src="{{ asset('images/'.$row->foto) }}" style="width:35%;" alt="">
                                                    </td>
                                                    <td>{{ $row->name }}</td>
                                                    <td>Rp. {{ number_format($row->price,0 * $data->qty,'',',') }} .00</td>
                                                    <td>{{ number_format($data->total,0,'',',')  }}</td>
                                                    <td>
                                                    
                                                    @php 
                                                        $status =   "";
                                                        if ($data->status == 0) {
                                                            $status = 'Menunggu Konfirmasi Penjual';
                                                        }
                                                        if ($data->status == 1) {
                                                            $status =   'Sedang Di Proses Oleh Penjual';
                                                        }
                                                        if ($data->status == 4) {
                                                            $status =   'Sedang Di Kirim';
                                                        }
                                                        if ($data->status == 5) {
                                                            $status = 'Selesai.';
                                                        }
                                                        if ($data->status == 6) {
                                                            $status =   'Di Batalkan Penjual';
                                                        }
                                                        if ($data->status == 7) {
                                                            $status =   'Di Batalkan Pembeli';
                                                        }
                                                    @endphp 
                                                        {{ $status }}
                                                    </td>
                                                    <td>{{ $data->date }}</td>
                                                </tr>
                                                @endif
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </ul>
                            </div>
                            
                            <div class="cart_buttons">
                                <!-- <button type="button" class="button cart_button_clear"></button> -->
                                <!-- <a href="" class="button cart_button_clear">Beli Sekarang</a> -->
                                <!-- <button class="button cart_button_clear">Beli Sekarang</button> -->
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