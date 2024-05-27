<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Property;

class PropertySearchController extends Controller
{
    public function search(Request $request)
    {
        \Log::info(["message" => $request->all()]);
        // Retrieve inputs from the request
        $keyword = $request->input('keyword');
        $city = $request->input('city');
        $bedrooms = $request->input('bedrooms');
        $garages = $request->input('garages');
        $bathrooms = $request->input('bathrooms');

        // Validate and sanitize the price input
        $price = $request->input('price');
        if (!is_numeric($price)) {
            // Handle non-numeric input (e.g., remove currency symbols or commas)
            $price = str_replace(['$', ','], '', $price);
        }

        // Start building the query
        $query = Property::query()->where('city', $city);

        // Add conditions based on other inputs if they are provided
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

        // Get the properties matching the criteria
        $properties = $query->get();

        // Pass the search results to the view
        return view('search-results', compact('properties'));
    }
}
