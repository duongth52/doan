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
                <button class="btn btn-info" style="float:right">Thêm bệnh nhân</button>
            </div>

        </div>
        <table class="table table-bordered table-striped table-vcenter js-dataTable-simple">
            <thead>
                <tr>
                    <th class="text-center" style="width: 60px;">STT</th>
                    <th class="text-center" style="width: 10%;">Mã BN</th>
                    <th class="text-center">Tên bệnh nhân</th>
                    <th class="text-center" style="width: 10%;">SĐT</th>
                    <th class="text-center" style="width: 10%;">Email</th>
                    <th class="text-center" style="width: 10%;">ngày sinh</th>
                    <th class="text-center">Địa chỉ</th>
                    <th class="text-center" >Hành động</th>
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
                    <td class="font-size-sm">Hongduong@gmail.com</td>
                    <td> 20/02/2019 </td>
                    <td>
                        Nội dung ghi chú
                    </td>
                    <td class="text-center">
                        <div class="btn-group">
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
