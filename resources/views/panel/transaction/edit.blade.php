<form action="{{ route('declineTransaction',$edit->uuid) }}" method="get" onsubmit="return confirm('Yakin Batalkan Transaksi ?');">
    <div class="form-group">
        <label>Pembeli</label>
        <input value="{{ $edit->user->name }}" readonly type="text" class="form-control">
    </div>
    <div class="form-group">
        <label>Invoice</label>
        <input value="{{ $edit->invoice }}" readonly type="text" class="form-control">
    </div>
    <div class="form-group">
        <label>Catatan</label>
        <textarea readonly class="form-control">{{ $edit->message }}</textarea>
    </div>
    <div class="form-group">
        <label>Alamat Penerima</label>
        <textarea class="form-control" readonly>{{ $edit->receiver_address }}</textarea>
    </div>
    <div class="form-group">
        <label>Sub Total</label>
        <input value="{{ $edit->total }}" readonly type="text" class="form-control">
    </div>
    <div class="form-group">
        <label>Batalkan ?</label>
        <select name="cancel" class="form-control">
            <option value="6">Oleh Penjual</option>
            <option value="7">Oleh Pembeli</option>
        </select>
    </div>
    <center>
        <button class="btn btn-dark">Submit</button>
    </center>
</form>