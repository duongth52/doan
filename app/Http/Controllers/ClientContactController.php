<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Articles;

class ClientContactController extends Controller {
    public function index() {
        $contact = Articles::select('*')->Where('categoryIds', 8)->take(1)->get();
        // dd($contact);
        return view('contact', compact('contact'));
    }
}
