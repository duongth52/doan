<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>client</title>
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

    <!-- Favicon icon--->
    <!-- <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" > -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="{{ asset('client/css/ie10-viewport-bug-workaround.css') }}">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script type="text/javascript" src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="{{ asset('client/js/ie-emulation-modes-warning.js') }}"></script>


    <!-- Scripts -->
    <script>
        window.Laravel = {
            !!json_encode(['csrfToken' => csrf_token(), ]) !!
        };
    </script>
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
                                <a href="tel_3Ainfo_40themevessel.com"><i class="fa fa-envelope"></i>vanthanh@gmail.com</a>
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
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navigation" aria-expanded="false">
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
                        <div class="navbar-collapse collapse" role="navigation" aria-expanded="true" id="app-navigation">
                            <ul class="nav navbar-nav">
                                <li class="dropdown active">
                                    <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">Trang chủ</a>
                                </li>
                                <li class="dropdown mega-dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Giới thiệu</a>
                                </li>
                                <li class="dropdown">
                                    <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">Chuyên khoa</a>
                                </li>
                                <li class="dropdown">
                                    <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">Lịch làm việc bác sĩ</a>
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
            <footer class="main-footer clearfix">
                <div class="container">
                    <!-- Footer info-->
                    <div class="footer-info">
                        <div class="row">
                            <!-- About us -->
                            <div class="col-lg-4 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-item">
                                    <div class="main-title-2">
                                        <h1>Contact Us</h1>
                                    </div>
                                    <p>
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's printing and
                                    </p>
                                    <ul class="personal-info">
                                        <li>
                                            <i class="fa fa-map-marker"></i>
                                            Address: 20/F Green Road, Dhanmondi, Dhaka
                                        </li>
                                        <li>
                                            <i class="fa fa-envelope"></i>
                                            Email:<a href="mailto:sales@hotelempire.com">info@themevessel.com</a>
                                        </li>
                                        <li>
                                            <i class="fa fa-phone"></i>
                                            Phone: <a href="tel_3A+55-417-634-7071">+55 4XX-634-7071</a>
                                        </li>
                                        <li>
                                            <i class="fa fa-fax"></i>
                                            Fax: +55 4XX-634-7071
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Links -->
                            <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12">
                                <div class="footer-item">
                                    <div class="main-title-2">
                                        <h1>Links</h1>
                                    </div>
                                    <ul class="links">
                                        <li>
                                            <a href="index.html">Home</a>
                                        </li>
                                        <li>
                                            <a href="about.html">About Us</a>
                                        </li>
                                        <li>
                                            <a href="contact.html">Contact Us</a>
                                        </li>
                                        <li>
                                            <a href="blog-single-sidebar-right.html">Blog</a>
                                        </li>
                                        <li>
                                            <a href="blog-single-sidebar-right.html">Services</a>
                                        </li>
                                        <li>
                                            <a href="properties-list-rightside.html">properties Listing</a>
                                        </li>
                                        <li>
                                            <a href="properties-grid-rightside.html">properties Grid</a>
                                        </li>
                                        <li>
                                            <a href="properties-details.html">properties Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Recent cars -->
                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                <div class="footer-item popular-posts">
                                    <div class="main-title-2">
                                        <h1>Popular Posts</h1>
                                    </div>
                                    <div class="media">
                                        <div class="media-left">
                                            <img class="media-object" src="img/properties/small-properties-1.jpg" alt="small-properties-1">
                                        </div>
                                        <div class="media-body">
                                            <h3 class="media-heading">
                                                <a href="properties-details.html">Sweet Family Home</a>
                                            </h3>
                                            <p>February 27, 2018</p>
                                            <div class="price">
                                                $734,000
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-left">
                                            <img class="media-object" src="img/properties/small-properties-2.jpg" alt="small-properties-2">
                                        </div>
                                        <div class="media-body">
                                            <h3 class="media-heading">
                                                <a href="properties-details.html">Modern Family Home</a>
                                            </h3>
                                            <p>February 27, 2018</p>
                                            <div class="price">
                                                $734,000
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-left">
                                            <img class="media-object" src="img/properties/small-properties-3.jpg" alt="small-properties-3">
                                        </div>
                                        <div class="media-body">
                                            <h3 class="media-heading">
                                                <a href="properties-details.html">Beautiful Single Home</a>
                                            </h3>
                                            <p>February 27, 2018</p>
                                            <div class="price">
                                                $734,000
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Subscribe -->
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-item">
                                    <div class="main-title-2">
                                        <h1>Subscribe</h1>
                                    </div>
                                    <div class="newsletter clearfix">
                                        <p>
                                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id
                                        </p>

                                        <form action="#" method="post">
                                            <div class="form-group">
                                                <input class="nsu-field btn-block" id="nsu-email-0" type="text" name="email" placeholder="Enter your Email Address" required="">
                                            </div>
                                            <div class="form-group mb-0">
                                                <button type="submit" class="button-sm button-theme btn-block">
                                                    Subscribe
                                                </button>
                                            </div>
                                        </form>
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

    @yield('js_after')
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

</html>
