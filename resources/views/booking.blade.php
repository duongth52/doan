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
                                            <select class="selectpicker search-fields khoa" id="khoa" name="khoa">
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
                            <button style="display:none" type="button" class="btn btn-info btn-lg btn-booking-success" data-toggle="modal" data-target="#myModal">Open Modal</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><strong>Thông báo</strong></h4>
            </div>
            <div class="modal-body" id="modal-content">

            </div>
            <div class="modal-footer">
                <button id="closemodal" type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>

    </div>
</div>
</div>

@endsection

@section('js_after')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script type="text/javascript">
    var id = 0;

    $("#bookingDate").change(function() {
        $("#timeBooking").empty();
        var date = $(this).val();
        $.ajax({
            url: "{{ route('showTime') }}?date=" + date,
            method: 'GET',
            contentType: "application/json",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                if(data.status === 200) {
                    $('#timeBooking').append(data.html);
                }else {
                    alert('chọn ngày khám chưa chính sác')
                }
                console.log(data.time)
            },
            error: function(err) {
                console.log(err);
            },
        });
    });



    function getIdTime(idTime) {
        var time = $("#time_" + idTime);

        time.addClass("bg").siblings().removeClass("bg");
        time.parent().siblings().children().removeClass("bg");
        return id_Time = idTime;
    }


    function validateEmail(email) {
        var reg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if (reg.test(email)) {
            return true;
        }
        return false;
    }

    $("#btn-submit").click(function() {

        var name = $("input[name=name]").val();
        var email = $("input[name=email]").val();
        var birthday = $("input[name=birthday]").val();
        var khoa = $("#khoa option:selected").val();
        var gender = $("input[name='gender']:checked").val();
        var phone = $("input[name=phone]").val();
        var bookingDate = $("input[name=bookingDate]").val();
        var note = $("#note").val();


        if (validateEmail(email) && email) {
        if (name && email && birthday && khoa && gender && phone && bookingDate && note && id_Time) {

                $.ajax({
                    method: 'POST',
                    url: '/ajaxRequest',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    dataType: 'json',

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

                        console.log(data.time)
                        switch (data.status) {
                            case 200:

                                $("#modal-content").html(
                                    "<div id=\"content-model\">"+
                                    "<p><strong >Tên bệnh nhân: </strong>" + data.data.name + "</p>" +
                                    "<p><strong>Ngày khám: </strong>" + data.data.book_date + "</p>" +
                                    "<p><strong>Giờ khám: </strong>" + data.time + "</p>" +
                                    "<p><strong>Địa chỉ: </strong> 175 Tây Sơn, Đống Đa, Hà Nội </p>"+
                                    "</div>"
                                );

                                //send mail booking
                                    // console.log(data)
                                $.ajax({
                                    method: 'POST',
                                    url: '/ajaxBooking',
                                    headers: {
                                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                    },
                                    dataType: 'json',

                                    data: {
                                        name: data.data.name,
                                        code_destroy: data.data.code_destroy,
                                        date: data.data.book_date,
                                        email: data.data.email,
                                        time: data.time
                                    },

                                    success: function(data) {},
                                    error: function(err) {
                                        console.log(err);
                                    },
                                });

                                $(".btn-booking-success").click()
                                //location.reload(true);
                                break;
                            case 301:
                                $("#modal-content").html(
                                    "<div id=\"content-model\">"+
                                        "<p>Ngày khám đã tồn tại !</p>" +
                                    "</div>"
                                );
                                $(".btn-booking-success").click()
                                break;
                            default:
                                break;
                        }
                    },
                    error: function(err) {
                        console.log(err);
                    },
                });
            }else {

                $("#modal-content").html(
                    "<div id=\"content-model\">"+
                        "<p>Bạn cần nhập đầy đủ thông tin !</p>"+
                    "</div>"
                );
                $(".btn-booking-success").click()
                // /alert('Bạn nhập sai định dạng Email hoặc số điện thoại')

            }

        } else {
            $("#modal-content").html(
                "<div id=\"content-model\">"+
                    "<p>Bạn nhập sai định dạng Email hoặc số điện thoại !</p>"+
                "</div>"
            );
            $(".btn-booking-success").click()
          //  alert('Bạn cần nhập đầy đủ thông tin !')
        //    $("#modal-content").html(
        //         "<div id=\"content-model\">"+
        //             "<p>Bạn cần nhập đầy đủ thông tin !</p>"+
        //         "</div>"
        //     );
        //     $(".btn-booking-success").click()
         }

    });

    $('#closemodal').click(function() {
        if($('#content-model')){
            $('#content-model').remove();
        }
    });


</script>
@stop
