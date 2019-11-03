
@extends('layouts.panel.index')
@section('content')


<div id="page-wrapper" style="min-height: 335px;">
    <div class="main-page">
        <div class="tables">
            <h3 class="title1">Product</h3>
            <div class="table-responsive bs-example widget-shadow">
                <h4>Edit</h4>
                <form action="{{ route('uProduct',$edit->uuid) }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Nama Produk</label>
                                <input name="name" value="{{ $edit->name }}" type="text" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Kategori</label>
                                <select name="category_id" class="form-control">
                                    @foreach($categories as $data) 
                                        <option value="{{ $data->id }}" {{ $edit->category_id == $data->id ? 'selected' : '' }}> {{ $data->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    

                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Deskripsi</label>
                                <textarea name="description" rows="3" class="form-control">{{ $edit->description }}</textarea>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Satuan</label>
                                <select name="unit_id" class="form-control">
                                    @foreach($units as $data) 
                                        <option value="{{ $data->id }}" {{ $edit->unit_id == $data->id ? 'selected' : '' }}> {{ $data->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Stock</label>
                                <input name="qty" type="number" min="1" value="{{ $edit->qty }}" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Harga</label>
                                <input name="price" type="number" min="1" value="{{ $edit->price }}" class="form-control">
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Foto 1 </label>
                                <input type="file" id="imgPrdct1" class="btn btn-default" accept="image/x-png,image/gif,image/jpeg" name="foto">
                                <img src="{{ asset('images/'.$edit->foto) }}" style="width:60%;" id="preview-1" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Foto 2 </label>
                                <input type="file" id="imgPrdct2" class="btn btn-default" accept="image/x-png,image/gif,image/jpeg" name="foto_2">
                                @if($edit->foto_2 != null)
                                    <img src="{{ asset('images/'.$edit->foto_2) }}" style="width:60%;" id="preview-2">
                                @endif
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Foto 3 </label>
                                <input type="file" id="imgPrdct3" class="btn btn-default" accept="image/x-png,image/gif,image/jpeg" name="foto_3">
                                @if($edit->foto_3 != null)
                                    <img src="{{ asset('images/'.$edit->foto_3) }}" style="width:60%;" id="preview-3">
                                @endif
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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