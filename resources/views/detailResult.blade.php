@extends('layouts.client')

@section('content')
<div style="width: 50%; margin: 0 auto; min-height: 40vh">
    <div class="row">
        <div class="col-md-12 text-center" style="margin-bottom: 30px">
            <h3>Thông tin chi tiết kết quả</h3>
        </div>

        <div class="col-md-12 ">
        <table class="table">
            <thead>
            <tr>
                <th>Tên bệnh</th>
                <th>Mô tả bệnh</th>
                <th>Đơn thuốc</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>{{$detailResult->content_result}}</td>
                <td>{{$detailResult->description}}</td>
                <td>{!!$detailResult->prescription!!}</td>
            </tr>
        </table>
        </div>
    </div>
</div>


@endsection
