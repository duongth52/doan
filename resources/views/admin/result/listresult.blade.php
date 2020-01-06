@extends('layouts.backend')

@section('content')
<div class="block" style="margin-bottom: 0px; height: 100%">
    <div class="block-header">
        <h1 class="block-title">Danh sách kết quả khám bệnh</h1>
    </div>
    <div class="block-content block-content-full">
        <div class="row">
            <div class="col-6">
                <form class="d-none d-sm-inline-block" action="/dashboard" method="POST">
                    <div class="input-group input-group-sm">
                        <input type="text" class="form-control form-control-alt" placeholder="Tìm kiếm theo tên " id="page-header-search-input2" name="page-header-search-input2">
                        <div class="input-group-append">
                            <span class="input-group-text bg-body border-0">
                                <i class="si si-magnifier"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-6">
                <a href="{{route('showAddResult')}}">
                    <button class="btn btn-info" style="float:right"> Thêm kết quả</button>
                </a>
            </div>

        </div>
        <table class="table table-bordered table-striped table-vcenter js-dataTable-simple">
            <thead>
                <tr>
                    <th class="text-center" style="width: 80px;">ID</th>
                    <th>Tên bệnh nhân</th>
                    <th>Tên bác sĩ</th>
                    <th>Mô tả kết quả</th>
                    <th style="width: 15%;">Ngày tạo</th>
                    <th class="text-center" style="width: 15%;">Hành động</th>
                </tr>
            </thead>
            <tbody>
                @foreach($result as $data)
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
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@endsection


@section('js_after')
<script src=" {{ asset('/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src=" {{ asset('/js/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>
<!-- <script src=" {{ asset('/js/plugins/datatables/buttons/dataTables.buttons.min.js') }}"></script> -->
<!-- page -->
<script src=" {{ asset('/js/pages/be_tables_datatables.min.js') }}"></script>
@stop
