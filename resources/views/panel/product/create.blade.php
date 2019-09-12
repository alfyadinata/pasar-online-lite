@extends('layouts.panel.index')
@section('content')


<div id="page-wrapper" style="min-height: 335px;">
    <div class="main-page">
        <div class="tables">
            <h3 class="title1">Product</h3>
            <div class="table-responsive bs-example widget-shadow">
                <h4>Buat</h4>
                <form action="" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Nama Produk</label>
                                <input name="name" type="text" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Kategori</label>
                                <select name="category_id" class="form-control">
                                    @foreach($categories as $data) 
                                        <option value="{{ $data->id }}"> {{ $data->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    

                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Deskripsi</label>
                                <textarea name="description" rows="3" class="form-control"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Stock</label>
                                <input name="qty" type="number" min="1" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Harga</label>
                                <input name="price" type="number" min="1" class="form-control">
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Foto 1 </label>
                                <input type="file" id="imgPrdct1" class="btn btn-warning" accept="image/x-png,image/gif,image/jpeg" name="foto">
                                <img src="#" style="width:60%;" id="preview-1" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Foto 2 </label>
                                <input type="file" id="imgPrdct2" class="btn btn-warning" accept="image/x-png,image/gif,image/jpeg" name="foto_2">
                                <img src="#" style="width:60%;" id="preview-2" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Foto 3 </label>
                                <input type="file" id="imgPrdct3" class="btn btn-warning" accept="image/x-png,image/gif,image/jpeg" name="foto_3">
                                <img src="#" style="width:60%;" id="preview-3" alt="">
                            </div>
                        </div>
                    </div>

                    <button class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
@stop

@section('js')
    <script>

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                
                reader.onload = function(e) {
                $('#preview-1').attr('src', e.target.result);
                }   
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#imgPrdct1").change(function() {
            readURL(this);
        });

        function readURL2(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                
                reader.onload = function(e) {
                $('#preview-2').attr('src', e.target.result);
                }   
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#imgPrdct2").change(function() {
            readURL2(this);
        });
        
        function readURL3(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                
                reader.onload = function(e) {
                $('#preview-3').attr('src', e.target.result);
                }   
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#imgPrdct3").change(function() {
            readURL3(this);
        });

    </script>
@stop