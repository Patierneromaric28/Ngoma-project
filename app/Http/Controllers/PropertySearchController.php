<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Property;

class PropertySearchController extends Controller
{
    public function search(Request $request)
    {
        \Log::info(["message" => $request->all()]);
        $keyword = $request->input('keyword');
        $city = $request->input('city');
        $bedrooms = $request->input('bedrooms');
        $garages = $request->input('garages');
        $bathrooms = $request->input('bathrooms');


        $price = $request->input('price');
        if (!is_numeric($price)) {
            $price = str_replace(['$', ','], '', $price);
        }

        $query = Property::query()->where('city', $city);

        if ($keyword) {
            $query->where('locatioon', 'like', "%$keyword%");
        }
        if ($bedrooms) {
            $query->where('beds', $bedrooms);
        }
        if ($garages) {
            $query->where('garages', $garages);
        }
        if ($bathrooms) {
            $query->where('baths', $bathrooms);
        }
        if ($price) {
            $query->where('price', '<=', $price);
        }

        $properties = $query->get();

        return view('search-results', compact('properties'));
    }
}
