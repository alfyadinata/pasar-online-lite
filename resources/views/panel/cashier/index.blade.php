@extends('layouts.panel.index')
@section('css')

@stop
@section('content')

<div id="page-wrapper" style="min-height: 335px;">
    <div class="main-page">
        <div class="tables">
            <h3 class="title1">Kasir</h3>
            <a data-href="{{ route('cCashier') }}" class="openPopup btn btn-primary">
                Tambah +
            </a>
            <div class="table-responsive bs-example widget-shadow">
                <h4>Data :</h4>
                <form action="{{ route('delManyCategory') }}" onsubmit="return confirm('Yakin Ingin Menghapus Data Terpilih ?');" method="post">
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

                                <th>Judul</th>
                                <th>Kategori</th>
                                <th>Tanggal Di Buat</th> 
                                <th>Aksi</th> 
                            </tr> 
                        </thead> 
                        <tbody> 
                            @foreach($cashiers as $data)
                            <tr> 
                                <td>
                                    <div class="custom-checkbox custom-control">
                                        <input type="checkbox" name="checked[]" value="{{ $data->uuid }}" class="checks form-control">
                                        <label for="checkbox-{{ $data->id }}" class="custom-control-label">&nbsp;</label>
                                    </div>
                                </td>
                                <td>{{ $data->title }}</td>
                                <td>{{ $data->category->name }}</td>
                                <td>{{ $data->created_at->format('d-m-Y') }}</td>
                                <td>
                                        <a href="{{ route('delCategory',$data->uuid) }}" onclick="return confirm('Yakin Ingin Menghapus Data ?');" class="btn btn-danger">
                                            Hapus
                                        </a>
                                        <a data-href="{{ route('eCategory',$data->uuid) }}" class="openPopupEdit btn btn-primary">
                                            Edit
                                        </a>
                                </td>
                            </tr>
                            @endforeach
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

    $(document).ready( function () {
        $('#datatable').DataTable();
    } );

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