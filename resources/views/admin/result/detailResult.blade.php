@extends('layouts.backend')

@section('css_after')
<link rel="stylesheet" href="{{asset('/js/plugins/summernote/summernote-bs4.css') }}">
<link rel="stylesheet" href="{{asset('/js/plugins/simplemde/simplemde.min.css') }}">
@stop

@section('content')
<div class="row" style="margin-top: 20px; padding: 0 20px">
    <div class="col-md-12">
        <!-- Updates -->
        <ul class="timeline timeline-alt py-0">
            <li class="timeline-event">
                <div class="timeline-event-icon bg-default">
                    <i class="far fa-address-card"></i>
                </div>
                <div class="timeline-event-block block invisible" data-toggle="appear">
                    <div class="block-header">
                        <h3 class="block-title">Thông tin bệnh nhân: </h3>
                        <div class="block-options">
                            <div class="timeline-event-time block-options-item font-size-sm">

                            </div>
                        </div>
                    </div>
                    <div class="block-content">
                        <div class="row">
                            <div class="col-md-6">
                                <p class="font-w600 ">Tên bác sĩ: <span>{{$result->doctorName}}</span></p>
                                <p> <span class="font-w600">Tên bệnh nhân: </span><span>{{$result->patientName}}</span> </p>
                                <p> <span class="font-w600">Mã bệnh bệnh: </span><span>{{$result->id}}</span> </p>
                                <p> <span class="font-w600">Tên bệnh: </span><span>{{$result->diseaseName}}</span> </p>
                                <p> <span class="font-w600">Bệnh mô tả: </span><span>{{$result->description}}</span> </p>
                            </div>
                            <div class="col-md-6">
                                <p> <span class="font-w600">Đơn thuốc: </span><span><?php echo $result->prescription; ?></span> </p>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="timeline-event">
                <div class="timeline-event-icon bg-modern">
                    <i class="fa fa-briefcase"></i>
                </div>
                <div class="timeline-event-block block invisible" data-toggle="appear">
                    <div class="block-header">
                        <h3 class="block-title">Danh sách kết quả khám: </h3>
                    </div>
                    <div class="block-content block-content-full">
                        <table class="table table-bordered table-striped table-vcenter js-dataTable-simple">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width: 60px;">MKQ</th>
                                    <th class="text-center">Tên bệnh nhân</th>
                                    <th class="text-center">Tên bác sĩ</th>
                                    <th class="text-center">Mô tả kết quả</th>
                                    <th class="text-center">Ngày tạo</th>
                                    <th class="text-center">Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($query as $data)
                                <tr>
                                 <tr>
                                    <td class="text-center">{{$data->id}}</td>
                                    <td class="font-w600 font-size-sm">
                                        <a href="be_pages_generic_profile.html">{{$data->patientName}}</a>
                                    </td>
                                    <td class="font-size-sm">{{$data->doctorName}}</td>
                                    <td class="font-size-sm">{{$data->description}}</td>
                                    <td class="font-size-sm">{{$data->created_at}}</td>
                                    <td class="text-center">
                                        <a href="{{route('detailResult', $data->id)}}" style="margin-right: 5px" type="button"
                                            class="btn btn-sm btn-primary" data-toggle="tooltip" title="Xem chi tiết">
                                            <i class=" far fa-eye"></i>
                                        </a>
                                    </td>
                                </tr>
                            </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </li>
        </ul> <!-- END Updates -->
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
