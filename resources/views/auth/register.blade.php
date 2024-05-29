@extends('partial.navbar')
@section('content')
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50" style="margin-top: 100px">
    <div class="wrapper wrapper--w790">
        <div class="card card-5">
            <div class="card-heading">
                <h2 class="title">Ngoma Registration Form</h2>
            </div>
            <div class="card-body">
                <form method="POST" action="{{url('storeuser')}}" >
                    <div class="form-row m-b-55">
                        <div class="name">Name</div>
                        <div class="value">
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="first_name">
                                        <label class="label--desc">first name</label>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="last_name">
                                        <label class="label--desc">last name</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="name">Email</div>
                        <div class="value">
                            <div class="input-group">
                                <input class="input--style-5" type="email" name="email">
                            </div>
                        </div>
                    </div>
                    <div class="form-row m-b-55">
                        <div class="name">Phone</div>
                        <div class="value">
                            <div class="row row-refine">
                                <div class="col-3">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="area_code">
                                        <label class="label--desc">Area Code</label>
                                    </div>
                                </div>
                                <div class="col-9">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="phone">
                                        <label class="label--desc">Phone Number</label>
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
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="name">Confirm pasword</div>
                        <div class="value">
                            <div class="input-group">
                                <input class="input--style-5" type="password" name="confirm_password">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="name">Type</div>
                        <div class="value">
                            <div class="input-group">
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="type">
                                        <option disabled="disabled" selected="selected">Choose User type</option>
                                        <option>User</option>
                                        <option>Agent</option>
                                        
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Jquery JS-->
<script src="vendor/jquery/jquery.min.js"></script>
<!-- Vendor JS-->
<script src="vendor/select2/select2.min.js"></script>
<script src="vendor/datepicker/moment.min.js"></script>
<script src="vendor/datepicker/daterangepicker.js"></script>

<!-- Main JS-->
<script src="js/global.js"></script>
@endsection