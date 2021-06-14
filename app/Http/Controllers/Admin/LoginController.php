<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests\LoginValidation;
use App\Http\Controllers\Controller;
use App\Models\User;
use Validator;
use Auth;
use Hash;

class LoginController extends Controller
{
    //
    function IndexLogin(){
        return view('login.login-admin');
    }

    function LoginProcess(LoginValidation $request){
       
        $admin = User::all();

        $credentials = $request->only('email','password');

        $email = $request->email;
        $password = $request->password;
        
        if (Auth::attempt($credentials)) {
            return response()->json([
                'code' => 200,
            ]); 
            }else{
            return response()->json([
                'status' => 500,
                'message' => 'Email dan password tidak sesuai'
            ]); 
        }
    }
    function LogoutProcess(Request $request){
        
        Auth::logout();

        $request->session()->invalidate();
    
        $request->session()->regenerateToken();
    
        return redirect('/');
    }
}