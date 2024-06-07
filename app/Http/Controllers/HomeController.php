<?php

namespace App\Http\Controllers;
use App\Models\Property;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $properties = Property::all();
        return view('index', compact('properties'));
    }

    
    // contact function
    public function contact(){
        $page = "contact";
        return view('contact', compact('page'));
    }

    // Agent single function
    public function agent_single(){
        return view('agent-single');

    }


}
