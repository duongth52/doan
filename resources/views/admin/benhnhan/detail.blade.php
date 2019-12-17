@extends('layouts.backend')

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
                                <a href="{{route('suabenhnhan', $patient->id)}}">
                                    Sửa thông tin
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="block-content">
                        <div class="row">
                            <div class="col-md-6">
                                <p class="font-w600 mb-2">Họ và tên: <span>{!!$patient->name!!}</span></p>
                                <p> <span class="font-w600">Ngày sinh: </span><span>{!!$patient->birthday!!}</span> </p>
                                <p> <span class="font-w600">Giới tính: </span><span>{!!$patient->gender!!}</span> </p>
                                <p> <span class="font-w600">SĐT: </span><span>{!!$patient->phone!!}</span> </p>
                                <p> <span class="font-w600">Email: </span><span>{!!$patient->email!!}</span> </p>
                            </div>
                            <div class="col-md-6">
                                <p> <span class="font-w600">Mô tả: </span><span>{!!$patient->description!!}</span> </p>
                                <p> <span class="font-w600">Trạng thái: </span><span>{!! !$patient->description ? 'Ẩn' : 'Hiển thị'!!}</span> </p>
                                <p> <span class="font-w600">Địa chỉ: </span><span>{!!$patient->address!!}</span> </p>
                                <p> <span class="font-w600">Ngày tạo: </span><span>{!!$patient->created_at!!}</span> </p>
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
                        <h3 class="block-title">Kết quả khám</h3>
                    </div>
                    <div class="block-content block-content-full">
                        <table class="table table-bordered table-striped table-vcenter js-dataTable-simple">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width: 60px;">MKQ</th>
                                    <th class="text-center">Mô tả kết quả</th>
                                    <th class="text-center">Ngày tạo</th>
                                    <th class="text-center">Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($result as $data)
                                <tr>
                                    <td class="text-center">{{$data->id}}</td>
                                    <td class="font-size-sm">{{$data->description}}</td>
                                    <td class="font-size-sm">{{$data->created_at}}</td>

                                    <td class="text-center">
                                        <div class="btn-group">
                                            <a href="" style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="Xem chi tiết">
                                                <i class=" far fa-eye"></i>
                                            </a>
                                            <a href="" style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="Sửa">
                                                <i class="fa fa-fw fa-pencil-alt"></i>
                                            </a>
                                            <a href="" type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" title="Xóa">
                                                <i class="fa fa-fw fa-times"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </li>
        </ul> <!-- END Updates -->
    </div>
</div>
</div>

@endsection


@section('js_after')
<!-- date -->
<script src=" {{ asset('/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}"></script>

<script src=" {{ asset('/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src=" {{ asset('/js/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>
<!-- <script src=" {{ asset('/js/plugins/datatables/buttons/dataTables.buttons.min.js') }}"></script> -->
<!-- page -->
<script src=" {{ asset('/js/pages/be_tables_datatables.min.js') }}"></script>
@stop
