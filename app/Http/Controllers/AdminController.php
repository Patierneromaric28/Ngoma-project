<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    // dashboard controller
    public function index(){
        return view('Dashboard.index');
    }
}
