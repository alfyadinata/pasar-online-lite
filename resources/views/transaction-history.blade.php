@extends('layouts.fe.index')

@section('css')

    <link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/cart_styles.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('fe/styles/cart_responsive.css')}}">
@stop

@section('content')
    <br/>
    
    <div class="container">
        <div class="row">
            <div class="col-lg-10">
            <div class="cart_title">Keranjang Belanja</div>

            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                            <table class="table table-bordered" id="datatable"> 
                                <thead>
                                    <tr>
                                        <th>Tanggal</th>
                                        <th>Produk</th>
                                        <th>Status</th> 
                                        <th>Invoice</th>
                                    </tr> 
                                </thead> 
                                <tbody> 

                                </tbody> 
                            </table> 
                    </div>
                </div>
            </div>

            </div>
        </div>
    </div>

@stop


@section('js')
	<!-- datatable -->
<script src="{{ asset('jquery-datatable/jquery.dataTables.js')}}"></script>
<script src="{{ asset('jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js') }}"></script>
<script src="{{ asset('tables/jquery-dataTable.js')}}"></script>
<script src="{{ asset('fe/plugins/easing/easing.js')}}"></script>
<script src="{{ asset('fe/js/cart_custom.js')}}"></script>
<script>
        // yajra datatable
    $(document).ready(function(){
        $(function() {
            $('#datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route("jsonHistoryTransaction") }}',
                columns: [
                    {data: 'date', name: 'date', orderable: false, searchable: false},
                    { data: 'product', name: 'product' },
                    {data: 'status', name: 'status'},
                    {data: 'invoice', name: 'invoice'},
                ]
            });
        });
    });
</script>
@stop