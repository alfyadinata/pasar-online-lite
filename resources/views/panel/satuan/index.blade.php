@extends('layouts.panel.index')

@section('content')

<div id="page-wrapper" style="min-height: 335px;">
    <div class="main-page">
        <div class="tables">
            <h3 class="title1">Satuan</h3>
            <a href="javascript:void(0);" data-href="{{ route('cSatuan') }}" class="openPopup btn btn-primary">
                Tambah +
            </a>
            <div class="table-responsive bs-example widget-shadow">
                <h4>Data :</h4>
                <form action="{{ route('delManySatuan') }}" onsubmit="return confirm('Yakin Ingin Menghapus Data Terpilih ?');" method="post">
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

                                <th>Nama</th>
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
    <div class="modal-dialog">
    
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

<script type="text/javascript">
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
                ajax: '{{ route("apiSatuan") }}',
                columns: [
                    {data: 'checker', name: 'checker', orderable: false, searchable: false},
                    { data: 'name', name: 'name' },
                    { data: 'action', name: 'action', orderable: false, searchable: false },
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
    
    // modal create
    $(document).ready(function(){	 
        $('.openPopup').on('click',function(){
            var dataURL = $(this).attr('data-href');
            $('.modal-body').load(dataURL,function(){
                $('#myModal').modal({show:true});
            });
        }); 
    });
</script>   
@stop