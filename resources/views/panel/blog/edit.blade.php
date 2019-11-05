@extends('layouts.panel.index')

@section('css')
<script src="{{ asset('js/tinymce.js') }}"></script>
<script>
    tinymce.init({
        selector:'textarea',
        plugins: 'image link imagetools help',
    toolbar: 'formatselect | bold italic strikethrough forecolor backcolor | link image | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat',
    image_advtab: true,
    content_css: [
      '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
      '//www.tiny.cloud/css/codepen.min.css'
    ],
    importcss_append: true,
    height: 400,
    file_picker_callback: function (cb, value, meta) {
      var input = document.createElement('input');
      input.setAttribute('type', 'file');
      input.setAttribute('accept', 'image/*');
      
      /*
      Note: In modern browsers input[type="file"] is functional without
      even adding it to the DOM, but that might not be the case in some older
      or quirky browsers like IE, so you might want to add it to the DOM
      just in case, and visually hide it. And do not forget do remove it
      once you do not need it anymore.
      */
      
      input.onchange = function () {
        var file = this.files[0];
        
        var reader = new FileReader();
        reader.onload = function () {
          /*
          Note: Now we need to register the blob in TinyMCEs image blob
          registry. In the next release this part hopefully won't be
          necessary, as we are looking to handle it internally.
          */
          var id = 'blobid' + (new Date()).getTime();
          var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
          var base64 = reader.result.split(',')[1];
          var blobInfo = blobCache.create(id, file, base64);
          blobCache.add(blobInfo);
          
          /* call the callback and populate the Title field with the file name */
          cb(blobInfo.blobUri(), { title: file.name });
        };
        reader.readAsDataURL(file);
      }
      input.click();
    },
    templates: [
      { title: 'Some title 1', description: 'Some desc 1', content: 'My content' },
      { title: 'Some title 2', description: 'Some desc 2', content: '<div class="mceTmpl"><span class="cdate">cdate</span><span class="mdate">mdate</span>My content2</div>' }
    ],
    template_cdate_format: '[CDATE: %m/%d/%Y : %H:%M:%S]',
    template_mdate_format: '[MDATE: %m/%d/%Y : %H:%M:%S]',
    image_caption: true,
    
    spellchecker_dialog: true,
    spellchecker_whitelist: ['Ephox', 'Moxiecode']
    });
</script>
@stop

@section('content')

    <div id="page-wrapper" style="min-height: 335px;">
        <div class="main-page">
            <div class="tables">
                <h3 class="title1">Edit Blog</h3>
                <div class="table-responsive bs-example widget-shadow">
                    <h4>Buat</h4>

                    <form action="" method="post">
                        @csrf

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Judul</label>
                                <div class="col-sm-6"> 
                                    <input name="title" value="{{ $edit->title }}" type="text" class="form-control" id="inputEmail3"> 
                                </div> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group">
                                <label  class="col-sm-2 control-label">Kategori</label>
                                <div class="col-sm-6">
                                    <select name="category_id" class="form-control">
                                        @foreach($categories as $data)
                                            <option value="{{ $data->id }}" {{ $data->id == $edit->category_id ? 'selected' : '' }}>{{ $data->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Thumbnail</label>
                                <img id="blah" src="{{ asset('images/'.$edit->thumbnail) }}" alt="your image" style="width:40%;" />
                                <div class="col-sm-6"> 
                                    <input name="thumbnail" id="imgInp" accept="image/*" type="file" class="btn btn-default"> 
                                </div> 
                            </div>                        
                        </div>

                        <div class="row">
                            <div class="form-group"> 
                                <label for="inputEmail3" class="col-sm-2 control-label">Deskripsi</label>
                                <div class="col-sm-12"> 
                                    <textarea name="description" id="editor" cols="30" rows="10" class="form-control">{{ $edit->description }}</textarea>
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