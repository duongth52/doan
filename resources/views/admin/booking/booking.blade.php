@extends('layouts.backend')

@section('content')

<div class="block" style="margin-bottom: 0px; height: 100%">
    <div class="block-header">
        <h1 class="block-title">Danh sách booking</h1>
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
                    <div style="max-width: 60%; margin-right: 10px" class="input-daterange input-group" data-date-format="dd/mm/yyyy" data-week-start="1"
                        data-autoclose="true" data-today-highlight="true">
                        <input type="text" class="form-control" id="fromDate" name="example-daterange1"
                            placeholder="yyyy-mm-dd" data-week-start="1" data-autoclose="true"
                            data-today-highlight="true">
                            <div class="input-group-prepend input-group-append" style="max-height: 38px">
                                <span class="input-group-text font-w600">
                                <i class="fa fa-fw fa-arrow-right"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control" id="toDate" name="example-daterange2"
                            placeholder="yyyy-mm-dd" data-week-start="1" data-autoclose="true"
                            data-today-highlight="true">
                    </div>
                    <button style="max-height: 38px" class="btn btn-info" style="float:right" id="searchBooking">Tìm kiếm</button>
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
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary"
                                data-toggle="tooltip" title="xem chi tiết">
                                <i class=" far fa-eye"></i>
                            </button>
                            <button style="margin-right: 5px" type="button" class="btn btn-sm btn-primary"
                                data-toggle="tooltip" title="sửa">
                                <i class="fa fa-fw fa-pencil-alt"></i>
                            </button>
                            <a href="{{route('deleteBooking', $data->id)}}" type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" title="xóa">
                                <i class="fa fa-fw fa-times"></i>
                            </a>
                        </div>
                    </td>
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

function doSearch(fr, t) {
    var d1 = fr.split("-");
    var d2 = t.split("-");
    var from = new Date(d1[0], d1[1] - 1, d1[2]);
    var to = new Date(d2[0], d2[1] - 1, d2[2]);
    var targetTable = document.getElementById('dataTable');
    var targetTableColCount;
    for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
        var rowData = [];
        if (rowIndex == 0) {
            targetTableColCount = targetTable.rows.item(rowIndex).cells.length;
            continue;
        }

        for (var colIndex = 0; colIndex < targetTableColCount; colIndex++) {
            rowData.push(targetTable.rows.item(rowIndex).cells.item(5).textContent);
        }
        for (var i = 0; i < rowData.length; i++) {
            var c = rowData[i].split("-");
            var check = new Date(c[0], c[1] - 1, c[2]);
            if ((check >= from) && (check <= to))
                targetTable.rows.item(rowIndex).style.display = 'table-row';
            else
                targetTable.rows.item(rowIndex).style.display = 'none';
        }
    }
}

// doSearch("2019-12-01", "2019-12-03");

$("#searchBooking").click(function() {

    let fromDate = $("#fromDate").val();
    let toDate = $("#toDate").val();
    if (fromDate == "" || toDate == "") {
        alert("Mời nhập thông tin đầy đủ")
    } else {
        doSearch(fromDate, toDate)
        console.log(fromDate, toDate);
    }
})
</script>

@stop
