@extends('layouts.backend')

@section('css_after')


<link rel="stylesheet" href="{{asset('/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
@stop

@section('content')

<div class="block" style="margin-bottom: 0px; height: 100%;">
    <div class="block-header">
        <h1 class="block-title">Tạo mới booking</h1>
    </div>
    <div style="padding: 0px 6%; height:100% ">
        <div style="min-width:100%; margin-top: 20px">
            <h1 class="block-title" style="text-align: center;">Nhập thông tin booking</h1>
            <p style="margin: 0px auto; border: 1px solid blue; width: 8%;"></p>
        </div>
        <form action="">
            <div class="row" style="min-width:100%; margin-top: 30px">
                <div class="col-md-4 offset-md-1">
                    <div class="form-group">
                        <label>Họ và tên (có dấu) <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="name" placeholder="Nhập tên bệnh nhân">
                    </div>
                    <div class="form-group">
                        <label>Số điện thoại <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="phone" placeholder="Nhập số điện thoại">
                    </div>
                    <div class="form-group">
                        <label>Email <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="email" placeholder="Nhập Email">
                    </div>
                    <div class="form-group" style="max-width: 50%">
                        <label>Ngày sinh <span class="text-danger">*</span></label>
                        <input type="text" class="js-datepicker form-control" id="example-datepicker2" name="ngaysinh" data-week-start="1" data-autoclose="true" data-today-highlight="true" data-date-format="dd/mm/yy" placeholder="dd/mm/yy">
                    </div>
                    <div class="form-group">
                        <label class="d-block">Giới tính <span class="text-danger">*</span></label>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="example-rd-custom-inline2" name="gioitinh" checked>
                            <label class="custom-control-label" for="example-rd-custom-inline2">Nam </label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="example-rd-custom-inline3" name="gioitinh">
                            <label class="custom-control-label" for="example-rd-custom-inline3">Nữ</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 offset-md-1">
                    <div class="form-group">
                        <label>Địa chỉ <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="name" placeholder="Nhập địa chỉ">
                    </div>
                    <!-- <div class="form-group">
                        <label>Khoa khám bệnh <span class="text-danger">*</span></label>
                        <select class="form-control" id="example-select" name="example-select">
                            <option value="0">khoa nhi</option>
                            <option value="1">Option #1</option>
                            <option value="2">Option #2</option>
                        </select>
                    </div> -->
                    <div class="form-group">
                        <label>Ghi chú <span class="text-danger">*</span></label>
                        <textarea class="form-control" id="ghichu" name="ghichu" rows="4" placeholder="Ghi chú ..."></textarea>
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
