<?php

namespace App\Http\Controllers;
use Session;
use Illuminate\Http\Request;
use App\Models\{
  User

};
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
  public function login(){

    return view('auth.login');
  }

  public function register(){
    return view('auth.register');
  }
  public function checkLogin(Request $request)
  {
      $validator = Validator::make($request->all(), [
          'email' => 'required|email',
          'password' => 'required|string|min:8',
      ]);

      if ($validator->fails()) {
          return redirect()->back()->withErrors($validator)->withInput();
      }

      $credentials = $request->only('email', 'password');

      if (Auth::attempt($credentials)) {
          return redirect()->intended('/');
      }

      return redirect()->back()->with('error', 'Invalid credentials. Please try again.');
  }

  public function logout(Request $request){

    Auth::logout();

return redirect()->intended('/');
  }

  public function store(Request $request){

    $validator = Validator::make($request->all(), [
        'first_name' => 'required|string|max:255',
        'last_name' => 'required|string|max:255',
        'email' => 'required|email|unique:users,email',
        'area_code' => 'required|string|max:5',
        'phone' => 'required|string|max:15|unique:users,phone',
        'password' => 'required|string|min:8|confirmed',
        'type' => 'required|string',
    ]);

    if ($validator->fails()) {
        return redirect()->back()->withErrors($validator)->withInput();
    }
    $firstName        = $request->first_name;
    $lastName         = $request->last_name;
    $email            = $request->email;
    $areaCode         = $request->area_code;
    $phone            = $request->phone;
    $password         = $request->password;
    $confirmPassword  = $request->confirm_password;
    $type             = $request->type;


$storeUser = User::create([
  'first_name'      => $firstName,
  'last_name'       => $lastName,
  'email'           => $email,
  'carier_code'     => $areaCode,
  'phone'           => $phone,
  'password'        => $password,
  'account_type'    => $type,
  'location'       => 'Cameroon'


]);

return redirect()->route('login')->with('success', 'Registration successful!');

  }


}
