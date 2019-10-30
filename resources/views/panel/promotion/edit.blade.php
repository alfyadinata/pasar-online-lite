<form action="" method="post">
    @csrf
    <div class="form-group">
        <label>Uri Product</label>
        <input type="text" value="{{ $edit->slug }}" name="slug" class="form-control">
    </div>
    <div class="form-group">
        <label>Notes</label>
        <textarea name="message" rows="3" class="form-control">{{ $edit->message }}</textarea>
    </div>
    <center>
        <button class="btn btn-primary">Submit</button>
    </center>
</form>