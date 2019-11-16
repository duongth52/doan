@extends('layouts.backend')

@section('content')

<div class="block" style="margin-bottom: 0px; height: 100%">
    <div class="block-header">
        <h1 class="block-title">Danh sách booking</h1>
    </div>
    <div class="block-content block-content-full">
        <div class="row">
            <div class="col-5">
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
            <div class="col-xl-5">
                <div class="form-group">
                    <div class="input-daterange input-group" data-date-format="mm/dd/yyyy" data-week-start="1" data-autoclose="true" data-today-highlight="true">
                        <input type="text" class="form-control" id="example-daterange1" name="example-daterange1" placeholder="From" data-week-start="1" data-autoclose="true" data-today-highlight="true">
                        <div class="input-group-prepend input-group-append">
                            <span class="input-group-text font-w600">
                                <i class="fa fa-fw fa-arrow-right"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control" id="example-daterange2" name="example-daterange2" placeholder="To" data-week-start="1" data-autoclose="true" data-today-highlight="true">
                    </div>
                </div>
            </div>
            <div class="col-2">
                <button class="btn btn-info" style="float:right">Thêm booking</button>
            </div>

        </div>
        <table class="table table-bordered table-striped table-vcenter js-dataTable-simple">
            <thead>
                <tr>
                    <th class="text-center" style="width: 60px;">STT</th>
                    <th class="text-center" style="width: 10%;">Mã BN</th>
                    <th class="text-center">Tên bệnh nhân</th>
                    <th class="text-center" style="width: 10%;">SĐT</th>
                    <th class="text-center">Tên bác sĩ</th>
                    <th class="text-center" style="width: 10%;">Khoa</th>
                    <th class="text-center" style="width: 12%;">Ngày khám</th>
                    <th class="text-center" style="width: 15%;">Ghi chú</th>
                    <th class="text-center">Hành động</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="text-center">1</td>
                    <td class="text-center">BN1243</td>
                    <td class="font-w600 font-size-sm">
                        <a href="be_pages_generic_profile.html">Nguyễn Văn Đạt</a>
                    </td>
                    <td class="font-size-sm">0978019699</td>
                    <td class="font-size-sm">Nguyễn Văn A</td>
                    <td class="font-size-sm">Nhi</td>
                    <td> 20/02/2019 </td>
                    <td>
                        Nội dung ghi chú
                    </td>
                    <td class="text-center">
                        <div class="btn-group">
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="xem chi tiết">
                                <i class=" far fa-eye"></i>
                            </button>
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="sửa">
                                <i class="fa fa-fw fa-pencil-alt"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" title="xóa">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">1</td>
                    <td class="text-center">BN1243</td>
                    <td class="font-w600 font-size-sm">
                        <a href="be_pages_generic_profile.html">Nguyễn Văn Đạt</a>
                    </td>
                    <td class="font-size-sm">0978019699</td>
                    <td class="font-size-sm">Nguyễn Văn A</td>
                    <td class="font-size-sm">Nhi</td>
                    <td> 20/02/2019 </td>
                    <td>
                        Nội dung ghi chú
                    </td>
                    <td class="text-center">
                        <div class="btn-group">
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="Edit">
                                <i class="far fa-eye"></i>
                            </button>
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="Edit">
                                <i class="fa fa-fw fa-pencil-alt"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" title="Delete">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">1</td>
                    <td class="text-center">BN1243</td>
                    <td class="font-w600 font-size-sm">
                        <a href="be_pages_generic_profile.html">Nguyễn Văn Đạt</a>
                    </td>
                    <td class="font-size-sm">0978019699</td>
                    <td class="font-size-sm">Nguyễn Văn A</td>
                    <td class="font-size-sm">Nhi</td>
                    <td> 20/02/2019 </td>
                    <td>
                        Nội dung ghi chú
                    </td>
                    <td class="text-center">
                        <div class="btn-group">
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="Edit">
                                <i class=" far fa-eye"></i>
                            </button>
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="Edit">
                                <i class="fa fa-fw fa-pencil-alt"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" title="Delete">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">1</td>
                    <td class="text-center">BN1243</td>
                    <td class="font-w600 font-size-sm">
                        <a href="be_pages_generic_profile.html">Nguyễn Văn Đạt</a>
                    </td>
                    <td class="font-size-sm">0978019699</td>
                    <td class="font-size-sm">Nguyễn Văn A</td>
                    <td class="font-size-sm">Nhi</td>
                    <td> 20/02/2019 </td>
                    <td>
                        Nội dung ghi chú
                    </td>
                    <td class="text-center">
                        <div class="btn-group">
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="Edit">
                                <i class=" far fa-eye"></i>
                            </button>
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" title="Edit">
                                <i class="fa fa-fw fa-pencil-alt"></i>
                            </button>
                            <button type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" title="Delete">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </td>
                </tr>
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
@stop
