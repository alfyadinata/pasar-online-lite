@extends('layouts.panel.index')
@section('css')

@stop
@section('content')

<div id="page-wrapper" style="min-height: 335px;">
    <div class="main-page">
        <div class="tables">
            <h3 class="title1">Transaksi Berlangsung</h3>
            <div class="table-responsive bs-example widget-shadow">
                <h4>Data :</h4>
                <form action="{{ route('delManyCashier') }}" onsubmit="return confirm('Yakin Ingin Menghapus Data Terpilih ?');" method="post">
                    @csrf 
                    @method('delete')
                    <button id="btnDel" class="btn btn-danger" style="display:none;">Hapus Terpilih</button>
                    <table class="table table-bordered" id="datatable"> 
                        <thead>
                            <tr>
                                <th>
                                    <div class="custom-checkbox custom-control">
                                        <input type="checkbox" id="checkAll" class="form-control">
                                        <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                                    </div>
                                </th>

                                <th>Customer</th>
                                <th>Invoice</th> 
                                <th>Status</th>
                                <th>Aksi</th> 
                            </tr> 
                        </thead> 
                        <tbody> 

                        </tbody> 
                    </table> 
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Buat</h4>
            </div>
            <div class="modal-body">
      
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
      
    </div>
</div>

<div class="modal fade" id="myModalEdit" role="dialog">
    <div class="modal-dialog">
    
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Edit</h4>
            </div>
            <div class="modal-body">
      
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
      
    </div>
</div>
@stop

@section('js')

<script>
    // alert decline
    $(document).on('click', '.decline', function() { 
        if (!confirm('Tolak Transaksi Ini ?')) {
            return false;
        }
    });
    // alert accept
    $(document).on('click', '.accept', function() { 
        if (!confirm('Terima Transaksi Ini ?')) {
            return false;
        }
    });
    // alert
    $(document).on('click', '.delete', function() { 
        if (!confirm('Yakin Ingin Menghapus Data Ini ?')) {
            return false;
        }
    });

        // yajra datatable
    $(document).ready(function(){
        $(function() {
            $('#datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route("apiTransaction") }}',
                columns: [
                    {data: 'checker', name: 'checker', orderable: false, searchable: false},
                    { data: 'customer', name: 'customer' },
                    { data: 'invoice', name: 'invoice' },
                    {data: 'status', name: 'status', searchable: false},
                    {data: 'action', name: 'action', orderable: false, searchable: false},
                ]
            });
        });
    });

    // modal edit
    $(document).on('click', '.openPopupEdit', function() { 
            var dataURL = $(this).attr('data-href');
            $('.modal-body').load(dataURL,function(){
                $('#myModalEdit').modal({show:true});
            });
    });

    $(document).ready(function(){	
        // modal create
        $('.openPopup').on('click',function(){
            var dataURL = $(this).attr('data-href');
            $('.modal-body').load(dataURL,function(){
                $('#myModal').modal({show:true});
            });
        }); 
    });
</script>   

@stop