@extends('layouts.backend')

@section('css_after')
        <link rel="stylesheet" href="{{asset('/js/plugins/summernote/summernote-bs4.css') }}">
        <link rel="stylesheet" href="{{asset('/js/plugins/simplemde/simplemde.min.css') }}">
@stop

@section('content')

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<div class="block" style="margin-bottom: 0px; height: 100%;">
    <div class="block-header">
        <h1 class="block-title">Thêm mới bài viết
        </h1>
    </div>
    <div style="padding: 0px 6%; height:100% ">
        <div style="min-width:100%; margin-top: 20px">
            <h1 class="block-title" style="text-align: center;">Nhập thông tin bài viết</h1>
            <p style="margin: 0px auto; border: 1px solid blue; width: 8%;"></p>
        </div>
        <form method="post" action="{{route('createArticle')}}" enctype="multipart/form-data">
            @csrf
            <div class="row" style="min-width:100%; margin-top: 30px">
                <div class="col-md-12">
                    <div class="form-group">
                        <label>Tên bài viết<span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="name" placeholder="Nhập tên tên ">
                    </div>
                    <div class="form-group">
                        <label>Mô tả ngắn <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="subDescription" placeholder="Nhập mô tả ngắn ">
                    </div>
                    <div class="form-group">
                        <label for="example-select">Danh mục</label>
                        <select class="form-control" id="example-select" name="categori">
                            @foreach($categori as $data)
                                <option value="{{$data->id}}">{{$data->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Ảnh bài viết <span class="text-danger">*</span></label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" data-toggle="custom-file-input" id="example-file-input-custom" name="image" accept=".png, .jpg, .jpeg">
                            <label class="custom-file-label">Chọn ảnh</label>
                        </div>
                    </div>


                    <div class="block" >
                        <label>Nội dụng bài viết <span class="text-danger">*</span></label>
                        <div class="block-content block-content-full" style="padding: 0px">
                            <!-- Summernote Container -->
                            <textarea class="js-summernote" name="description"></textarea>
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
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
    <script>jQuery(function(){ One.helpers(['summernote', 'ckeditor', 'simplemde']); });</script>
    <script src=" {{ asset('/js/plugins/summernote/summernote-bs4.min.js') }}"></script>
    <script src=" {{ asset('/js/plugins/ckeditor/ckeditor.js') }}"></script>
    <!-- page -->
    <script src=" {{ asset('js/plugins/simplemde/simplemde.min.js') }}"></script>
@stop
