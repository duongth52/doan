@extends('layouts.client')


@section('content')

<style>
    .bg {
        background: #95c41f;
        color: #37404d;
    }


    .modal {
    position: absolute;
    z-index: 10000; /* 1 */
    top: 0;
    left: 0;
    visibility: hidden;
    width: 100%;
    height: 100%;
}

.modal.is-visible {
    visibility: visible;
}

.modal-overlay {
  position: fixed;
  z-index: 10;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: hsla(0, 0%, 0%, 0.5);
  visibility: hidden;
  opacity: 0;
  transition: visibility 0s linear 0.3s, opacity 0.3s;
}

.modal.is-visible .modal-overlay {
  opacity: 1;
  visibility: visible;
  transition-delay: 0s;
}

.modal-wrapper {
  position: absolute;
  z-index: 9999;
  top: 6em;
  left: 50%;
  width: 32em;
  margin-left: -16em;
  background-color: #fff;
  box-shadow: 0 0 1.5em hsla(0, 0%, 0%, 0.35);
}

.modal-transition {
  transition: all 0.3s 0.12s;
  transform: translateY(-10%);
  opacity: 0;
}

.modal.is-visible .modal-transition {
  transform: translateY(0);
  opacity: 1;
}

.modal-header,
.modal-content {
  padding: 1em;
}

.modal-header {
  position: relative;
  background-color: #fff;
  box-shadow: 0 1px 2px hsla(0, 0%, 0%, 0.06);
  border-bottom: 1px solid #e8e8e8;
}

.modal-close {
  position: absolute;
  top: 0;
  right: 0;
  padding: 1em;
  color: #aaa;
  background: none;
  border: 0;
}

.modal-close:hover {
  color: #777;
}

.modal-heading {
  font-size: 1.125em;
  margin: 0;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.modal-content > *:first-child {
  margin-top: 0;
}

.modal-content > *:last-child {
  margin-bottom: 0;
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


<div class="modal">
    <div class="modal-overlay modal-toggle"></div>
    <div class="modal-wrapper modal-transition">
      <div class="modal-header">
        <button class="modal-close modal-toggle"><svg class="icon-close icon" viewBox="0 0 32 32"><use xlink:href="#icon-close"></use></svg></button>
        <h2 class="modal-heading">This is a modal</h2>
      </div>

      <div class="modal-body">
        <div class="modal-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit eum delectus, libero, accusantium dolores inventore obcaecati placeat cum sapiente vel laboriosam similique totam id ducimus aperiam, ratione fuga blanditiis maiores.</p>
          <button class="modal-toggle">Update</button>
        </div>
      </div>
    </div>
  </div>

@endsection

@section('js_after')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script type="text/javascript">

    var length_time = 0;
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
        time.parent().siblings().children().removeClass("bg");//.removeClass("bg").children()
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
                        $('.modal').toggleClass('is-visible');

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
