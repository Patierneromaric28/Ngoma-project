@extends('partial.navbar')
@section('content')
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50" style="margin-top: 100px">
    <div class="wrapper wrapper--w790">
        <div class="card card-5">
            <div class="card-heading">
                <h2 class="title">Ngoma Registration Form</h2>
            </div>
            <div class="card-body">
                <form method="POST" action="{{ route('storeuser.register') }}">
                    @csrf
                    <div class="form-row m-b-55">
                        <div class="name">Name</div>
                        <div class="value">
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="first_name" value="{{ old('first_name') }}">
                                        <label class="label--desc">first name</label>
                                        @if ($errors->has('first_name'))
                                            <div class="text-danger">{{ $errors->first('first_name') }}</div>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="last_name" value="{{ old('last_name') }}">
                                        <label class="label--desc">last name</label>
                                        @if ($errors->has('last_name'))
                                            <div class="text-danger">{{ $errors->first('last_name') }}</div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="name">Email</div>
                        <div class="value">
                            <div class="input-group">
                                <input class="input--style-5" type="email" name="email" value="{{ old('email') }}">
                                @if ($errors->has('email'))
                                    <div class="text-danger">{{ $errors->first('email') }}</div>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="form-row m-b-55">
                        <div class="name">Phone</div>
                        <div class="value">
                            <div class="row row-refine">
                                <div class="col-3">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="area_code" value="{{ old('area_code') }}">
                                        <label class="label--desc">Area Code</label>
                                        @if ($errors->has('area_code'))
                                            <div class="text-danger">{{ $errors->first('area_code') }}</div>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-9">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="phone" value="{{ old('phone') }}">
                                        <label class="label--desc">Phone Number</label>
                                        @if ($errors->has('phone'))
                                            <div class="text-danger">{{ $errors->first('phone') }}</div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="name">Password</div>
                        <div class="value">
                            <div class="input-group">
                                <input class="input--style-5" type="password" name="password">
                                @if ($errors->has('password'))
                                    <div class="text-danger">{{ $errors->first('password') }}</div>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="name">Confirm Password</div>
                        <div class="value">
                            <div class="input-group">
                                <input class="input--style-5" type="password" name="password_confirmation">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="name">Type</div>
                        <div class="value">
                            <div class="input-group">
                                <select name="type" class="form-control input-group input-group" >
                                    <option disabled="disabled" selected="selected">Choose User type</option>
                                    <option value="User" {{ old('type') == 'User' ? 'selected' : '' }}>User</option>
                                    <option value="Agent" {{ old('type') == 'Agent' ? 'selected' : '' }}>Agent</option>
                                </select>
                                @if ($errors->has('type'))
                                    <div class="text-danger">{{ $errors->first('type') }}</div>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="text-center mt-3">
                        <a href="login" class="text-primary">Don't have an account? Login</a>
                    </div>
                    <div>
                        <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
                    </div>
                    <div class="container mt-5">
                        @if(Session::has('error'))
                            @php
                                $error = Session::get('error');
                            @endphp
                            <div id="error-alert" class="alert alert-danger">
                                @if(is_array($error))
                                    @foreach($error as $err)
                                        <p>{{ $err }}</p>
                                    @endforeach
                                @else
                                    <p>{{ $error }}</p>
                                @endif
                            </div>
                        @endif
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Jquery JS-->
<script src="vendor/jquery/jquery.min.js"></script>
<!-- Vendor JS-->
<script src='{{ asset('assets/auth/vendor/datepicker/daterangepicker.css') }}'></script>
<script src='{{ asset('assets/auth/vendor/datepicker/moment.min.js') }}'></script>
<script src='{{ asset('assets/auth/vendor/datepicker/daterangepicker.js') }}'></script>

<!-- Main JS-->
<script>
    // Wait until the DOM is fully loaded
    document.addEventListener('DOMContentLoaded', function() {
        // Select the alert div by ID
        var alertDiv = document.getElementById('error-alert');
        // Check if the alert div exists
        if (alertDiv) {
            // Set a timeout to hide the alert after 5 seconds (5000 milliseconds)
            setTimeout(function() {
                alertDiv.style.display = 'none';
            }, 5000);
        }
    });
</script>
<script src='{{ asset('assets/js/main.js') }}'></script>
@endsection
