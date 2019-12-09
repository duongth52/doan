<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ClientHomeController extends Controller
{
    //
    public function home() {

        // $user = User::where('id_khoa', '1')->get();
        // dd($user);
        return view('trangchu');
    }
}
