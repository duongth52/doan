@extends('layouts.client')

@section('content')
<div style="width: 50%; margin: 0 auto; min-height: 40vh">
    <div class="row">
        <div class="col-md-12 text-center" style="margin-bottom: 30px">
            <h3>Thông tin chi tiết kết quả</h3>
        </div>
        <!-- <div class="col-md-12 ">
            <h4>Bác sĩ khám: </h4><h5>{{$detailResult->doctorName}}</h5>
        </div> -->
        <div class="col-md-12 ">
            <div class="row">
                <div class="col-md-4"><h4><strong >Tên bệnh:</strong></h4></div>
                <div class="col-md-8"><h4>{{$detailResult->content_result}}</h4></div>
            </div>
        </div>
        <div class="col-md-12 ">
            <div class="row">
                <div class="col-md-4"><h4><strong >Mô tả bệnh:</strong></h4></div>
                <div class="col-md-8"><h4>{{$detailResult->description}}</h4></h4></div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-4"><h4><strong >Đơn thuốc</strong></h4></div>
                <div class="col-md-8">{{$detailResult->prescription}}</div>
            </div>

        </div>
    </div>
</div>


@endsection
