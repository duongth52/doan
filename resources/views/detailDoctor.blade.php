@extends('layouts.client')

@section('content')
<div style="width: 50%; margin: 0 auto; min-height: 40vh">
<div class="agent-section content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <!-- Agent detail start -->
                <div class="agent-detail clearfix">
                    <div class="col-lg-5 col-md-6 col-sm-5 agent-theme">
                        <img src="{{asset($article->images)}}" alt="agent-1" class="img-responsive">
                    </div>
                    <div class="col-lg-7 col-md-6 col-sm-7 agent-content clearfix">
                        <h5>Thông tin bác sĩ</h5>
                        <h3>
                            <a href="#">{{$article->name}}</a>
                        </h3>
                        <!-- Address list -->
                        <ul class="address-list">
                            <li>
                                <span>
                                    <i class="fa fa-envelope"></i>Email:
                                </span>
                                hongduongthpt@gmail.com
                            </li>
                            <li>
                                <span>
                                    <i class="fa fa-mobile"></i>Mobile:
                                </span>
                                09780019699
                            </li>
                            <li>
                                <span>
                                    <i class="fa fa-skype"></i>Skype:
                                </span>
                                duongth52
                            </li>
                        </ul>

                        <div class="social-media">
                            <!-- Social list -->
                            <ul class="social-list">
                                <li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="linkedin-bg"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#" class="google-bg"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#" class="rss-bg"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Agent detail end -->

                <div class="sidebar-widget clearfix biography">
                    <!-- Main Title 2 -->
                    <div class="main-title-2">
                        <h1><span>Giới thiệu</span></h1>
                    </div>
                    <p>
                    {{$article->description}}
                    </p>

                </div>

            </div>
        </div>
    </div>
</div>
</div>


@endsection
