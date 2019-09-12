@extends('layouts.panel.index')

@section('content')

<div id="page-wrapper" style="min-height: 335px;">
    <div class="main-page">
        <div class="tables">
            <h3 class="title1">Product</h3>
            <a href="{{ route('cProduct') }}" class="openPopup btn btn-primary">
                Tambah +
            </a>
            <div class="table-responsive bs-example widget-shadow">
                <h4>Data :</h4>
                <form action="{{ route('delManyProduct') }}" onsubmit="return confirm('Yakin Ingin Menghapus Data Terpilih ?');" method="post">
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
                                <th>Stock</th>
                                <th>Dilihat</th> 
                                <th>Harga</th>
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
@stop

@section('js')

<script>

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
                ajax: '{{ route("apiProduct") }}',
                columns: [
                    {data: 'checker', name: 'checker', orderable: false, searchable: false},
                    { data: 'name', name: 'name' },
                    {data: 'qty', name: 'qty' },
                    { data: 'visit', name: 'visit' },
                    { data: 'price', name: 'price' },
                    {data: 'action', name: 'action', orderable: false, searchable: false},
                ]
            });
        });
    });
</script>   
@stop