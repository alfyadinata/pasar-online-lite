<form action="{{ route('uCashier',$edit->uuid) }}" method="post">
    @csrf
    <div class="form-group"> 
        <label>Nama </label> 
        <input name="name" type="text" value="{{ $edit->name }}" class="form-control" placeholder="Nama"> 
    </div>

    <div class="form-group"> 
        <label>No Telpon </label> 
        <input name="phone_number" type="text" value="{{ $edit->phone_number }}" class="form-control" placeholder="No Telpon"> 
    </div>

    <div class="form-group"> 
        <label>Email </label> 
        <input name="email" type="email" value="{{ $edit->email }}" class="form-control" placeholder="Email"> 
    </div>

    <div class="form-group">
        <label for="">Status</label>
        <select name="active" class="form-control">
            <option value="0">Non-Aktif</option>
            <option value="1" {{ $edit->active == 1 ? "selected" : "" }} >Aktif</option>
        </select>
    </div>

    <div class="form-group"> 
        <label>Password </label> 
        <input name="password" type="password" class="form-control" placeholder="Password"> 
    </div>

    <button class="btn btn-primary">Submit</button>
</form>