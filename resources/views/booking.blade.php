@extends('layouts.client')

@section('content')

<style>
    .bg {
        background: #95c41f;
        color: #37404d;
    }
</style>

<div class="container" style="padding: 30px 0px">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="submit-address">
                <form method="POST" enctype="multipart/form-data" action="javascript:;">
                @csrf
                    <div class="main-title-2 text-center">
                        <h1>Thông tin đặt lịch</h1>
                    </div>
                    <div class="search-contents-sidebar mb-30">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Họ và tên (có dấu)</label>
                                    <input type="text" class="input-text" name="name" placeholder="Họ và tên" id="name">
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Ngày sinh</label>
                                            <input type="date" class="input-text" name="birthday" id="date">
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" class="input-text" name="email" placeholder="Email" id="email">
                                        </div>
                                        <div class="form-group">
                                            <label>Khoa</label>
                                            <select class="selectpicker search-fields khoa" id="khoa" name="khoa" >
                                                <option>Chọn khoa</option>
                                                @foreach($khoa as $data)
                                                <option value="{{$data->id}}">{{$data->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Giới tính</label>
                                            <div class="gender" style="height: 44px; line-height: 44px">
                                                <input type="radio" name="gender" checked="checked" value="nam"> <label>Nam</label>
                                                <input type="radio" name="gender" value="nu"> <label>Nữ</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Số điện thoại</label>
                                            <input type="text" class="input-text" name="phone" placeholder="Phone">
                                        </div>
                                        <div class="form-group">
                                            <label>Ngày khám</label>
                                            <input type="date" id="bookingDate" class="input-text" name="bookingDate">
                                        </div>
                                    </div>

                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="row mb-30">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Khung giờ</label>
                                <div class="row" id="timeBooking">
                                    <div class="col-md-12">Chọn ngày để hiển thị khung giờ</div>
                                    <!-- time slot -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Ghi chú</label>
                                <textarea class="input-text" id="note" name="note" placeholder="Nội dung khám bệnh"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div id="doctor"></div>
                        <div class="col-md-12 text-center">
                            <button id="btn-submit" class="btn button-md button-theme">Gửi</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

    </div>
  </div>

@endsection

@section('js_after')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script type="text/javascript">

//pusher




    var length_time = 0;
    var id = 0;

    $("#bookingDate").change(function() {
        $("#timeBooking").empty();
        var date = $(this).val();
        console.log(date)
        $.ajax({
            url: "{{ route('showTime') }}?date=" + date,
            method: 'GET',
            contentType: "application/json",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                console.log(data.time)
                length_time = data.count;
                $('#timeBooking').append(data.html);
            },
            error: function(err) {
                console.log(err);
            },
        });
    });

    function getIdTime( idTime ) {
        var time = $("#time_"+idTime);
        time.addClass("bg").siblings().removeClass("bg");
        return id_Time = idTime;
    }


    $("#btn-submit").click(function() {
        var name = $("input[name=name]").val();
        var email = $("input[name=email]").val();
        var birthday = $("input[name=birthday]").val();
        var khoa = $("#khoa option:selected" ).val();
        var gender = $("input[name='gender']:checked").val();
        var phone = $("input[name=phone]").val();
        var bookingDate = $("input[name=bookingDate]").val();
        var note = $("#note").val();
        // $("#myModal").modal();
        if( name  && email && birthday && khoa && gender  && phone && bookingDate && note && id_Time) {
            $.ajax({
                method: 'POST',
                url: '/ajaxRequest',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                dataType:'json',

                data: {
                    name: name,
                    email: email,
                    birthday: birthday,
                    khoa: parseInt(khoa),
                    gender: gender,
                    phone: phone,
                    bookingDate: bookingDate,
                    id_time: id_Time,
                    note: note
                },

                success: function(data) {
                    if(data.status === 200) {

                        toastr.success('Bạn đã đặt lich thành công!');
                        toastr.options = {
                            "closeButton": false,
                            "debug": false,
                            "newestOnTop": false,
                            "progressBar": false,
                            "positionClass": "toast-top-right",
                            "preventDuplicates": false,
                            "onclick": null,
                            "showDuration": "300",
                            "hideDuration": "1000",
                            "timeOut": "5000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut"
                        }

                     setInterval(function(){ location.reload(true); }, 5000);

                    }
                },
                error: function(err) {
                    console.log(err);
                },
            });
        } else {
            alert('dđ')
        }

    });
</script>
@stop
