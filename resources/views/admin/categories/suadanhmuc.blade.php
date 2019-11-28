@extends('layouts.backend')

@section('content')

<div class="block" style="margin-bottom: 0px; height: 100%;">
    <div class="block-header">
        <h1 class="block-title">Sửa danh mục
        </h1>
    </div>
    <div style="padding: 0px 6%; height:100% ">
        <div style="min-width:100%; margin-top: 20px">
            <h1 class="block-title" style="text-align: center;">Nhập thông tin danh mục</h1>
            <p style="margin: 0px auto; border: 1px solid blue; width: 8%;"></p>
        </div>
        <form method="post" action="{{route('updateCategori', $categori->id)}}" enctype="multipart/form-data">
            @csrf
            <div class="row" style="min-width:100%; margin-top: 30px">
                <div class="col-md-12">
                    <div class="form-group">
                        <label>Tên danh mục <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="name" placeholder="Nhập tên tên " value="{!!$categori->name!!}">
                    </div>
                    <div class="form-group">
                        <label>Mô tả danh mục <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="description" placeholder="Nhập mô tả " value="{!!$categori->description!!}">
                    </div>
                    <div class="form-group">
                        <label>Ảnh danh mục <span class="text-danger">*</span></label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" data-toggle="custom-file-input" id="example-file-input-custom" name="image" value="{!!$categori->images!!}" accept=".png, .jpg, .jpeg">
                            <label class="custom-file-label">Chọn ảnh</label>
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
