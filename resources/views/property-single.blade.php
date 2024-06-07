@extends('partial.navbar')

@section('content')
  <main id="main">

    <!-- ======= Intro Single ======= -->
    <section class="intro-single">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-lg-8">
              <div class="title-single-box">
                <h1 class="title-single">Checkout this property</h1>
                <span class="color-text-a">Grid Properties</span>
              </div>
            </div>
            <div class="col-md-12 col-lg-4">
              <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item">
                    <a style="color:black;" href="/">Home</a>
                  </li>
                  <li class="breadcrumb-item active" aria-current="page">
                    Property Details
                  </li>
                </ol>
              </nav>
            </div>
          </div>
        </div>
      </section>

    <section class="property-single nav-arrow-b">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div id="property-single-carousel" class="swiper">
                        <div class="swiper-wrapper">
                            {{-- @foreach($property->image as $image)
                                <div class="carousel-item-b swiper-slide">
                                    <img src="{{ asset('storage/' . $image->path) }}" alt="">
                                </div>
                            @endforeach --}}
                            <div class="carousel-item-b swiper-slide">
                                <img src="{{ asset('assets/img/' . $property->image) }}" alt="{{ $property->city }}" class="img-a img-fluid">
                            </div>
                        </div>
                    </div>
                    <div class="property-single-carousel-pagination carousel-pagination"></div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="row justify-content-between">
                        <div class="col-md-5 col-lg-4">
                            <div class="property-price d-flex justify-content-center foo">
                                <div class="card-header-c d-flex">
                                    <div class="card-box-ico">
                                        <span class="bi bi-cash">$</span>
                                    </div>
                                    <div class="card-title-c align-self-center">
                                        <h5 class="title-c">{{ $property->price }}</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="property-summary">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="title-box-d section-t4">
                                            <h3 class="title-d">Quick Summary</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="summary-list">
                                    <ul class="list">
                                        <li class="d-flex justify-content-between">
                                            <strong>Property ID:</strong>
                                            <span>{{ $property->id }}</span>
                                        </li>
                                        <li class="d-flex justify-content-between">
                                            <strong>Location:</strong>
                                            <span>{{ $property->location }}</span>
                                        </li>
                                        {{-- <li class="d-flex justify-content-between">
                                            <strong>Property Type:</strong>
                                            <span>{{ $property->type }}</span>
                                        </li> --}}
                                        <li class="d-flex justify-content-between">
                                            <strong>Status:</strong>
                                            <span>{{ $property->status }}</span>
                                        </li>
                                        <li class="d-flex justify-content-between">
                                            <strong>Area:</strong>
                                            <span>{{ $property->area }} m<sup>2</sup></span>
                                        </li>
                                        <li class="d-flex justify-content-between">
                                            <strong>Beds:</strong>
                                            <span>{{ $property->beds }}</span>
                                        </li>
                                        <li class="d-flex justify-content-between">
                                            <strong>Baths:</strong>
                                            <span>{{ $property->baths }}</span>
                                        </li>
                                        <li class="d-flex justify-content-between">
                                            <strong>Garage:</strong>
                                            <span>{{ $property->garages }}</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 col-lg-7 section-md-t3">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Property Description</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="property-description">
                                <p style="color:gray;" class="description color-text-a">
                                    {{ $property->description->description}}
                                </p>
                            </div>
                            <div class="row section-t3">
                                <div class="col-sm-12">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Amenities</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="amenities-list color-text-a">
                                <ul class="list-a no-margin">
                                    {{-- @foreach($property->amenities as $amenity)
                                        <li>{{ $amenity }}</li>
                                    @endforeach --}}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-10 offset-md-1">
                    <ul class="nav nav-pills-a nav-pills mb-3 section-t3" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-video-tab" data-bs-toggle="pill" href="#pills-video" role="tab" aria-controls="pills-video" aria-selected="true">Video</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-plans-tab" data-bs-toggle="pill" href="#pills-plans" role="tab" aria-controls="pills-plans" aria-selected="false">Floor Plans</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-map-tab" data-bs-toggle="pill" href="#pills-map" role="tab" aria-controls="pills-map" aria-selected="false">Ubication</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-video" role="tabpanel" aria-labelledby="pills-video-tab">
                            <iframe src="{{ $property->video_url }}" width="100%" height="460" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                        </div>
                        <div class="tab-pane fade" id="pills-plans" role="tabpanel" aria-labelledby="pills-plans-tab">
                            <img src="{{ asset('assets/img/'.$property->floor_plan_image) }}" alt="" class="img-fluid">
                        </div>
                        <div class="tab-pane fade" id="pills-map" role="tabpanel" aria-labelledby="pills-map-tab">
                            <iframe src="{{ $property->map_url }}" width="100%" height="460" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row section-t3">
                        <div class="col-sm-12">
                            <div class="title-box-d">
                                <h3 class="title-d">Contact Agent</h3>
                            </div>
                        </div>
                    </div>
                   <!-- Assuming this is in resources/views/property-single.blade.php -->

