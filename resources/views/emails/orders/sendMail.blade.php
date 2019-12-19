@component('mail::message')

<strong>PHÒNG KHÁM NHI ĐA KHOA</strong>
<p>Xin chào bạn: <strong>{{$data['patient']}}</strong></p>
<p>Chúng tôi xin gửi bạn kết quả khám bệnh</p>
<p><strong>Tên bệnh: {{$data['content_result']}}.</strong> </p>
<p><strong>Đơn thuốc:</strong></p>
{{$data['prescription']}}

@endcomponent
