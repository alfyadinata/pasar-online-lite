<form action="" method="post">
    @csrf
    <table class="table table-bordered" id="dynamic"> 
        <thead>
            <tr>
                <th>Nama </th>
                <th>Email</th>
                <th>Password</th>                
                <th>Aksi</th> 
            </tr> 
        </thead> 
        <tbody>
            <tr>
                <td><input required type="text" name="name[]" class="form-control"></td> 
                <td><input required type="email" name="email[]" class="form-control"></td>
                <td><input required type="password" name="password[]" class="form-control"></td>
                <td><button type="button" class="btn btn-primary" id="plus">+</button></td> 
            </tr>
    </table> 
    <button class="btn btn-primary">Submit</button>
</form>

<script>
    // dynamic field
    var no =1;

    $('#plus').click(function(){
        no++;
        $('#dynamic').append(
            '<tr id="row'+no+'"><td><input type="text" name="name[]" required class="form-control"></td><td><input required type="email" name="email[]" class="form-control"></td><td><input required type="password" name="password[]" class="form-control"></td><td><button type="button" id="'+no+'" class="btn btn-danger btn_remove">-</button></td></tr>'
        );
    });

    $(document).on('click', '.btn_remove', function(){
        var button_id = $(this).attr("id"); 
        $('#row'+button_id+'').remove();
    });
</script>