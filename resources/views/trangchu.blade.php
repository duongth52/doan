@extends('layouts.client')

@section('content')
<div class="page_loader"></div>

<!-- Banner start -->
<div class="banner">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            @foreach($article as $key => $data)
            <div class="item banner-max-height @if($key==0)active @endif">
                <img style="min-height: 850px;" src="{{$data->images}}" alt="banner-slider-1">
                <div class="carousel-caption banner-slider-inner">
                    <div class="banner-content">
                        <h1 data-animation="animated fadeInDown delay-05s">{{$data->name}}</h1>
                        <p data-animation="animated fadeInUp delay-1s">{{$data->subDescription}}</p>
                        <!-- <a href="#" class="btn button-md button-theme" data-animation="animated fadeInUp delay-15s">Get Started Now</a>
                        <a href="#" class="btn button-md border-button-theme" data-animation="animated fadeInUp delay-15s">Learn More</a> -->
                    </div>
                </div>
            </div>
            @endforeach

        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="slider-mover-left" aria-hidden="true">
                <i class="fa fa-angle-left"></i>
            </span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="slider-mover-right" aria-hidden="true">
                <i class="fa fa-angle-right"></i>
            </span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<!-- Banner end -->

<!-- Our service start -->
<div class="mb-50 our-service">
    <div class="container" style="padding-top: 50px;">
        <!-- Main title -->
        <div class="main-title">
            <h1>Chức năng</h1>
        </div>

        <div class="row mgn-btm wow">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 wow fadeInLeft delay-04s">
                <div class="content">
                    <a href="{{route('datlich')}}">
                        <i class="flaticon-apartment"></i>
                        <h4>Đặt hẹn khám</h4>
                    </a>
                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 wow fadeInRight delay-04s">
                <div class="content">
                    <a href="{{route('xemketqua')}}">
                        <i class="flaticon-monitor"></i>
                        <h4>Xem Kết quả</h4>
                    </a>
                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 wow fadeInRight delay-04s">
                <div class="content">
                    <i class="flaticon-vehicle"></i>
                    <h4>Lịch làm việc bác sĩ</h4>
                </div>
            </div>

        </div>
        <!-- <a href="#" class="btn button-md button-theme">Read More</a> -->
    </div>
</div>
<!-- Our service end -->


<!-- Blog start -->
<div class="blog content-area-5">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1><span>Tin</span> Tức</h1>
        </div>
        <div class="row">
            @foreach($news as $data)
            <div class="col-lg-4 col-md-4 col-sm-6 wow fadeInLeft delay-04s">
                <div class="thumbnail blog-box-2 clearfix">
                    <div class="blog-photo">
                        <img style="max-height:220px; min-height:220px" src="{{$data->images}}" alt="blog-1"
                            class="img-responsive">
                    </div>
                    <!-- Detail -->
                    <div class="caption detail">
                        <h4><a href="/admin/chi-tiet-bai-viet/{{$data->id}}">{{$data->name}}</a></h4>
                        <!-- paragraph -->
                        <p>{{$data->subDescription}}</p>
                        <div class="clearfix"></div>
                        <!-- Btn -->
                        <a href="/admin/chi-tiet-bai-viet/{{$data->id}}" class="read-more">Xem thêm...</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- Blog end -->

<!-- Agent section start -->
<div class="mb-70 agent-section chevron-icon">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Đội ngũ nhân viên</h1>
        </div>
        <div class="row">
            <div class="carousel our-partners slide" id="ourPartners3">
                <div class="col-lg-12 mrg-btm-30">
                    <a class="right carousel-control" href="#ourPartners3" data-slide="prev"><i
                            class="fa fa-chevron-left icon-prev"></i></a>
                    <a class="right carousel-control" href="#ourPartners3" data-slide="next"><i
                            class="fa fa-chevron-right icon-next"></i></a>
                </div>
                <div class="carousel-inner">
                    @foreach($doctors as $key=>$data)
                    <div class="{{$key==0?'item active':'item' }}">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <!-- Agent 1 start -->
                            <div class="agent-1">
                                <!-- Agent img -->
                                <a href="properties-details.html" class="agent-img">
                                    <img style="min-height:270px; max-height: 270px; object-fit:cover " src="{{asset($data->images)}}" alt="team-1"
                                        class="img-responsive">
                                </a>
                                <!-- Agent content -->
                                <div class="agent-content">
                                    <h5><a href="agent-single.html">{{$data->name}}</a></h5>
                                    <h6>{{$data->subDescription}}</h6>
                                    <ul class=" social-list clearfix">
                                        <li>
                                            <a href="#" class="facebook">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="twitter">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="linkedin">
                                                <i class="fa fa-linkedin"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="google">
                                                <i class="fa fa-google-plus"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="rss">
                                                <i class="fa fa-rss"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Agent 1 end -->
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Agent section end -->

<!-- Counters strat -->
<div class="counters overview-bgi"
    style="background: url('http://medicare.bold-themes.com/cardiology/wp-content/uploads/sites/10/2018/02/page-headline-04.jpg');">
    <div class="container">
        <div class="row">
            <!-- <div class="col-md-3 col-sm-6 bordered-right">
                <div class="counter-box">
                    <i class="flaticon-tag"></i>
                    <h1 class="counter">967</h1>
                    <p>Bệnh nhân</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 bordered-right">
                <div class="counter-box">
                    <i class="flaticon-symbol-1"></i>
                    <h1 class="counter">1276</h1>
                    <p>Listings For Rent</p>
                </div>
            </div> -->
            <div class="col-md-6 col-sm-6 bordered-right">
                <div class="counter-box">
                    <i class="flaticon-people"></i>
                    <h1 class="counter">396</h1>
                    <p>Bệnh nhân</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="counter-box">
                    <i class="flaticon-people-1"></i>
                    <h1 class="counter">177</h1>
                    <p>Bác sĩ</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Counters end -->
<div class="clearfix"></div>
@endsection
