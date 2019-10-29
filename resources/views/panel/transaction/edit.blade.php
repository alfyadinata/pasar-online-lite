<form action="" method="post">
    <div class="form-group">
        <label>Pembeli</label>
        <input value="{{ $edit->user->name }}" readonly type="text" class="form-control">
    </div>
    <div class="form-group">
        <label>Invoice</label>
        <input value="{{ $edit->invoice }}" readonly type="text" class="form-control">
    </div>
    <div class="form-group">
        <label>Alamat Penerima</label>
        <textarea class="form-control" readonly>{{ $edit->receiver_address }}</textarea>
    </div>
    <div class="form-group">
        <label>Sub Total</label>
        <input value="" readonly type="text" class="form-control">
    </div>
</form>