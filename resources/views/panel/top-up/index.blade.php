@extends('layouts.panel.index')

@section('content')

<div id="page-wrapper" style="min-height: 335px;">
    <div class="main-page">
        <div class="tables">
            <h3 class="title1">TopUp Saldo</h3>
            <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                TopUp
            </button> -->
            <div class="table-responsive bs-example widget-shadow">
                <h4>Saldo :</h4>
                <form action="" method="post">
            @csrf
            <div class="form-group">
                <label>Email Customer</label>
                <input type="text" name="email" class="form-control">
            </div>
            <div class="form-group">
                <label>Nominal</label>
                <input type="number" name="nominal" class="form-control">
            </div>
            <center>
                <button class="btn btn-primary">Submit</button>
            </center>
        </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Buat Promosi</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

@stop



@section('js')

<script>

    // yajra datatable
    $(document).ready(function(){
        $(function() {
            $('#datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route("apiPromotion") }}',
                columns: [
                    {data: 'checker', name: 'checker', orderable: false, searchable: false},
                    { data: 'product', name: 'product' },
                    {data: 'start', name: 'start' },
                    { data: 'finish', name: 'finish' },
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

</script>   
@stop