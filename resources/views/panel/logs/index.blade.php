@extends('layouts.panel.index')

@section('content')

<div id="page-wrapper" style="min-height: 335px;">
    <div class="main-page">
        <div class="tables">
            <h3 class="title1">Logs</h3>
            <div class="table-responsive bs-example widget-shadow">
                <h4>Data :</h4>
                    <table class="table table-bordered" id="datatable"> 
                        <thead>
                            <tr>
                                <th>
                                    <div class="custom-checkbox custom-control">
                                        <input type="checkbox" id="checkAll" class="form-control">
                                        <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                                    </div>
                                </th>

                                <th>Ip</th>
                                <th>Message</th> 
                                <th>User</th>
                                <th>Method</th>
                                <th>Aksi</th> 
                            </tr> 
                        </thead> 
                        <tbody> 

                        </tbody> 
                    </table> 
            </div>
        </div>
    </div>
</div>

@stop

@section('js')

<script type="text/javascript">
    // yajra datatable
    $(document).ready(function(){
        $(function() {
            $('#datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route("apiLogs") }}',
                columns: [
                    {data: 'checker', name: 'checker', orderable: false, searchable: false},
                    { data: 'ip', name: 'ip' },
                    { data: 'message', name: 'message' },
                    { data: 'user', name: 'user' },
                    { data: 'method', name: 'method' },
                    {data: 'action', name: 'action', orderable: false, searchable: false},
                ]
            });
        });
    });

</script>   
@stop