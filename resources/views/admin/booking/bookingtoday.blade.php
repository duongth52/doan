@extends('layouts.backend')

@section('content')

<div class="block" style="margin-bottom: 0px; height: 100%">
    <div class="block-header">
        <h1 class="block-title">Danh sách booking hôm nay</h1>
    </div>
    <div class="block-content block-content-full">
        <div class="row">
            <div class="col-3">
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
                <div class="form-group d-flex">
                    <a href="{{route('danhsachBooking')}}" style="max-height: 38px" class="btn btn-info" style="float:right" id="">All</a>
                </div>
            </div>
            <!-- <div class="col-">
            </div> -->
            <div class="col-2">
                <button style="display: none" class="btn btn-info" style="float:right">Thêm booking</button>
            </div>

        </div>
        <table class="table table-bordered table-striped table-vcenter js-dataTable-simple" id="dataTable">
            <thead>
                <tr>
                    <!-- <th class="text-center" style="width: 60px;">STT</th> -->
                    <th class="text-center" style="width: 10%;">Mã BN</th>
                    <th class="text-center">Tên bệnh nhân</th>
                    <th class="text-center" style="width: 10%;">SĐT</th>
                    <!-- <th class="text-center">Tên bác sĩ</th> -->
                    <th class="text-center" style="width: 5%;">Khoa</th>
                    <th class="text-center" style="width: 12%;">Ngày khám</th>
                    <th class="text-center" style="width: 10%;">Giờ khám</th>
                    <th class="text-center" style="width: 15%;">Ghi chú</th>
                    <th class="text-center">Hành động</th>
                </tr>
            </thead>
            <tbody id="myTable">
                @foreach($booking as $data)
                <tr>
                    <td class="text-center">{{$data->id}}</td>
                    <td class="font-w600 font-size-sm">
                        <a href="be_pages_generic_profile.html">{{$data->name}}</a>
                    </td>
                    <td class="font-size-sm">{{$data->phone}}</td>
                    <!-- <td class="font-size-sm">{{$data->doctorName}}</td> -->
                    <td class="font-size-sm">{{$data->khoaName}}</td>
                    <td> {{$data->book_date}} </td>
                    <td> {{$data->time}} </td>
                    <td>
                        {{$data->note}}
                    </td>
                    <td class="text-center">
                        <div class="btn-group">
                            <a href="{{route('createPaitentBooking', $data->id)}}" style="margin-right: 5px" type="button" class="btn btn-sm btn-primary"
                                data-toggle="tooltip" title="thêm bệnh nhân">
                                <i class=" far fa-address-book"></i>
                            </a>
                            <!-- <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary"
                                data-toggle="tooltip" title="xem chi tiết">
                                <i class=" far fa-eye"></i>
                            </button> -->
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary"
                                data-toggle="tooltip" title="sửa">
                                <i class="fa fa-fw fa-pencil-alt"></i>
                            </button>
                            <a href="#" style="padding: 3px 7px;" data-toggle="modal" data-toggle="tooltip" data-target="#delete{{$data->id}}"class="btn btn-danger" title="xóa">
                                <i class="fa fa-fw fa-times"></i>
                            </a>
                        </div>
                    </td>
                </tr>


                <div class="modal fade" id="delete{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">Bạn chắc chắn muốn xoá không ?</div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                    <a class="btn btn-danger" href="{{route('deleteBooking', $data->id)}}">Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
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
