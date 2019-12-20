@extends('layouts.backend')

@section('content')

<div class="block" style="margin-bottom: 0px; height: 100%">
    <div class="block-header">
        <h1 class="block-title">Danh sách bệnh nhân</h1>
    </div>
    <div class="block-content block-content-full">
        <div class="row">
            <div class="col-6">
                <form class="d-none d-sm-inline-block" action="/dashboard" method="POST">
                    <div class="input-group input-group-sm">
                        <input type="text" class="form-control form-control-alt" placeholder="Tìm kiếm theo tên "
                            id="myInput" name="page-header-search-input2">
                        <div class="input-group-append">
                            <span class="input-group-text bg-body border-0">
                                <i class="si si-magnifier"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-6">
                <a href="{{route('thembenhnhan')}}">
                    <button class="btn btn-info" style="float:right">Thêm bệnh nhân</button>
                </a>
            </div>

        </div>
        <table class="table table-bordered table-striped table-vcenter js-dataTable-simple">
            <thead>
                <tr>
                    <th class="text-center" style="width: 60px;">MBN</th>
                    <th class="text-center">Tên bệnh nhân</th>
                    <th class="text-center" style="width: 10%;">SĐT</th>
                    <th class="text-center" style="width: 10%;">Email</th>
                    <th class="text-center" style="width: 10%;">ngày sinh</th>
                    <th class="text-center">Địa chỉ</th>
                    <th class="text-center">Mô tả</th>
                    <th class="text-center">Hành động</th>
                </tr>
            </thead>
            <tbody id="myTable">
                @foreach($patient as $data)
                <tr>
                    <td class="text-center">{{$data->id}}</td>
                    <td class="font-w600 font-size-sm">
                        <a href="be_pages_generic_profile.html">{{$data->name}}</a>
                    </td>
                    <td class="font-size-sm">{{$data->phone}}</td>
                    <td class="font-size-sm">{{$data->email}}</td>
                    <td> <span>{{$data->birthday}}</span> </td>
                    <td> {{$data->address}} </td>
                    <td> {{$data->description}} </td>

                    @if(Auth::user()->role === 'superadmin' || Auth::user()->role === 'admin')
                    <td class="text-center">
                        <div class="btn-group">
                            <a href="{{route('detailPatient', $data->id)}}" style="margin-right: 5px" type="button"
                                class="btn btn-sm btn-primary" data-toggle="tooltip" title="Xem chi tiết">
                                <i class=" far fa-eye"></i>
                            </a>
                            <a href="{{route('showAddResultPateint', $data->id)}}" style="margin-right: 5px"
                                type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="Thêm kết quả">
                                <i class=" far fa-hdd"></i>
                            </a>
                            <a href="{{route('suabenhnhan', $data->id)}}" style="margin-right: 5px" type="button"
                                class="btn btn-sm btn-primary" data-toggle="tooltip" title="Sửa">
                                <i class="fa fa-fw fa-pencil-alt"></i>
                            </a>
                            <a href="{{route('deletePatient', $data->id)}}" type="button" class="btn btn-sm btn-danger"
                                data-toggle="tooltip" title="Xóa">
                                <i class="fa fa-fw fa-times"></i>
                            </a>
                        </div>
                    </td>
                    @endif
                </tr>
                @endforeach
            </tbody>
        </table>
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


<script>
$(document).ready(function() {
    $("#myInput").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
});
</script>
@stop