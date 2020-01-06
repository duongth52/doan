@extends('layouts.client')

@section('content')

<div class="row">
    <div class="col-lg-12">
        <!-- Form content box start -->
        <div class="form-content-box">
            <!-- details -->
            <div class="details">
                <!-- Main title -->
                <div class="main-title">
                    <h1><span>Login</span></h1>
                </div>
                <!-- Form start -->
                <form action="{{route('login')}}" method="POST">
                    @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    @csrf
                    <div class="form-group">
                        <input type="email" name="email" class="input-text" placeholder="Email Address">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="input-text" placeholder="Password">
                    </div>
                    <div class="checkbox">
                        <div class="ez-checkbox pull-left">
                            <label>
                                <input type="checkbox" class="ez-hide">
                                Remember me
                            </label>
                        </div>
                        <a href="forgot-password.html" class="link-not-important pull-right">Forgot Password</a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="button-md button-theme btn-block">login</button>
                    </div>
                </form>
                <!-- Form end -->
            </div>
            <!-- Footer -->
            <div class="footer">
                <span>
                    New to Tempo? <a >Sign up now</a>
                </span>
            </div>
        </div>
        <!-- Form content box end -->
    </div>
</div>
@endsection
