@extends('layouts.backend')

@section('content')
<div class="block" style="margin-bottom: 0px; height: 100%">
    <div class="block-header">
        <h1 class="block-title">Danh sách nhân viên</h1>
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
                <a href="{{route('addnv')}}">
                    <button class="btn btn-info" style="float:right"> Thêm nhân viên</button>
                </a>
            </div>

        </div>
        <table class="table table-bordered table-striped table-vcenter js-dataTable-simple">
            <thead>
                <tr>
                    <th class="text-center" style="width: 80px;">ID</th>
                    <th>Họ tên</th>
                    <th style="width: 15%;">Email</th>
                    <th style="width: 15%;">SĐT</th>
                    <th style="width: 15%;">Giới tính</th>
                    <!-- <th style="width: 15%;">trạng thái</th> -->
                    <th class="text-center" style="width: 15%;">Hành động</th>
                </tr>
            </thead>
            <tbody>
                @foreach($obj as $data)

                    <tr>
                        <td class="text-center">{{$data->id}}</td>
                        <td class="font-w600 font-size-sm">
                            <a href="be_pages_generic_profile.html">{{$data->name}}</a>
                        </td>
                        <td class="font-size-sm">{{$data->email}}</td>
                        <td class="font-size-sm">{{$data->sdt}}</td>
                        <td>
                            {{ $data->gioitinh ? "Nữ" : "Nam" }}
                        </td>
                        <!-- <td>
                            <span class="badge badge-success">Hoạt động</span>
                        </td> -->
                        @if(Auth::user()->role === 'superadmin')
                            <td>
                                <a>Xem</a>
                                <a class="btn btn-info" href="{{route('doctor', $data->id)}}">Edit</a>
                                <a href="{{route('delete', $data->id)}}">Delete</a>
                            </td>
                        @elseif(Auth::user()->role === 'admin')
                        <td>
                            <a>Xem</a>
                            <a class="btn btn-info">Edit</a>
                            <a>Delete</a>
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
<script src=" {{ asset('/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src=" {{ asset('/js/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>
<!-- <script src=" {{ asset('/js/plugins/datatables/buttons/dataTables.buttons.min.js') }}"></script> -->
<!-- page -->
<script src=" {{ asset('/js/pages/be_tables_datatables.min.js') }}"></script>
@stop
