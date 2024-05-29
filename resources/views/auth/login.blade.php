@extends('partial.navbar')

@section('content')
{{-- <style>
    body {
        background-color: #f7f9fc;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .login-container {
        max-width: 400px;
        width: 100%;
        padding: 20px;
        background-color: #ffffff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }
    .login-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #007bff;
    }
    .login-container .btn-primary {
        background-color: #007bff;
        border: none;
    }
    .login-container .btn-primary:hover {
        background-color: #0056b3;
    }
    .login-container .form-control:focus {
        border-color: #007bff;
        box-shadow: none;
    }
    .login-container .text-primary:hover {
        color: #0056b3;
        text-decoration: underline;
    }
</style>

<div class="login-container">
    <h2>Login to NgomaRealty</h2>
    <form>
        <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Password" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Login</button>
        <div class="text-center mt-3">
            <a href="register" class="text-primary">Don't have an account? Register</a>
        </div>
    </form>
</div> --}}

    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50" style="margin-top: 100px">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Ngoma Login Form</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                        
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="email" placeholder="Your Email" required>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" name="password" placeholder="Your password" required>
                                </div>
                            </div>
                            <div class="text-center mt-3" style="margin-left: 50%">
                                <a href="register" class="text-primary">Don't have an account? Register</a>
                            </div>
                        </div>
                        <div>
                            <button class="btns btn--radius-2 btn--red" type="submit">Login</button>
                        </div>
                    </form>
                    
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
