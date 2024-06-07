@extends('partial.navbar')

@section('content')

<div class="page-wrapper bg-gra-03 p-t-45 p-b-50" style="margin-top: 100px">
    <div class="wrapper wrapper--w790">
        <div class="card card-5">
            <div class="card-heading">
                <h2 class="title">Ngoma Login </h2>
            </div>
            <div class="card-body">
                <form method="POST" action="{{ route('login.user') }}">
                    @csrf

                    <div class="form-row">
                        <div class="name">Email</div>
                        <div class="value">
                            <div class="input-group">
                                <input class="input--style-5" type="email" name="email" value="{{ old('email') }}" placeholder="Your Email" required>
                            </div>
                            @error('email')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="name">Password</div>
                        <div class="value">
                            <div class="input-group">
                                <input class="input--style-5" type="password" name="password" placeholder="Your password" required>
                            </div>
                            @error('password')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="text-center mt-3" style="margin-left: 50%">
                        <a href="register" class="text-primary">Don't have an account? Register</a>
                    </div>
                    <div>
                        <button class="btns btn--radius-2 btn--red" type="submit">Login</button>
                    </div>
                </form>
                @if(Session::has('error'))
                <div class="alert alert-danger mt-3">
                    {{ Session::get('error') }}
                </div>
                @endif
            </div>
        </div>
    </div>
</div>

<!-- Jquery JS-->
<script src="assets/authvendor/jquery/jquery.min.js"></script>
<!-- Vendor JS-->
<script src="assets/auth/vendor/select2/select2.min.js"></script>
<script src="assets/auth/vendor/datepicker/moment.min.js"></script>
<script src="assets/auth/vendor/datepicker/daterangepicker.js"></script>

<!-- Main JS-->
<script src="js/global.js"></script>
<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
@endsection
