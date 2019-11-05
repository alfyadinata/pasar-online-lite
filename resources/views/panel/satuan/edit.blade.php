<form action="{{ route('uSatuan',$edit->id) }}" method="post">
    @csrf
    <div class="form-group"> 
        <label>Nama Satuan</label> 
        <input name="name" type="text" value="{{ $edit->name }}" class="form-control" placeholder="Email"> 
    </div>
    <button class="btn btn-primary">Submit</button>
</form>