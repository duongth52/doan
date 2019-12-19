@extends('layouts.backend')

@section('css_after')
<link rel="stylesheet" href="{{asset('/js/plugins/summernote/summernote-bs4.css') }}">
<link rel="stylesheet" href="{{asset('/js/plugins/simplemde/simplemde.min.css') }}">
@stop

@section('content')

<div class="block" style="margin-bottom: 0px; height: 100%;">
    <div class="block-header">
        <h1 class="block-title">Sửa kết quả
        </h1>
    </div>
    <div style="padding: 0px 6%; height:100% ">
        <div style="min-width:100%; margin-top: 20px">
            <h1 class="block-title" style="text-align: center;">Nhập lại thông tin kết quả</h1>
            <p style="margin: 0px auto; border: 1px solid blue; width: 8%;"></p>
        </div>
        <form method="post" action="{{route('updateResult', $result->id)}}" enctype="multipart/form-data">
            @csrf
            <div class="row" style="min-width:100%; margin-top: 30px">

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Tên bệnh<span class="text-danger">*</span></label>
                        <div>
                            <textarea class="w-100" style="height: 130px" name="content_result">{{$result->content_result}}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Mô tả bệnh <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="description" placeholder="Nhập mô tả bệnh" value="{{$result->description}}" >
                    </div>
                    <div class="form-group">
                        <label>Ảnh <span class="text-danger">*</span></label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" data-toggle="custom-file-input" id="example-file-input-custom" name="image" accept=".png, .jpg, .jpeg">
                            <label class="custom-file-label">Chọn ảnh</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Tên bác sĩ</label>
                        <input type="text" class="form-control" name="nameDoctor" placeholder="Nhập tên tên" value="{{$result->doctorName}}" readonly>
                    </div>
                    <div class="form-group">
                        <label>Tên bệnh nhân</label>
                        <input type="text" class="form-control" name="namePatient" placeholder="Tên bệnh nhân" value="{{$result->patientName}}" readonly>
                        <input type="text" style="display: none" class="form-control" name="id_patient" placeholder="Tên bệnh nhân" value="{{$result->id_patient}}">
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="block">
                        <label>Đơn thuốc</label>
                        <div class="block-content block-content-full" style="padding: 0px">
                            <!-- Summernote Container -->
                            <textarea class="js-summernote" name="prescription">{{$result->prescription}}</textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div style="float:right">
                        <button type="submit" class="btn btn-danger" style="opacity: 0.3; color: black;" > Gửi lại email</button>
                        <button type="submit" class="btn btn-primary" style="opacity: 0.3; color: black;"> Sửa thông tin</button>
                        <button type="submit" class="btn btn-primary"> Lưu thông tin</button>
                        </div>
                    </div>

                </div>
            </div>
        </form>
    </div>
</div>

@endsection

@section('js_after')
<script>
    jQuery(function() {
        One.helpers(['summernote', 'ckeditor', 'simplemde']);
    });
</script>
<script src=" {{ asset('/js/plugins/summernote/summernote-bs4.min.js') }}"></script>
<script src=" {{ asset('/js/plugins/ckeditor/ckeditor.js') }}"></script>
<!-- page -->
<script src=" {{ asset('js/plugins/simplemde/simplemde.min.js') }}"></script>
@stop