<section class="property-single nav-arrow-b">
    <div class="container">
        <!-- Property Carousel and other details -->

        <div class="row">
            <div class="col-md-10 offset-md-1">
                <!-- Agent Information -->
                <div class="row section-t3">
                    <div class="col-sm-12">
                        <div class="title-box-d">
                            <h3 class="title-d">Contact Agent</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <img src="{{ asset('assets/img/'. $property->description->agent_image) }}" alt="" class="img-fluid">
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="property-agent">
                            <h4 class="title-agent ">{{ $property->description->agent_name }}</h4>
                            <p style="color:gray;" class="color-text-a">
                                {{ $property->description->agent_description }}
                            </p>
                            <ul class="list-unstyled">
                                <li class="d-flex justify-content-between">
                                    <strong>Phone:</strong>
                                    <span  style="color:gray;" class="color-text-a breadcrumb-item">{{ $property->description->agent_phone }}</span>
                                </li>
                                <li class="d-flex justify-content-between">
                                    <strong>Mobile:</strong>
                                    <span style="color:gray;" class="color-text-a">{{ $property->description->agent_mobile }}</span>
                                </li>
                                <li class="d-flex justify-content-between">
                                    <strong>Email:</strong>
                                    <span style="color:gray;" class="color-text-a">{{ $property->description->agent_email }}</span>
                                </li>
                                <li class="d-flex justify-content-between">
                                    <strong>Skype:</strong>
                                    <span style="color:gray;" class="color-text-a">{{ $property->description->agent_skype }}</span>
                                </li>
                            </ul>
                            <div class="socials-a">
                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <a style="color:gray;" href="{{ $property->description->agent_facebook }}">
                                            <i class="bi bi-facebook" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a style="color:gray;" href="{{ $property->description->agent_twitter }}">
                                            <i class="bi bi-twitter" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a style="color:gray;" href="{{ $property->description->agent_instagram }}">
                                            <i class="bi bi-instagram" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="{{ $property->description->agent_linkedin }}">
                                            <i class="bi bi-linkedin" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Property Location -->
                <div class="row section-t3">
                    <div class="col-sm-12">
                        <div class="title-box-d">
                            <h3 class="title-d">Property Location</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="property-map" style="height: 400px;">
                            <!-- You can use a map service like Google Maps to display the location -->
                            <iframe src="https://www.google.com/maps?q={{ $property->description->latitude }},{{ $property->description->longitude }}&hl=es;z=14&output=embed" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

                        <div class="col-md-12 col-lg-4">
                            <div class="property-contact">
                                <form class="form-a">
                                    <div class="row">
                                        <div class="col-md-12 mb-1">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-lg form-control-a" id="inputName" placeholder="Name *" required>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mb-1">
                                            <div class="form-group">
                                                <input type="email" class="form-control form-control-lg form-control-a" id="inputEmail1" placeholder="Email *" required>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mb-1">
                                            <div class="form-group">
                                                <textarea id="textMessage" class="form-control" placeholder="Comment *" name="message" cols="45" rows="8" required></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <button type="submit" class="btn btn-a">Send Message</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Property Single-->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <section class="section-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-4">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">EstateAgency</h3>
            </div>
            <div class="w-body-a">
              <p class="w-text-a color-text-a">
                Enim minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat duis
                sed aute irure.
              </p>
            </div>
            <div class="w-footer-a">
              <ul class="list-unstyled">
                <li class="color-a">
                  <span class="color-text-a">Phone .</span> contact@example.com
                </li>
                <li class="color-a">
                  <span class="color-text-a">Email .</span> +54 356 945234
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md-4 section-md-t3">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">The Company</h3>
            </div>
            <div class="w-body-a">
              <div class="w-body-a">
                <ul class="list-unstyled">
                  <li class="item-list-a">
                    <i class="bi bi-chevron-right"></i> <a href="#">Site Map</a>
                  </li>
                  <li class="item-list-a">
                    <i class="bi bi-chevron-right"></i> <a href="#">Legal</a>
                  </li>
                  <li class="item-list-a">
                    <i class="bi bi-chevron-right"></i> <a href="#">Agent Admin</a>
                  </li>
                  <li class="item-list-a">
                    <i class="bi bi-chevron-right"></i> <a href="#">Careers</a>
                  </li>
                  <li class="item-list-a">
                    <i class="bi bi-chevron-right"></i> <a href="#">Affiliate</a>
                  </li>
                  <li class="item-list-a">
                    <i class="bi bi-chevron-right"></i> <a href="#">Privacy Policy</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md-4 section-md-t3">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">International sites</h3>
            </div>
            <div class="w-body-a">
              <ul class="list-unstyled">
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Venezuela</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">China</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Hong Kong</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Argentina</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Singapore</a>
                </li>
                <li class="item-list-a">
                  <i class="bi bi-chevron-right"></i> <a href="#">Philippines</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
 @endsection
