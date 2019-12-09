<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>client</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/animate.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/bootstrap-submenu.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/bootstrap-select.min.css') }}">
    <link rel="stylesheet" href="{{ asset('client/css/leaflet.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('client/css/map.css') }}" type="text/css">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/fonts/font-awesome/css/font-awesome.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/fonts/flaticon/font/flaticon.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/fonts/linearicons/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/jquery.mCustomScrollbar.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/dropzone.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/magnific-popup.css') }}">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href=" {{ asset('client/css/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/default.css') }}">
    <!-- toast -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css">

    <!-- Favicon icon--->
    <!-- <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" > -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/ie10-viewport-bug-workaround.css') }}">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script type="text/javascript" src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="{{ asset('client/js/ie-emulation-modes-warning.js') }}"></script>

    <style>
    .footer-info .main-title-2 h1 {
        color: white !important;
    }

    footer .popular-posts .media-heading a {
        color: black !important;
    }

    .media-left {
        vertical-align: middle !important;
    }

    footer ul li,
    footer ul li a,
    footer p {
        color: black !important;
    }
    </style>
</head>

<body>
    <div id="page-container">
        <!-- Main Container -->
        <main id="main-container">
            <!-- Top header start -->
            <header class="top-header hidden-xs" id="top">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="list-inline">
                                <a href="tel_3A1-8X0-666-8X88"><i class="fa fa-phone"></i>0977 915 883</a>
                                <a href="tel_3Ainfo_40themevessel.com"><i
                                        class="fa fa-envelope"></i>vanthanh@gmail.com</a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <ul class="top-social-media pull-right">
                                <li>
                                    <a href="login.html" class="sign-in"><i class="fa fa-sign-in"></i> Login</a>
                                </li>
                                <li>
                                    <a href="signup.html" class="sign-in"><i class="fa fa-user"></i> Register</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Top header end -->

            <!-- Main header start -->
            <header class="main-header">
                <div class="container">
                    <nav class="navbar navbar-default">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#app-navigation" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="index.html" class="logo">
                                <img src="{{ asset('client/img/logos/logo.png') }}" alt="logo">
                            </a>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="navbar-collapse collapse" role="navigation" aria-expanded="true"
                            id="app-navigation">
                            <ul class="nav navbar-nav">
                                <li class="dropdown active">
                                    <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">Trang
                                        chủ</a>
                                </li>
                                <li class="dropdown mega-dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Giới thiệu</a>
                                </li>
                                <li class="dropdown">
                                    <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">Chuyên
                                        khoa</a>
                                </li>
                                <li class="dropdown">
                                    <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">Lịch
                                        làm việc bác sĩ</a>
                                </li>
                                <li class="dropdown mega-dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Liên hệ</a>
                                </li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right rightside-navbar">
                                <li>
                                    <a href="{{route('datlich')}}" class="button">
                                        Đăt lịch
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </header>
            <!-- Main header end -->
            @yield('content')


            <!-- Footer start -->
            <footer class="main-footer clearfix top-header">
                <div class="container">
                    <!-- Footer info-->
                    <div class="footer-info">
                        <div class="row">
                            <!-- About us -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="footer-item">
                                    <div class="main-title-2">
                                        <h1>Liên hệ</h1>
                                    </div>

                                    <ul class="personal-info">
                                        <li>
                                            <i class="fa fa-map-marker"></i>
                                            Địa chỉ: 175 Tây Sơn, Đống Đa, Hà Nội
                                        </li>
                                        <li>
                                            <i class="fa fa-envelope"></i>
                                            Email:<a href="mailto:sales@hotelempire.com">datnv1997@gmail.com</a>
                                        </li>
                                        <li>
                                            <i class="fa fa-phone"></i>
                                            Số điện thoại: <a href="tel_0359501670">0359501670</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>

                            <!-- Recent cars -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="footer-item popular-posts">
                                    <div class="main-title-2">
                                        <h1>Giờ làm việc</h1>
                                    </div>
                                    <div class="media">
                                        <div class="media-left" style="width:40%">
                                            <h3 class="media-heading">
                                                <a href="properties-details.html">Từ thứ 2 - thứ 6:</a>
                                            </h3>
                                        </div>
                                        <div class="media-body">
                                            <p>Sáng: 7h30 - 12h30</p>
                                            <p>Chiều: 1h30 - 18h30</p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-left" style="width:40%">
                                            <h3 class="media-heading">
                                                <a href="properties-details.html">Từ thứ 7 - chủ nhật:</a>
                                            </h3>
                                        </div>
                                        <div class="media-body">
                                            <p>Sáng: 9h30 - 11h30</p>
                                            <p>Chiều: 1h30 - 18h30</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- Subscribe -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="footer-item">
                                    <div class="main-title-2">
                                        <h1>Phòng khám nhi Hồng Dương</h1>
                                    </div>
                                    <div class="newsletter clearfix">
                                        <img src="/client/img/logos/logo.png">


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- Footer end -->

        </main>
        <!-- END Main Container -->
    </div>

</body>
<script src=" {{ asset('client/js/jquery-2.2.0.min.js') }}"></script>
<script src="{{ asset('client/js/bootstrap.min.js') }} "></script>
<script src="{{ asset('client/js/bootstrap-submenu.js') }} "></script>
<script src="{{ asset('client/js/rangeslider.js') }} "></script>
<script src="{{ asset('client/js/jquery.mb.YTPlayer.js') }} "></script>
<script src="{{ asset('client/js/wow.min.js') }} "></script>
<script src="{{ asset('client/js/bootstrap-select.min.js') }} "></script>
<script src="{{ asset('client/js/jquery.easing.1.3.js') }} "></script>
<script src="{{ asset('client/js/jquery.scrollUp.js') }} "></script>
<script src="{{ asset('client/js/jquery.mCustomScrollbar.concat.min.js') }}"></script>
<script src="{{ asset('client/js/leaflet.js') }} "></script>
<script src="{{ asset('client/js/leaflet-providers.js') }} "></script>
<script src="{{ asset('client/js/leaflet.markercluster.js') }} "></script>
<script src="{{ asset('client/js/dropzone.js') }} "></script>
<script src="{{ asset('client/js/jquery.filterizr.js') }} "></script>
<script src="{{ asset('client/js/jquery.magnific-popup.min.js') }} "></script>
<script src="{{ asset('client/js/maps.js') }} "></script>
<script src="{{ asset('client/js/app.js') }} "></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="{{ asset('client/js/ie10-viewport-bug-workaround.js') }}"></script>
<!-- <Custom javascript -->
<script src="{{ asset('client/js/ie10-viewport-bug-workaround.js') }}"></script>
@yield('js_after')

</html>
