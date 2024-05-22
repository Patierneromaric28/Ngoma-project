<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PropertyController extends Controller
{
    //property function
    public function property(){
        return view('property');
    }

    //propeerty single function
    public function property_single(){
        return view('property-single');
    }

    //property grid function
    public function property_grid(){
        return view('property-grid');
    }
}

