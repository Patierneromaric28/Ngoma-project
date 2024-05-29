<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{
  User

};
class AuthController extends Controller
{
  public function login(){

    return view('auth.login');
  }

  public function register(){
    return view('auth.register');
  }

  public function store(Request $request){

    // \log::info(['data'=>$request->all()]);

    $firstName        = $request->first_name;
    $lastName         = $request->last_name;
    $email            = $request->email;
    $areaCode         = $request->area_code;
    $phone            = $request->phone;
    $password         = $request->password;
    $confirmPassword  = $request->confirm_password;
    $type             = $request->type;

    // if($password != $confirmPassword){
    //   return
    // }

  //   $checkUser = User::where(['email'=> $email])->first();
  //  if(!$checkUser){
  //   return response()->one_message
  //  }
    // $checkUserPhone = User::where(['phone'=> $phone])->first();
$storeUser = User::create([
  'first_name'      => $firstName,
  'last_name'       => $lastName,
  'email'           => $email,
  'carier_code'     => $areaCode,
  'phone'           => $phone,
  'password'        => $password,
  'account_type'    => $type


]);

return view('auth.login');
    
  }
}
