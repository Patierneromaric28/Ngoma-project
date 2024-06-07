<?php

namespace App\Http\Controllers;
use Session;
use App\Models\{
  admin

};
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    // dashboard controller
function dashboard(){
        return view('Dashboard.index');
    }
    public function index(){
        return view('Dashboard.login');
    }

    // dashboard layout


    public function adminLogin(Request $request){
    $validator = Validator::make($request->all(), [
          'email' => 'required|email',
          'password' => 'required|string|min:8',
      ]);

      if ($validator->fails()) {
          return redirect()->back()->withErrors($validator)->withInput();
      }

      $credentials = $request->only('email', 'password');

      if (Auth::attempt($credentials)) {
          return redirect()->intended('/Dashboard');
      }

      return redirect()->back()->with('error', 'Invalid credentials. Please try again.');
    }
}
