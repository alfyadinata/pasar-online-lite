<form action="{{ route('uCategory',$edit->uuid) }}" method="post">
    @csrf
    <div class="form-group"> 
        <label>Nama Kategori</label> 
        <input name="name" type="text" value="{{ $edit->name }}" class="form-control" placeholder="Email"> 
    </div>
    <div class="form-group"> 
        <label>Status</label> 
        <select name="status" class="form-control">
            <option value="0">Blog</option>
            <option value="1" {{ $edit->is_product == 1 ? "selected" : "" }}>Produk</option>
        </select>
    </div>

    <button class="btn btn-primary">Submit</button>
</form>