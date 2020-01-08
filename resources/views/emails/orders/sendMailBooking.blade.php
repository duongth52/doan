@component('mail::message')

<strong>PHÒNG KHÁM NHI ĐA KHOA</strong>

<p>Xin chào bạn: <strong></strong></p>
<p>Chúng tôi xin gửi bạn <strong> {{$data['name']}} </strong>lịch khám bệnh </p>
<p><strong>Mã khám: {{$data['code_destroy']}} </strong></p>
<p><strong>Ngày khám: {{$data['date']}} </strong> </p>
<p><strong>Giờ khám: {{$data['time']}} </strong></p>
<p><strong>Địa chỉ:  175 Tây sơn</strong></p>
<p><strong>Chọn link để hủy lịch khám: <a href="{{route('xoaBooking', $data['code_destroy'])}}"> Hủy khám </a> </strong></p>

@endcomponent
