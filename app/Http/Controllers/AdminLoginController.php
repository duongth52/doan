<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class AdminLoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    public function showLogin(){
        return view('login');
    }

    public function login(Request $request){
        $email = $request->email;
        $password = $request->password;
        if (Auth::attempt(['email' => $email, 'password' => $password,])) {
            // The user is active, not suspended, and exists.
            return redirect(route('danhsachBooking'));
        }
        else{
            return redirect(route('showLogin'));
        }
    }

    public function logout(){
        Auth::logout();
       return redirect(route('showLogin'));
    }

}
