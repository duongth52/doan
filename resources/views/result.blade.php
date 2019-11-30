@extends('layouts.client')

@section('content')

<style>
  table th {
    border-right: 0px !important
  }
</style>
<div class="row" style="min-height: 60vh; margin-top : 20px">
  <div class="col-md-12">
    <div class="form-group d-flex text-center">
      <input style="min-height: 50px; max-height: 50px; width: 200px" type="text" name="id_patient" class="input-text" placeholder="Nhập mã bệnh nhân">
      <button style="min-height: 50px; max-height: 50px" type="submit" class="button-md button-theme" id="btn-check">Xem</button>
    </div>
  </div>

  <div class="col-md-12">
    <div class="container" id="result">

    </div>
  </div>
</div>

@endsection


@section('js_after')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script>
  $("#btn-check").click(function() {

    if($('#showResult')){
        $('#showResult').remove()
    }

    var id_patient = $("input[name=id_patient]").val();

    if (id_patient) {
      $.ajax({
        method: 'GET',
        url: '/getResult',
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        dataType: 'json',

        data: {
          id_patient: id_patient
        },

        success: function(data) {
            $('#result').append(data.data);

        },
        error: function(err) {
          console.log(err);
        },
      });
    } else {
      alert('Bạn cần nhập mã code !')
    }

  })
</script>



@stop
