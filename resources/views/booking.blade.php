@extends('layouts.client')

@section('content')
<!-- Sub banner start -->
<div class="sub-banner overview-bgi">
    <div class="overlay">
        <div class="container">
            <div class="breadcrumb-area">
                <h1>Submit Property</h1>
                <ul class="breadcrumbs">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Submit Property</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<div class="container" style="padding: 30px 0px">
    <div class="row">
        <div class="col-md-12">
            <div class="submit-address">
                <form method="GET">
                    <div class="main-title-2 text-center" >
                        <h1>Thông tin đặt lịch</h1>
                    </div>
                    <div class="search-contents-sidebar mb-30">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Họ và tên (có dấu)</label>
                                    <input type="text" class="input-text" name="name" placeholder="Họ và tên">
                                </div>

                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="input-text" name="email" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input type="text" class="input-text" name="phone" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Khoa</label>
                                    <select class="selectpicker search-fields" name="khoa">
                                        <option>Nhi</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>bác sĩ</label>
                                    <select class="selectpicker search-fields" name="doctor">
                                        <option>Nguyễn Văn A</option>
                                    </select>
                                </div>

                            </div>





                            <!-- <div class="col-md-6">
                                <div class="form-group">
                                    <label>Họ và tên (có dấu)</label>
                                    <input type="text" class="input-text" name="name" placeholder="Họ và tên">
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6">
                                <div class="form-group">
                                    <label>Khoa</label>
                                    <select class="selectpicker search-fields" name="khoa">
                                        <option>1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="form-group">
                                    <label>bác sĩ</label>
                                    <select class="selectpicker search-fields" name="doctor">
                                        <option>1</option>
                                    </select>
                                </div>
                            </div> -->
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="text" class="input-text" name="email" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="form-group">
                                    <label>Số điện thoại</label>
                                    <input type="text" class="input-text" name="your name" placeholder="SqFt">
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- <div class="main-title-2">
                        <h1><span>Property</span> Gallery</h1>
                    </div>
                    <div id="myDropZone" class="dropzone dropzone-design mb-50">
                        <div class="dz-default dz-message"><span>Drop files here to upload</span></div>
                    </div> -->

                    <div class="main-title-2">
                        <h1><span>Location</span></h1>
                    </div>
                    <div class="row mb-30 ">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <label>Address</label>
                                <input type="text" class="input-text" name="address" placeholder="Address">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <label>City</label>
                                <select class="selectpicker search-fields" name="choose-city" data-live-search="true" data-live-search-placeholder="Search value">
                                    <option>Choose City</option>
                                    <option>New York</option>
                                    <option>Los Angeles</option>
                                    <option>Chicago</option>
                                    <option>Brooklyn</option>
                                    <option>Queens</option>
                                    <option>Houston</option>
                                    <option>Manhattan</option>
                                    <option>Philadelphia</option>
                                    <option>Phoenix</option>
                                    <option>San Antonio</option>
                                    <option>Bronx</option>
                                    <option>San Diego</option>
                                    <option>Dallas</option>
                                    <option>San Jose</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <label>State</label>
                                <select class="selectpicker search-fields" name="choose-state" data-live-search="true" data-live-search-placeholder="Search value">
                                    <option>Choose State</option>
                                    <option>Alabama</option>
                                    <option>Alaska</option>
                                    <option>Arizona</option>
                                    <option>Arkansas</option>
                                    <option>California</option>
                                    <option>Colorado</option>
                                    <option>Connecticut</option>
                                    <option>Delaware</option>
                                    <option>Florida</option>
                                    <option>Georgia</option>
                                    <option>Hawaii</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <label>Postal Code</label>
                                <input type="text" class="input-text" name="zip" placeholder="Postal Code">
                            </div>
                        </div>
                    </div>

                    <div class="row mb-30">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Ghi chú</label>
                                <textarea class="input-text" name="message" placeholder="Detailed Information"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-30">
                        <div class="col-md-4 col-sm-4">
                            <div class="form-group">
                                <label>Building Age <span>(optional)</span></label>
                                <select class="selectpicker search-fields" name="years">
                                    <option>0-1 Years</option>
                                    <option>0-5 Years</option>
                                    <option>0-10 Years</option>
                                    <option>0-20 Years</option>
                                    <option>0-40 Years</option>
                                    <option>40+Years</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="form-group">
                                <label>Bedrooms (optional)</label>
                                <select class="selectpicker search-fields" name="1">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="form-group">
                                <label>Bathrooms (optional)</label>
                                <select class="selectpicker search-fields" name="1">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <label class="margin-t-10">Features (optional)</label>
                            <div class="row">
                                <div class="col-lg-4 col-sm-4 col-xs-12">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox1" type="checkbox">
                                        <label for="checkbox1">
                                            Free Parking
                                        </label>
                                    </div>
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox2" type="checkbox">
                                        <label for="checkbox2">
                                            Air Condition
                                        </label>
                                    </div>
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox3" type="checkbox">
                                        <label for="checkbox3">
                                            Places to seat
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-sm-4 col-xs-12">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox4" type="checkbox">
                                        <label for="checkbox4">
                                            Swimming Pool
                                        </label>
                                    </div>
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox5" type="checkbox">
                                        <label for="checkbox5">
                                            Laundry Room
                                        </label>
                                    </div>
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox6" type="checkbox">
                                        <label for="checkbox6">
                                            Window Covering
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-sm-4 col-xs-12">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox7" type="checkbox">
                                        <label for="checkbox7">
                                            Central Heating
                                        </label>
                                    </div>
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox8" type="checkbox">
                                        <label for="checkbox8">
                                            Alarm
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="main-title-2">
                        <h1><span>Contact</span> Details</h1>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="input-text" name="name" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="input-text" name="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="form-group">
                                <label>Phone (optional)</label>
                                <input type="text" class="input-text" name="phone" placeholder="Phone">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <a href="#" class="btn button-md button-theme">Preview</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>

@endsection
