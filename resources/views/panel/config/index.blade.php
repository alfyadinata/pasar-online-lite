@extends('layouts.panel.index')

@section('css')
@stop

@section('content')

    <div id="page-wrapper" style="min-height: 335px;">
        <div class="main-page">
            <div class="tables">
                <h3 class="title1">Blog</h3>
                <div class="table-responsive bs-example widget-shadow">
                    <h4>Buat</h4>

                    <form action="" method="post">
                        @csrf

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Nama Aplikasi</label>
                                <div class="col-sm-6"> 
                                    <input name="title" type="text" class="form-control" id="inputEmail3"> 
                                </div> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Alamat</label>
                                <div class="col-sm-6"> 
                                    <textarea name="address" rows="5" class="form-control"></textarea>
                                </div> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Logo</label>
                                <img id="blah" src="https://images.pexels.com/photos/46253/mt-fuji-sea-of-clouds-sunrise-46253.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="your image" style="width:40%;" />
                                <div class="col-sm-6"> 
                                    <input name="thumbnail" id="imgInp" accept="image/*" type="file" class="btn btn-default"> 
                                </div> 
                            </div>                        
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Deskripsi</label>
                                <div class="col-sm-12"> 
                                    <textarea name="description" id="editor" cols="30" rows="10" class="form-control"></textarea>
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

<script>

function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    
    reader.onload = function(e) {
      $('#blah').attr('src', e.target.result);
    }
    
    reader.readAsDataURL(input.files[0]);
  }
}

$("#imgInp").change(function() {
  readURL(this);
});

</script>

@endsection