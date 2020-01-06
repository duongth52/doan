<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class AdminLoginController extends Controller
{
    public function __construct() {
        $this->middleware('guest')->except('logout');
    }
    public function showLogin(){
        return view('login');
    }

    public function login(Request $request) {
        $validatedData = $request->validate([
                'email' => 'required|email',
                'password' => 'required',
            ],
            [
                'email.required' => 'Ban chua nhap email',
                'email.email'=> 'Chua dung dinh dang email',
                'password.required' => 'Ban chua nhap mat khau',
            ]
        );
        $email = $request->email;
        $password = $request->password;
        if (Auth::attempt(['email' => $email, 'password' => $password,])) {
            // The user is active, not suspended, and exists.
            return redirect(route('listBookingToDay'));
        }
        else{
            return redirect(route('showLogin'));
        }
    }

    public function logout() {
        Auth::logout();
       return redirect(route('showLogin'));
    }

}
