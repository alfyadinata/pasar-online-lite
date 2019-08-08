@extends('layouts.panel.index')

@section('css')
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
@stop

@section('content')

    <div id="page-wrapper" style="min-height: 335px;">
        <div class="main-page">
            <div class="tables">
                <h3 class="title1">Konfigurasi Aplikasi</h3>
                <div class="table-responsive bs-example widget-shadow">
                    <h4>Edit</h4>

                    <form action="" method="post">
                        @csrf

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Nama Aplikasi</label>
                                <div class="col-sm-6"> 
                                    <input name="app_name" value="{{ $config->app_name }}" type="text" class="form-control" > 
                                </div> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Alamat</label>
                                <div class="col-sm-6"> 
                                    <textarea name="address" rows="5" class="form-control"> {{ $config->address }} </textarea>
                                </div> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label class="col-sm-2 control-label">Logo Header</label>
                                <div class="col-sm-6"> 
                                    <img id="imgPreview" style="margin-top:15px;max-height:254px;max-width: 152px;" src="{{ $config->logo }}">
                                        <a style="margin-bottom: 5px" id="thumbnail" data-input="thumbnails" data-preview="imgPreview" class="btn btn-warning text-white">
                                            <i class="fa fa-cloud-upload fa-lg" aria-hidden="true"></i> 
                                        </a>
                                    <input type="text" name="logo" value="{{ $config->logo }}" readonly class="form-control" id="thumbnails">
                                </div> 
                            </div>                        
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label class="col-sm-2 control-label">Logo Footer</label>
                                <div class="col-sm-6"> 
                                    <img src="{{ $config->logo_2 }}" id="imgPreview2" style="margin-top:15px;max-height:50%;max-width: 30%;">
                                        <a style="margin-bottom: 5px" id="thumbnail2" data-input="thumbnails2" data-preview="imgPreview2" class="btn btn-info text-white">
                                            <i class="fa fa-cloud-upload fa-lg" aria-hidden="true"></i> 
                                        </a>
                                    <input type="text" name="logo_2" value="{{ $config->logo_2 }}" readonly class="form-control" id="thumbnails2">
                                </div> 
                            </div>                        
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Slogan</label>
                                <div class="col-sm-6"> 
                                    <textarea name="slogan" rows="5" class="form-control">{{ $config->slogan }}</textarea>
                                </div> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Url Instagram</label>
                                <div class="col-sm-6"> 
                                    <input name="instagram" value="{{ $config->instagram }}" type="text" class="form-control" > 
                                </div> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Url Facebook</label>
                                <div class="col-sm-6"> 
                                    <input name="facebook" value="{{ $config->facebook }}" type="text" class="form-control" > 
                                </div> 
                            </div>
                        </div>

                        <br/><button class="btn btn-primary">Submit</button>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>


@endsection

@section('js')

<script src="{{ asset('vendor/laravel-filemanager/js/lfm.js') }}"></script>
<script>
    $(document).ready( function () {
        var route_prefix = "{{ url('laravel-filemanager') }}";
        $('#thumbnail').filemanager('image',{prefix: route_prefix});
        $('#thumbnail2').filemanager('image',{prefix: route_prefix});
    });
</script>
@endsection