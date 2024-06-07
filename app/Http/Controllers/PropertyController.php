<?php

namespace App\Http\Controllers;
use App\Models\Property;
use Illuminate\Http\Request;

class PropertyController extends Controller
{
    public function index()
    {
        $properties = Property::all();
        return view('properties.index', compact('properties'));
    }

    //property function
    public function property(){
        return view('property');
    }

    //propeerty single function
    public function property_single(){
        return view('property-single');
    }


        public function property_grid()
        {
            // Fetch all properties from the database
            $properties = Property::all();

            // Pass the properties data to the view
            return view('property-grid', compact('properties'));
        }

        public function singleProperty(Request $request, $id)
        {
            $property = Property::with('description')->find($id);

            if (!$property) {
                return redirect()->back();
            }

            return view('property-single', compact('property'));
        }
}

