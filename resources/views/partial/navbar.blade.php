<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>NgomaRealty </title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <!-- Favicons -->
    <link href="{{url('assets/img/favicon2.png')}}" rel="icon">
    <link href="{{url('assets/img/touch_img.png')}}" rel="apple-touch-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link href="{{url('assets/vendor/animate.css/animate.min.css')}}" rel="stylesheet">
    <link href="{{url('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{url('assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
    <link href="{{url('assets/vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet">
    <!-- Template Main CSS File -->
    <link href="{{url('assets/css/style.css')}}" rel="stylesheet">
    <link href="{{asset('assets/css/loader.css')}}" rel="stylesheet">
    {{-- header for login & registration form --}}
    <!-- Icons font CSS-->
    <link href="{{url('vendor/mdi-font/css/material-design-iconic-font.min.css')}}" rel="stylesheet" media="all">
    <link href="{{url('vendor/font-awesome-4.7/css/font-awesome.min.css')}}" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="{{url('assets/auth/vendor/select2/select2.min.css')}}" rel="stylesheet" media="all">
    <link href="{{url('assets/auth/vendor/datepicker/daterangepicker.css')}}" rel="stylesheet" media="all">

    <link href="{{url('assets/auth/css/main.css')}}" rel="stylesheet" media="all">
</head>
<!-- ======= Header/Navbar ======= -->
{{-- @yield('navbar', ['active' => '']) --}}
<nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>
        <a href="/"><img style="width: 200px; height:180px; margin-bottom:30px;" src="http://127.0.0.1:8000/assets/img/Ngoma.png" alt="ngomarealty logo"></a>
        <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('/') ? 'active' : '' }}" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('about') ? 'active' : '' }}" href="about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('property-grid') ? 'active' : '' }}" href="property-grid">Property</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('blog-grid') ? 'active' : '' }}" href="blog-grid">Blog</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="property-single">Property Single</a>
                        <a class="dropdown-item" href="blog-single">Blog Single</a>
                        <a class="dropdown-item" href="agents-grid">Agents Grid</a>
                        <a class="dropdown-item" href="agent-single">Agent Single</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('contact') ? 'active' : '' }}" href="contact">Contact</a>
                </li>
            </ul>
        </div>
        <div class="d-flex align-items-center">
            @auth
                <a href="{{ route('admin.index') }}" class="btn btn-outline-primary me-2">
                    <i class="bi bi-speedometer2"></i> Dashboard
                </a>

                <a href="{{ route('user.logout') }}" class="btn btn-outline-primary me-2">
                    <i class="bi bi-lock"></i>Logout
                </a>
            @else
                <a href="{{ route('login') }}" class="btn btn-outline-primary me-2">
                    <i class="bi bi-box-arrow-in-right"></i> Login
                </a>
                <a href="{{ route('register') }}" class="btn btn-outline-success me-3">
                    <i class="bi bi-person-plus"></i> Register
                </a>
            @endauth

            <button type="button" class="btn btn-b-n navbar-toggle-box navbar-toggle-box-collapse" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01">
                <i class="bi bi-search"></i> Search
            </button>
        </div>

    </div>
    <!-- ======= Property Search Section ======= -->
    <div class="click-closed"></div>
    <!--/ Form Search Star /-->
    <div class="box-collapse">
        <div class="title-box-d">
            <h3 class="title-d">Search Property</h3>
        </div>
        <span class="close-box-collapse right-boxed bi bi-x"></span>
        <div class="box-collapse-wrap form">
            <form class="form-a" action="{{ route('search.property') }}" method="GET">
                @csrf
                <div class="row">
                    <div class="col-md-12 mb-2">
                        <div class="form-group">
                            <label class="pb-2" for="keyword">Keyword</label>
                            <input type="text" class="form-control form-control-lg form-control-a" id="keyword" name="keyword" placeholder="Keyword">
                        </div>
                    </div>
                    <div class="col-md-6 mb-2">
                        <div class="form-group mt-3">
                            <label class="pb-2" for="Type">Type</label>
                            <select class="form-control form-select form-control-a" id="type" name="type">
                                <option value="">All Type</option>
                                <option value="For Rent">For Rent</option>
                                <option value="For Sale">For Sale</option>
                                <option value="Open House">Open House</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 mb-2">
                        <div class="form-group mt-3">
                            <label class="pb-2" for="city">City</label>
                            <select class="form-control form-select form-control-a" id="city" name="city">
                                <option value="">All City</option>
                                <option value="Douala">Douala</option>
                                <option value="Yaounde">Yaounde</option>
                                <option value="Bamenda">Bamenda</option>
                                <option value="Buea">Buea</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 mb-2">
                        <div class="form-group mt-3">
                            <label class="pb-2" for="bedrooms">Bedrooms</label>
                            <select class="form-control form-select form-control-a" id="bedrooms" name="bedrooms">
                                <option value="">Any</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 mb-2">
                        <div class="form-group mt-3">
                            <label class="pb-2" for="garages">Garages</label>
                            <select class="form-control form-select form-control-a" id="garages" name="garages">
                                <option value="">Any</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 mb-2">
                        <div class="form-group mt-3">
                            <label class="pb-2" for="bathrooms">Bathrooms</label>
                            <select class="form-control form-select form-control-a" id="bathrooms" name="bathrooms">
                                <option value="">Any</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 mb-2">
                        <div class="form-group mt-3">
                            <label class="pb-2" for="price">Max Price (XAF)</label>
                            <select class="form-control form-select form-control-a" id="price" name="price">
                                <option value="">Unlimited</option>
                                <option value="50000">XAF 50,000</option>
                                <option value="100000">XAF 100,000</option>
                                <option value="150000">XAF 150,000</option>
                                <option value="200000">XAF 200,000</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-b">Search Property</button>
                        <!-- Voice Search Button with Icon -->
                        <button id="voiceSearchButton" class="btn btn-b" type="button">
                            <i class="bi bi-mic"></i> Voice Search
                        </button>
                    </div>


                </div>
            </form>
        </div>
    </div><!-- End -->

</nav><!-- End Header/Navbar -->
<body>
    {{-- @yield('loader') --}}
    @yield('content')
    {{-- @extends('partial.footer') --}}
   @yield('scripts')
</body>
<script>
    const recognition = new webkitSpeechRecognition();
    const voiceSearchButton = document.getElementById('voiceSearchButton');

    // Configure speech recognition settings
    recognition.continuous = false;
    recognition.lang = 'en-US';

    // Event listener for voice search button click
    voiceSearchButton.addEventListener('click', () => {
        // Start speech recognition
        recognition.start();
    });

    // Event listener for speech recognition result
    recognition.onresult = (event) => {
        const result = event.results[0][0].transcript;
        // Assign the result to the keyword input field
        document.getElementById('keyword').value = result;

        // Submit the form after speech recognition ends
        document.querySelector('.form-a').submit();
    };
</script>


</html>
