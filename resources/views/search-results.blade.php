@extends('partial.navbar')

@section('content')
<section class="property-grid grid" style="margin-top: 150px;">
    <div class="container">
        <div class="row">
            @if(isset($properties) && count($properties) > 0)
                @foreach($properties as $property)
                <div class="col-md-4">
                    <div class="card-box-a card-shadow">
                        <div class="img-box-a">
                            <img src="{{ asset('assets/img/' . $property->image) }}" alt="{{ $property->city }}" class="img-a img-fluid">
                        </div>
                        <div class="card-overlay">
                            <div class="card-overlay-a-content">
                                <div class="card-header-a">
                                    <h2 class="card-title-a">
                                        <a href="#">{{ $property->city }}</a>
                                    </h2>
                                </div>
                                <div class="card-body-a">
                                    <div class="price-box d-flex">
                                        <span class="price-a">{{ $property->status }} | XAF {{ $property->price }}</span>
                                    </div>
                                    <a href="#" class="link-a">Click here to view
                                        <span class="bi bi-chevron-right"></span>
                                    </a>
                                </div>
                                <div class="card-footer-a">
                                    <ul class="card-info d-flex justify-content-around">
                                        <li>
                                            <h4 class="card-info-title">Area</h4>
                                            <span>{{ $property->area }}m<sup>2</sup></span>
                                        </li>
                                        <li>
                                            <h4 class="card-info-title">Beds</h4>
                                            <span>{{ $property->beds }}</span>
                                        </li>
                                        <li>
                                            <h4 class="card-info-title">Baths</h4>
                                            <span>{{ $property->baths }}</span>
                                        </li>
                                        <li>
                                            <h4 class="card-info-title">Garages</h4>
                                            <span>{{ $property->garages }}</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            @else
                <div class="col-md-12 text-center">
                    <p>No property found at the moment.</p>
                </div>
            @endif
        </div>
    </div>
</section><!-- End Property Grid -->

@endsection

