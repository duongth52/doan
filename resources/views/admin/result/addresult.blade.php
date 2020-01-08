@extends('layouts.backend')

@section('css_after')
<link rel="stylesheet" href="{{asset('/js/plugins/select2/css/select2.min.css') }}">
<link rel="stylesheet" href="{{asset('/js/plugins/summernote/summernote-bs4.css') }}">
<link rel="stylesheet" href="{{asset('/js/plugins/simplemde/simplemde.min.css') }}">
@stop

@section('content')

<style>
    #disease {
        display: none
    }

    .hiddenSelector {
        display: none
    }
    .showSelector {
        display: block
    }
    .select2-selection--single {
        height: calc(1.5em + .75rem + 2px) !important;
    }
</style>


<div class="block" style="margin-bottom: 0px; height: 100%;">
    <div class="block-header">
        <h1 class="block-title">Thêm mới kết quả
        </h1>
    </div>
    <div>

    </div>
    <div style="padding: 0px 6%; height:100% ">
        <div style="min-width:100%; margin-top: 20px">
            <h1 class="block-title" style="text-align: center;">Nhập thông tin kết quả</h1>
            <p style="margin: 0px auto; border: 1px solid blue; width: 8%;"></p>
        </div>
        @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif

        <form method="post" action="{{route('createResult')}}" enctype="multipart/form-data">
            @csrf
            <div class="row" style="min-width:100%; margin-top: 30px">

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Tên bệnh<span class="text-danger">*</span></label>
                        <div id="selector-disease" style="margin-bottom: 16px">
                            <select  class="js-select2 form-control" id="val-select2" name="diseaseName" style="width: 100%;" data-placeholder="Chọn bệnh">
                                <option></option>
                                @foreach ($diseaseName as $name)
                                <option value="{{$name->id}}">{{$name->name}}</option>
                                @endforeach
                            </select>
                            <!-- <textarea class="w-100" style="height: 130px" name="content_result"></textarea> -->
                        </div>
                        <div style="margin-bottom: 16px">
                            <a style="color: white" class="btn btn-info disease-toggle" id="#disease">Thêm bệnh</a>
                            <div id="disease" style="margin-top: 16px">
                                <label>Tên khoa<span class="text-danger">*</span></label>
                                <select  class="js-select2 form-control" id="val-select" name="khoa" style="width: 100%;" data-placeholder="Chọn khoa">
                                    <option></option>
                                    @foreach ($khoa as $k)
                                    <option value="{{$k->id}}">{{$k->name}}</option>
                                    @endforeach
                                </select>
                                <label>Tên bệnh<span class="text-danger">*</span></label>
                                <input style="width: 100%; " type="text" class="form-control"  name="diseaseNew" placeholder="Nhập mới tên bệnh ">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Mô tả bệnh <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="description" placeholder="Nhập mô tả bệnh ">
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
                        <input type="text" class="form-control" name="nameDoctor" placeholder="Nhập tên tên" value="{{Auth::user()->name}}" readonly>
                    </div>
                    <div class="form-group">
                        @if($patient)
                            <label>Tên bệnh nhân <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="namePatient" value="{{$patient->name}}" readonly>
                            <input type="text" style="display: none" class="form-control" name="id_patient" value="{{$patient->id}}" readonly>
                        @else
                            <label>Mã bệnh nhân <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="id_patient" placeholder="Mã bệnh nhân">
                        @endif
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="block">
                        <label>Đơn thuốc</label>
                        <div class="block-content block-content-full" style="padding: 0px">
                            <!-- Summernote Container -->
                            <textarea class="js-summernote" name="prescription"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div style="float:right">
                            <!-- <button type="submit" class="btn btn-danger" style="opacity: 0.3; color: black;"> gửi email</button>
                        <button type="submit" class="btn btn-primary" style="opacity: 0.3; color: black;"> Sửa thông tin</button> -->
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
        One.helpers('select2');
    });
</script>
<script src=" {{ asset('/js/plugins/select2/js/select2.full.min.js') }} "></script>

<script src=" {{ asset('/js/plugins/summernote/summernote-bs4.min.js') }}"></script>
<script src=" {{ asset('/js/plugins/ckeditor/ckeditor.js') }}"></script>
<!-- page -->
<script src=" {{ asset('/js/plugins/simplemde/simplemde.min.js') }}"></script>
<!-- Page JS Plugins -->

<script>
    $(document).ready(function() {
        $('.disease-toggle').click(function() {
            //get collapse content selector
            var collapse_content_selector = $(this).attr('id');

            //make the collapse content to be shown or hide
            var toggle_switch = $(this);
            $(collapse_content_selector).toggle(function() {
                if ($(this).css('display') == 'none') {
                    //change the button label to be 'Show'
                    toggle_switch.html('Thêm bệnh');
                    $('#selector-disease').addClass("showSelector").removeClass("hiddenSelector")

                } else {
                    //change the button label to be 'Hide'
                    toggle_switch.html('Ẩn thêm bệnh');
                    console.log($('#val-select2'))
                     $('#selector-disease').addClass("hiddenSelector").removeClass("showSelector")
                }
            });
        });

    });
</script>
@stop
