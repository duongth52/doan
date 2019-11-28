@extends('layouts.client')

@section('content')

<div class="container" style="padding: 30px 0px">
    <div class="row">
        <div class="col-md-12">
            <div class="submit-address">
                <form method="POST" enctype="multipart/form-data">
                    <div class="main-title-2 text-center">
                        <h1>Thông tin đặt lịch</h1>
                    </div>
                    <div class="search-contents-sidebar mb-30">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Họ và tên (có dấu)</label>
                                    <input type="text" class="input-text" name="name" placeholder="Họ và tên">
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Ngày sinh</label>
                                            <input type="date" class="input-text" name="birthday">
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" class="input-text" name="email" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            @csrf
                                            <label>Giới tính</label>
                                            <div class="gender" style="height: 44px; line-height: 44px">
                                                <input type="radio" name="gender" checked="checked"> <label>Nam</label>
                                                <input type="radio" name="gender"> <label>Nữ</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Số điện thoại</label>
                                            <input type="text" class="input-text" name="phone" placeholder="Phone">
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label>Khoa</label>
                                    <select class="selectpicker search-fields" id="khoa" name="khoa">
                                        <option>Chọn khoa</option>
                                        @foreach($khoa as $data)
                                            <option value="{{$data->id}}">{{$data->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Bác sĩ</label>
                                    <select id="doctor" name="doctor">
                                        <option>select doctor</option>
                                    </select>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Ngày khám</label>
                                            <input type="date" class="input-text">
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
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                                        <div class="agent-1">
                                            <div class="agent-content" style="padding: 10px 0px">
                                                <h5 style="margin-bottom: 10px">8:00 AM</h5>
                                                <hr style="margin: 0px"/>
                                                <p>Số lượng còn</p>
                                                <h5 style="margin: 0px">10</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                                        <div class="agent-1">
                                            <div class="agent-content" style="padding: 10px 0px">
                                                <h5 style="margin-bottom: 10px">8:00 AM</h5>
                                                <hr style="margin: 0px"/>
                                                <p>Số lượng còn</p>
                                                <h5 style="margin: 0px">10</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                                        <div class="agent-1">
                                            <div class="agent-content" style="padding: 10px 0px">
                                                <h5 style="margin-bottom: 10px">8:00 AM</h5>
                                                <hr style="margin: 0px"/>
                                                <p>Số lượng còn</p>
                                                <h5 style="margin: 0px">10</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                                        <div class="agent-1">
                                            <div class="agent-content" style="padding: 10px 0px">
                                                <h5 style="margin-bottom: 10px">8:00 AM</h5>
                                                <hr style="margin: 0px"/>
                                                <p>Số lượng còn</p>
                                                <h5 style="margin: 0px">10</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                                        <div class="agent-1">
                                            <div class="agent-content" style="padding: 10px 0px">
                                                <h5 style="margin-bottom: 10px">8:00 AM</h5>
                                                <hr style="margin: 0px"/>
                                                <p>Số lượng còn</p>
                                                <h5 style="margin: 0px">10</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                                        <div class="agent-1">
                                            <div class="agent-content" style="padding: 10px 0px">
                                                <h5 style="margin-bottom: 10px">8:00 AM</h5>
                                                <hr style="margin: 0px"/>
                                                <p>Số lượng còn</p>
                                                <h5 style="margin: 0px">10</h5>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Ghi chú</label>
                                <textarea class="input-text" name="message" placeholder="Nội dung khám bệnh"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <a href="#" class="btn button-md button-theme">Gửi</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>

@endsection

@section('js_after')
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript">
        $("#khoa").change(function(){
            $.ajax({
                url: "{{ route('showDoctor') }}?id_khoa=" + $(this).val(),
                method: 'GET',
                success: function(data) {
                    $('#doctor').append(data.html);
                }
            });
        });
    </script>
@stop
