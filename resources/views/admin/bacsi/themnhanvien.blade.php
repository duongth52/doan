@extends('layouts.backend')

@section('css_after')
<link rel="stylesheet" href="{{asset('/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
@stop

@section('content')

<div class="block" style="margin-bottom: 0px; height: 100%;">
    <div class="block-header">
        <h1 class="block-title">Tạo thông tin bác sĩ
        </h1>
    </div>
    <div style="padding: 0px 6%; height:100% ">
        <div style="min-width:100%; margin-top: 20px">
            <h1 class="block-title" style="text-align: center;">Nhập thông tin bác sĩ

            </h1>
            <p style="margin: 0px auto; border: 1px solid blue; width: 8%;"></p>
        </div>
        <form method="post" action="{{route('add')}}" enctype="multipart/form-data">
            @csrf
            <div class="row" style="min-width:100%; margin-top: 30px">
                <div class="col-md-4 offset-md-1">
                    <div class="form-group">
                        <label>Họ và tên (có dấu) <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="name" placeholder="Nhập tên bệnh nhân">
                        @foreach($errors->get('name') as $error)
                        <div class="alert alert-danger">
                            {{ $error }}
                        </div>
                        @endforeach
                    </div>
                    <div class="form-group">
                        <label>Số điện thoại <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="phone" placeholder="Nhập số điện thoại">
                        @foreach($errors->get('phone') as $error)
                        <div class="alert alert-danger">
                            {{ $error }}
                        </div>
                        @endforeach
                    </div>
                    <div class="form-group">
                        <label>Email <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="email" placeholder="Nhập Email">
                        @foreach($errors->get('email') as $error)
                        <div class="alert alert-danger">
                            {{ $error }}
                        </div>
                        @endforeach
                    </div>
                    <div class="form-group">
                        <label style="display:block">Ngày sinh <span class="text-danger">*</span></label>
                        <input type="text" class="js-datepicker form-control" id="example-datepicker2" name="birthday" data-week-start="1" data-autoclose="true" data-today-highlight="true" data-date-format="dd/mm/yy" placeholder="dd/mm/yy">
                        @foreach($errors->get('ngaysinh') as $error)
                        <div class="alert alert-danger">
                            {{ $error }}
                        </div>
                        @endforeach
                    </div>
                    <div class="form-group">
                        <label class="d-block">Giới tính <span class="text-danger">*</span></label>


                        <div class="custom-control custom-radio custom-control-inline custom-control-lg">
                            <input type="radio" class="custom-control-input" id="example-rd-custom-inline-lg2" name="gioitinh" value="nam" checked>
                            <label class="custom-control-label" for="example-rd-custom-inline-lg2">Nam</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline custom-control-lg">
                            <input type="radio" class="custom-control-input" id="example-rd-custom-inline-lg3" name="gioitinh" value="nu">
                            <label class="custom-control-label" for="example-rd-custom-inline-lg3">Nữ</label>
                        </div>


                        <!-- <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="example-rd-custom-inline2" name="gioitinh" value="1" checked>
                            <label class="custom-control-label">Nam </label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="example-rd-custom-inline3" name="gioitinh" value="0">
                            <label class="custom-control-label">Nữ</label>
                        </div> -->
                    </div>
                </div>
                <div class="col-md-4 offset-md-1">
                    <div class="form-group">
                        <label>chyên môn <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="chuyenmon" placeholder="Nhập chuyên môn">
                    </div>

                    <div class="form-group">
                        <label>Ảnh đại diện <span class="text-danger">*</span></label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" data-toggle="custom-file-input" id="example-file-input-custom" name="avatar" accept=".png, .jpg, .jpeg">
                            <label class="custom-file-label">Chọn ảnh</label>
                        </div>
                        @foreach($errors->get('avatar') as $error)
                        <div class="alert alert-danger">
                            {{ $error }}
                        </div>
                        @endforeach
                    </div>

                    <div class="form-group">
                        <label>Địa chỉ <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="diachi" placeholder="Nhập địa chỉ">
                    </div>
                    <div class="form-group">
                        <label>Khoa khám bệnh <span class="text-danger">*</span></label>
                        <select class="form-control" id="example-select" name="khoa">
                            @foreach($khoa as $data )
                            <option value="{{$data->id}}">{{$data->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="col-md-9 offset-md-1">
                    <div style="float:right">
                        <button type="submit" class="btn btn-primary"> Lưu thông tin</button>
                    </div>
                </div>
            </div>
        </form>

    </div>
</div>

@endsection


@section('js_after')
<script src=" {{ asset('/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}"></script>
<script src=" {{ asset('/js/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js') }}"></script>
<script>
    jQuery(function() {
        One.helpers(['datepicker']);
    });
</script>
@stop
