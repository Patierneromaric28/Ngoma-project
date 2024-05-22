<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $page = "Home";
        return view('index', compact('page'));
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
