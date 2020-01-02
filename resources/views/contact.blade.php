@extends('layouts.client')

@section('content')

<!-- Sub banner start -->
<div class="sub-banner overview-bgi " style="background: url('{{$contact[0]->images}}') no-repeat ;     background-size: cover;
    object-fit: cover;
    background-position: center center;">
        <div class="overlay">
            <div class="container">
                <div class="breadcrumb-area">
                    <h1>Liên hệ</h1>

                </div>
            </div>
        </div>
    </div>
    <!-- Sub Banner end -->

    <!-- Contact body start -->
    <div class="contact-1 content-area-7">
        <div class="container">
            <div class="main-title">
                <h1>Form </h1>
            </div>
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
                    <!-- Contact form start -->
                    <div class="contact-form">
                        <form id="contact_form" action="index.html" method="GET" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group fullname">
                                        <input type="text" name="full-name" class="input-text" placeholder="Họ và tên">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group enter-email">
                                        <input type="email" name="email" class="input-text" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group subject">
                                        <input type="text" name="subject" class="input-text" placeholder="Tiêu đề">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group number">
                                        <input type="text" name="phone" class="input-text" placeholder="Số điện thoại">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 clearfix">
                                    <div class="form-group message">
                                        <textarea class="input-text" name="message" placeholder="Lời nhắn"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group send-btn mb-0">
                                        <button type="submit" class="button-md button-theme">Gửi</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Contact form end -->
                </div>
                <div class="col-lg-4 col-lg-offset-1 col-md-4 col-md-offset-1 col-sm-6 col-xs-12">
                    <!-- Contact details start -->
                    <div class="contact-details">
                        <div class="main-title-2">
                            <h3>Liên lạc cho chúng tôi</h3>
                        </div>
                        <div class="media">
                            <div class="media-left">
                                <i class="fa fa-map-marker"></i>
                            </div>
                            <div class="media-body">
                                <h4>Địa chỉ</h4>
                                <p>175 Tây Sơn</p>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-left">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="media-body">
                                <h4>Số điện thoại</h4>
                                <p>
                                    <a href="tel_3A0477-0477-8556-552">Cơ quan: 0477 8556 552</a>
                                </p>
                                <p>
                                    <a href="tel_3A+55-417-634-7071">Di động: 0359501670</a>
                                </p>
                            </div>
                        </div>
                        <div class="media mb-0">
                            <div class="media-left">
                                <i class="fa fa-envelope"></i>
                            </div>
                            <div class="media-body">
                                <h4>Email</h4>
                                <p>
                                    <a href="mailto:info@themevessel.com">vanthanh@gmail.com</a>
                                </p>

                            </div>
                        </div>
                    </div>
                    <!-- Contact details end -->
                </div>
            </div>
        </div>
    </div>
    <!-- Contact body end -->

    <!-- Google map start -->
    <div class="mapouter">
        <div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas"
                src="https://maps.google.com/maps?q=Tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20Th%E1%BB%A7y%20l%E1%BB%A3i&t=&z=15&ie=UTF8&iwloc=&output=embed"
                frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a
                href="https://www.couponflat.com/torguard-promo-code/"></a></div>
        <style>
            .mapouter {
                position: relative;
                text-align: right;
                height: 500px;
                width: 100%;
            }

            .gmap_canvas {
                overflow: hidden;
                background: none !important;
                height: 500px;
                width: 100%;
            }
        </style>
    </div>
    <!-- Google map end -->
@endsection
